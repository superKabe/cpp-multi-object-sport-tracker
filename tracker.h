#ifndef TRACKER_H
#define TRACKER_H

#include <opencv2/opencv.hpp>
#include <vector>

struct Track {
    int id;
    cv::Mat state; // Kalman filter state (e.g., position and velocity)
    cv::Rect boundingBox; // Current bounding box
    int age; // Number of frames the track has existed
    int missedFrames; // Number of frames without updates
    cv::KalmanFilter kalmanFilter; // Kalman filter instance for this track
};

class Tracker {
private:
    int maxMissedFrames; // Maximum allowed missed frames before a track is removed
    int nextTrackId; // ID for the next track
    std::vector<Track> activeTracks; // List of active tracks

public:
    Tracker();
    std::vector<Track> update(const std::vector<Detection>& detections);
    cv::Mat computeCostMatrix(const std::vector<Track>& tracks, const std::vector<Detection>& detections);
    std::vector<int> solveHungarian(const cv::Mat& costMatrix);
};

#endif
