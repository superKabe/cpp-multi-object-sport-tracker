#include "visualizer.h"
#include <opencv2/opencv.hpp>
#include <iostream>

using namespace std;
using namespace cv;

Visualizer::Visualizer() {
    // Initialize visualization logic
}

void Visualizer::visualize(cv::Mat& frame, const vector<Track>& tracks, const vector<Prediction>& predictions) {
    for (const auto& track : tracks) {
        rectangle(frame, track.box, Scalar(0, 255, 0), 2);
        putText(frame, to_string(track.id), Point(track.box.x, track.box.y - 10), FONT_HERSHEY_SIMPLEX, 0.5, Scalar(0, 255, 0), 2);
    }

    for (const auto& prediction : predictions) {
        arrowedLine(frame, Point(prediction.direction.x, prediction.direction.y),
                    Point(prediction.direction.x + 10, prediction.direction.y + 10), Scalar(0, 0, 255), 2);
    }
}
