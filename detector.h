#ifndef DETECTOR_H
#define DETECTOR_H

#include <opencv2/opencv.hpp>
#include <vector>

struct Detection {
    cv::Rect box;
    float confidence;
};

class Detector {
public:
    Detector();
    std::vector<Detection> detect(const cv::Mat& frame);

private:
    cv::dnn::Net net;
};

#endif
