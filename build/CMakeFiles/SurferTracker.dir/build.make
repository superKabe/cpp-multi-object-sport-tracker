# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.30

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\Projects\cpp-multi-object-sport-tracker

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\Projects\cpp-multi-object-sport-tracker\build

# Include any dependencies generated for this target.
include CMakeFiles/SurferTracker.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/SurferTracker.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/SurferTracker.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SurferTracker.dir/flags.make

CMakeFiles/SurferTracker.dir/main.cpp.obj: CMakeFiles/SurferTracker.dir/flags.make
CMakeFiles/SurferTracker.dir/main.cpp.obj: CMakeFiles/SurferTracker.dir/includes_CXX.rsp
CMakeFiles/SurferTracker.dir/main.cpp.obj: D:/Projects/cpp-multi-object-sport-tracker/main.cpp
CMakeFiles/SurferTracker.dir/main.cpp.obj: CMakeFiles/SurferTracker.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Projects\cpp-multi-object-sport-tracker\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SurferTracker.dir/main.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SurferTracker.dir/main.cpp.obj -MF CMakeFiles\SurferTracker.dir\main.cpp.obj.d -o CMakeFiles\SurferTracker.dir\main.cpp.obj -c D:\Projects\cpp-multi-object-sport-tracker\main.cpp

CMakeFiles/SurferTracker.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SurferTracker.dir/main.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Projects\cpp-multi-object-sport-tracker\main.cpp > CMakeFiles\SurferTracker.dir\main.cpp.i

CMakeFiles/SurferTracker.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SurferTracker.dir/main.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Projects\cpp-multi-object-sport-tracker\main.cpp -o CMakeFiles\SurferTracker.dir\main.cpp.s

CMakeFiles/SurferTracker.dir/detector.cpp.obj: CMakeFiles/SurferTracker.dir/flags.make
CMakeFiles/SurferTracker.dir/detector.cpp.obj: CMakeFiles/SurferTracker.dir/includes_CXX.rsp
CMakeFiles/SurferTracker.dir/detector.cpp.obj: D:/Projects/cpp-multi-object-sport-tracker/detector.cpp
CMakeFiles/SurferTracker.dir/detector.cpp.obj: CMakeFiles/SurferTracker.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Projects\cpp-multi-object-sport-tracker\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SurferTracker.dir/detector.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SurferTracker.dir/detector.cpp.obj -MF CMakeFiles\SurferTracker.dir\detector.cpp.obj.d -o CMakeFiles\SurferTracker.dir\detector.cpp.obj -c D:\Projects\cpp-multi-object-sport-tracker\detector.cpp

CMakeFiles/SurferTracker.dir/detector.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SurferTracker.dir/detector.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Projects\cpp-multi-object-sport-tracker\detector.cpp > CMakeFiles\SurferTracker.dir\detector.cpp.i

CMakeFiles/SurferTracker.dir/detector.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SurferTracker.dir/detector.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Projects\cpp-multi-object-sport-tracker\detector.cpp -o CMakeFiles\SurferTracker.dir\detector.cpp.s

CMakeFiles/SurferTracker.dir/tracker.cpp.obj: CMakeFiles/SurferTracker.dir/flags.make
CMakeFiles/SurferTracker.dir/tracker.cpp.obj: CMakeFiles/SurferTracker.dir/includes_CXX.rsp
CMakeFiles/SurferTracker.dir/tracker.cpp.obj: D:/Projects/cpp-multi-object-sport-tracker/tracker.cpp
CMakeFiles/SurferTracker.dir/tracker.cpp.obj: CMakeFiles/SurferTracker.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Projects\cpp-multi-object-sport-tracker\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SurferTracker.dir/tracker.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SurferTracker.dir/tracker.cpp.obj -MF CMakeFiles\SurferTracker.dir\tracker.cpp.obj.d -o CMakeFiles\SurferTracker.dir\tracker.cpp.obj -c D:\Projects\cpp-multi-object-sport-tracker\tracker.cpp

