#ifndef VISUALIZER_H
#define VISUALIZER_H

#include <opencv2/opencv.hpp>
#include <vector>

class Visualizer {
public:
    Visualizer();
    void visualize(cv::Mat& frame, const std::vector<Track>& tracks, const std::vector<Prediction>& predictions);

private:
    // Visualization logic
};

#endif
