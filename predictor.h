#ifndef PREDICTOR_H
#define PREDICTOR_H

#include <opencv2/opencv.hpp>
#include <vector>

struct Prediction {
    cv::Point direction;
    int id;
};

class Predictor {
public:
    Predictor();
    std::vector<Prediction> predict(const std::vector<Track>& tracks);

private:
    // Smoothing techniques implementation
};

#endif
