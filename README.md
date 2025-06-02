# Surfer Tracker with Motion Prediction

## Project Overview
This project is a computer vision prototype designed to detect and track surfers in video footage from surf cameras and predict their projected direction of movement. The application overlays bounding boxes, IDs, arrows, and confidence scores on the video frames.

### Key Features
1. **Input**: Processes video footage using OpenCV's `cv::VideoCapture`.
2. **Surfer Detection**: Utilizes YOLOv5s for object detection via ONNX runtime.
3. **Tracking**: Implements multi-object tracking using a custom Kalman filter and Hungarian algorithm.
4. **Motion Prediction**: Estimates movement direction with integrated smoothing techniques.
5. **Visualization**: Displays bounding boxes, arrows, and confidence scores on video frames.

### File Descriptions
- **`main.cpp`**: Entry point for the application. Initializes modules and processes video frames.
- **`detector.cpp` and `detector.h`**: Implements surfer detection using YOLOv5s.
- **`tracker.cpp` and `tracker.h`**: Implements multi-object tracking with a custom Kalman filter and Hungarian algorithm.
- **`predictor.cpp` and `predictor.h`**: Handles motion prediction with smoothing techniques.
- **`visualizer.cpp` and `visualizer.h`**: Handles visualization tasks, including bounding boxes, arrows, and confidence scores.
- **`CMakeLists.txt`**: Build configuration file for the project, specifying dependencies like OpenCV and ONNX runtime.
- **`surfer.mp4`**: Sample video footage for testing the application.
- **`output/`**: Directory for storing generated outputs, such as processed videos or logs.

### Build Instructions
1. Ensure you have CMake and OpenCV installed.
2. Run the following commands:
   ```bash
   mkdir build
   cd build
   cmake ..
   make
   ```

### Usage
1. Place the video file (`surfer.mp4`) in the project directory.
2. Run the application:
   ```bash
   ./SurferTracker
   ```

### License
This project is licensed under the MIT License.
