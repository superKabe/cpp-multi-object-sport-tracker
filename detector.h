#ifndef DETECTOR_H
#define DETECTOR_H

#include <opencv2/opencv.hpp>
#include <vector>

struct Detection {
    float x, y; // Detection center coordinates
    cv::Rect boundingBox; // Detection bounding box
    float confidence; // Detection confidence score
};

class Detector {
public:
    Detector();
    std::vector<Detection> detect(const cv::Mat& frame);

private:
    cv::dnn::Net net;
};

#endif