CMakeFiles/SurferTracker.dir/tracker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SurferTracker.dir/tracker.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Projects\cpp-multi-object-sport-tracker\tracker.cpp > CMakeFiles\SurferTracker.dir\tracker.cpp.i

CMakeFiles/SurferTracker.dir/tracker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SurferTracker.dir/tracker.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Projects\cpp-multi-object-sport-tracker\tracker.cpp -o CMakeFiles\SurferTracker.dir\tracker.cpp.s

CMakeFiles/SurferTracker.dir/predictor.cpp.obj: CMakeFiles/SurferTracker.dir/flags.make
CMakeFiles/SurferTracker.dir/predictor.cpp.obj: CMakeFiles/SurferTracker.dir/includes_CXX.rsp
CMakeFiles/SurferTracker.dir/predictor.cpp.obj: D:/Projects/cpp-multi-object-sport-tracker/predictor.cpp
CMakeFiles/SurferTracker.dir/predictor.cpp.obj: CMakeFiles/SurferTracker.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Projects\cpp-multi-object-sport-tracker\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/SurferTracker.dir/predictor.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SurferTracker.dir/predictor.cpp.obj -MF CMakeFiles\SurferTracker.dir\predictor.cpp.obj.d -o CMakeFiles\SurferTracker.dir\predictor.cpp.obj -c D:\Projects\cpp-multi-object-sport-tracker\predictor.cpp

CMakeFiles/SurferTracker.dir/predictor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SurferTracker.dir/predictor.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Projects\cpp-multi-object-sport-tracker\predictor.cpp > CMakeFiles\SurferTracker.dir\predictor.cpp.i

CMakeFiles/SurferTracker.dir/predictor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SurferTracker.dir/predictor.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Projects\cpp-multi-object-sport-tracker\predictor.cpp -o CMakeFiles\SurferTracker.dir\predictor.cpp.s

CMakeFiles/SurferTracker.dir/visualizer.cpp.obj: CMakeFiles/SurferTracker.dir/flags.make
CMakeFiles/SurferTracker.dir/visualizer.cpp.obj: CMakeFiles/SurferTracker.dir/includes_CXX.rsp
CMakeFiles/SurferTracker.dir/visualizer.cpp.obj: D:/Projects/cpp-multi-object-sport-tracker/visualizer.cpp
CMakeFiles/SurferTracker.dir/visualizer.cpp.obj: CMakeFiles/SurferTracker.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=D:\Projects\cpp-multi-object-sport-tracker\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/SurferTracker.dir/visualizer.cpp.obj"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/SurferTracker.dir/visualizer.cpp.obj -MF CMakeFiles\SurferTracker.dir\visualizer.cpp.obj.d -o CMakeFiles\SurferTracker.dir\visualizer.cpp.obj -c D:\Projects\cpp-multi-object-sport-tracker\visualizer.cpp

CMakeFiles/SurferTracker.dir/visualizer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/SurferTracker.dir/visualizer.cpp.i"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\Projects\cpp-multi-object-sport-tracker\visualizer.cpp > CMakeFiles\SurferTracker.dir\visualizer.cpp.i

CMakeFiles/SurferTracker.dir/visualizer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/SurferTracker.dir/visualizer.cpp.s"
	C:\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\Projects\cpp-multi-object-sport-tracker\visualizer.cpp -o CMakeFiles\SurferTracker.dir\visualizer.cpp.s

# Object files for target SurferTracker
SurferTracker_OBJECTS = \
"CMakeFiles/SurferTracker.dir/main.cpp.obj" \
"CMakeFiles/SurferTracker.dir/detector.cpp.obj" \
"CMakeFiles/SurferTracker.dir/tracker.cpp.obj" \
"CMakeFiles/SurferTracker.dir/predictor.cpp.obj" \
"CMakeFiles/SurferTracker.dir/visualizer.cpp.obj"

