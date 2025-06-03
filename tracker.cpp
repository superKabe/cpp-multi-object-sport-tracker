#include "detector.h" // Include the header where `Detection` is defined
#include "tracker.h"
#include <opencv2/opencv.hpp>
#include <iostream>

using namespace std;
using namespace cv;

Tracker::Tracker() : maxMissedFrames(5), nextTrackId(0) {
    // Initialization logic
}

vector<Track> Tracker::update(const vector<Detection>& detections) {
    vector<Track> tracks;

    // Step 1: Predict the next state of existing tracks
    for (auto& track : activeTracks) {
        cv::Mat prediction = track.kalmanFilter.predict();
        track.state = prediction;
        track.boundingBox.x = prediction.at<float>(0);
        track.boundingBox.y = prediction.at<float>(1);
    }

    // Step 2: Compute cost matrix (distance between tracks and detections)
    cv::Mat costMatrix = computeCostMatrix(activeTracks, detections);

    // Step 3: Solve assignment problem using Hungarian algorithm
    vector<int> assignment = solveHungarian(costMatrix);

    // Step 4: Update tracks with assigned detections
    for (size_t i = 0; i < assignment.size(); ++i) {
        if (assignment[i] != -1) { // Detection assigned to a track
            const Detection& detection = detections[assignment[i]];
            Track& track = activeTracks[i];

            // Correct Kalman filter state with detection
            cv::Mat measurement = (cv::Mat_<float>(2, 1) << detection.x, detection.y);
            track.state = track.kalmanFilter.correct(measurement);
            track.boundingBox = detection.boundingBox;
            track.missedFrames = 0; // Reset missed frames
        } else {
            // Increment missed frames for unassigned tracks
            activeTracks[i].missedFrames++;
        }
    }

    // Step 5: Remove tracks that have exceeded the missed frame threshold
    activeTracks.erase(
        remove_if(activeTracks.begin(), activeTracks.end(), [](const Track& track) {
            return track.missedFrames > maxMissedFrames;
        }),
        activeTracks.end()
    );

    // Step 6: Create new tracks for unassigned detections
    for (size_t i = 0; i < detections.size(); ++i) {
        if (find(assignment.begin(), assignment.end(), i) == assignment.end()) {
            Track newTrack;
            newTrack.id = nextTrackId++;
            newTrack.state = (cv::Mat_<float>(4, 1) << detections[i].x, detections[i].y, 0, 0);
            newTrack.boundingBox = detections[i].boundingBox;
            newTrack.age = 0;
            newTrack.missedFrames = 0;

            // Initialize Kalman filter for the track
            newTrack.kalmanFilter = cv::KalmanFilter(4, 2);
            newTrack.kalmanFilter.transitionMatrix = (cv::Mat_<float>(4, 4) << 
                1, 0, 1, 0,
                0, 1, 0, 1,
                0, 0, 1, 0,
                0, 0, 0, 1);
            newTrack.kalmanFilter.measurementMatrix = cv::Mat::eye(2, 4, CV_32F);
            newTrack.kalmanFilter.processNoiseCov = cv::Mat::eye(4, 4, CV_32F) * 1e-2;
            newTrack.kalmanFilter.measurementNoiseCov = cv::Mat::eye(2, 2, CV_32F) * 1e-1;
            newTrack.kalmanFilter.errorCovPost = cv::Mat::eye(4, 4, CV_32F);

            activeTracks.push_back(newTrack);
        }
    }

    return activeTracks;
}

cv::Mat Tracker::computeCostMatrix(const vector<Track>& tracks, const vector<Detection>& detections) {
    if (tracks.empty() || detections.empty()) {
        return cv::Mat(); // Return an empty matrix if no tracks or detections
    }

    cv::Mat costMatrix(tracks.size(), detections.size(), CV_32F);
    for (size_t i = 0; i < tracks.size(); ++i) {
        for (size_t j = 0; j < detections.size(); ++j) {
            float distance = sqrt(pow(tracks[i].boundingBox.x - detections[j].x, 2) +
                                  pow(tracks[i].boundingBox.y - detections[j].y, 2));
            costMatrix.at<float>(i, j) = distance;
        }
    }
    return costMatrix;
}

vector<int> Tracker::solveHungarian(const cv::Mat& costMatrix) {
    // Hungarian algorithm implementation
    int numRows = costMatrix.rows;
    int numCols = costMatrix.cols;

    // Step 1: Subtract row minima
    cv::Mat rowMin;
    cv::reduce(costMatrix, rowMin, 1, cv::REDUCE_MIN);
    cv::Mat costMatrixRowReduced = costMatrix - rowMin;

    // Step 2: Subtract column minima
    cv::Mat colMin;
    cv::reduce(costMatrixRowReduced, colMin, 0, cv::REDUCE_MIN);
    cv::Mat costMatrixReduced = costMatrixRowReduced - colMin;

    // Step 3: Find zero elements and assign rows to columns
    vector<int> assignment(numRows, -1);
    vector<bool> assignedCols(numCols, false);

    for (int i = 0; i < numRows; ++i) {
        for (int j = 0; j < numCols; ++j) {
            if (costMatrixReduced.at<float>(i, j) == 0 && !assignedCols[j]) {
                assignment[i] = j;
                assignedCols[j] = true;
                break;
            }
        }
    }

    return assignment;
}