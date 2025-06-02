#include "detector.h"
#include <opencv2/dnn.hpp>
#include <opencv2/opencv.hpp>
#include <iostream>

using namespace std;
using namespace cv;
using namespace dnn;

Detector::Detector() {
    // Load YOLOv5s model
    net = readNet("yolov5s.onnx");
}

vector<Detection> Detector::detect(const Mat& frame) {
    vector<Detection> detections;

    // Preprocess frame
    Mat blob = blobFromImage(frame, 1 / 255.0, Size(640, 640), Scalar(), true, false);
    net.setInput(blob);

    // Run inference
    Mat output = net.forward();

    // Parse detections
    for (int i = 0; i < output.rows; ++i) {
        float confidence = output.at<float>(i, 4);
        if (confidence > 0.5) {
            int classId = static_cast<int>(output.at<float>(i, 5));
            if (classId == 0) { // Person class
                Detection detection;
                detection.confidence = confidence;
                detection.box = Rect(output.at<float>(i, 0), output.at<float>(i, 1),
                                     output.at<float>(i, 2), output.at<float>(i, 3));
                detections.push_back(detection);
            }
        }
    }

    return detections;
}
