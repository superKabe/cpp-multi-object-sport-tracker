cmake_minimum_required(VERSION 3.10)
project(SurferTracker)

set(CMAKE_CXX_STANDARD 17)

find_package(OpenCV REQUIRED)

add_executable(SurferTracker main.cpp detector.cpp tracker.cpp predictor.cpp visualizer.cpp)

include_directories(${OpenCV_INCLUDE_DIRS})

target_link_libraries(SurferTracker ${OpenCV_LIBS})
