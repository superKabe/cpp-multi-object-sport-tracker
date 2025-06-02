#ifndef TRACKER_H
#define TRACKER_H

#include <opencv2/opencv.hpp>
#include <vector>

struct Track {
    cv::Rect box;
    int id;
};

class Tracker {
public:
    Tracker();
    std::vector<Track> update(const std::vector<Detection>& detections);

private:
    // Kalman filter and Hungarian algorithm implementation
};

#endif
