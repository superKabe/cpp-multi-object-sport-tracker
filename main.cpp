#include "detector.h"
#include "tracker.h"
#include "predictor.h"
#include "visualizer.h"
#include <opencv2/opencv.hpp>
#include <iostream>

using namespace std;
using namespace cv;

int main(int argc, char** argv) {
    // Initialize video capture
    VideoCapture cap("surfer.mp4");
    if (!cap.isOpened()) {
        cerr << "Error: Unable to open video file." << endl;
        return -1;
    }

    // Initialize modules
    Detector detector;
    Tracker tracker;
    Predictor predictor;
    Visualizer visualizer;

    Mat frame;
    while (cap.read(frame)) {
        // Detection
        vector<Detection> detections = detector.detect(frame);

        // Tracking
        vector<Track> tracks = tracker.update(detections);

        // Prediction
        vector<Prediction> predictions = predictor.predict(tracks);

        // Visualization
        visualizer.visualize(frame, tracks, predictions);

        // Display
        imshow("Surfer Tracker", frame);
        if (waitKey(30) >= 0) break;
    }

    cap.release();
    destroyAllWindows();
    return 0;
}