# External object files for target SurferTracker
SurferTracker_EXTERNAL_OBJECTS =

SurferTracker.exe: CMakeFiles/SurferTracker.dir/main.cpp.obj
SurferTracker.exe: CMakeFiles/SurferTracker.dir/detector.cpp.obj
SurferTracker.exe: CMakeFiles/SurferTracker.dir/tracker.cpp.obj
SurferTracker.exe: CMakeFiles/SurferTracker.dir/predictor.cpp.obj
SurferTracker.exe: CMakeFiles/SurferTracker.dir/visualizer.cpp.obj
SurferTracker.exe: CMakeFiles/SurferTracker.dir/build.make
SurferTracker.exe: D:/Program\ Files/OpenCV/opencv/build/x64/vc16/lib/opencv_world4100d.lib
SurferTracker.exe: D:/Program\ Files/OpenCV/opencv/build/x64/vc16/lib/opencv_world4100d.lib
SurferTracker.exe: D:/Program\ Files/OpenCV/opencv/build/x64/vc16/lib/opencv_world4100d.lib
SurferTracker.exe: D:/Program\ Files/OpenCV/opencv/build/x64/vc16/lib/opencv_world4100d.lib
SurferTracker.exe: D:/Program\ Files/OpenCV/opencv/build/x64/vc16/lib/opencv_world4100d.lib
SurferTracker.exe: D:/Program\ Files/OpenCV/opencv/build/x64/vc16/lib/opencv_world4100d.lib
SurferTracker.exe: D:/Program\ Files/OpenCV/opencv/build/x64/vc16/lib/opencv_world4100d.lib
SurferTracker.exe: D:/Program\ Files/OpenCV/opencv/build/x64/vc16/lib/opencv_world4100d.lib
SurferTracker.exe: D:/Program\ Files/OpenCV/opencv/build/x64/vc16/lib/opencv_world4100d.lib
SurferTracker.exe: D:/Program\ Files/OpenCV/opencv/build/x64/vc16/lib/opencv_world4100d.lib
SurferTracker.exe: D:/Program\ Files/OpenCV/opencv/build/x64/vc16/lib/opencv_world4100d.lib
SurferTracker.exe: D:/Program\ Files/OpenCV/opencv/build/x64/vc16/lib/opencv_world4100d.lib
SurferTracker.exe: D:/Program\ Files/OpenCV/opencv/build/x64/vc16/lib/opencv_world4100d.lib
SurferTracker.exe: D:/Program\ Files/OpenCV/opencv/build/x64/vc16/lib/opencv_world4100d.lib
SurferTracker.exe: D:/Program\ Files/OpenCV/opencv/build/x64/vc16/lib/opencv_world4100d.lib
SurferTracker.exe: D:/Program\ Files/OpenCV/opencv/build/x64/vc16/lib/opencv_world4100d.lib
SurferTracker.exe: CMakeFiles/SurferTracker.dir/linkLibs.rsp
SurferTracker.exe: CMakeFiles/SurferTracker.dir/objects1.rsp
SurferTracker.exe: CMakeFiles/SurferTracker.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=D:\Projects\cpp-multi-object-sport-tracker\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable SurferTracker.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\SurferTracker.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SurferTracker.dir/build: SurferTracker.exe
.PHONY : CMakeFiles/SurferTracker.dir/build

CMakeFiles/SurferTracker.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\SurferTracker.dir\cmake_clean.cmake
.PHONY : CMakeFiles/SurferTracker.dir/clean

CMakeFiles/SurferTracker.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\Projects\cpp-multi-object-sport-tracker D:\Projects\cpp-multi-object-sport-tracker D:\Projects\cpp-multi-object-sport-tracker\build D:\Projects\cpp-multi-object-sport-tracker\build D:\Projects\cpp-multi-object-sport-tracker\build\CMakeFiles\SurferTracker.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/SurferTracker.dir/depend

