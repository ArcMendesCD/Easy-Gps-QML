# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug

# Utility rule file for appeasy-gps-glonass_qmlimportscan.

# Include any custom commands dependencies for this target.
include CMakeFiles/appeasy-gps-glonass_qmlimportscan.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/appeasy-gps-glonass_qmlimportscan.dir/progress.make

CMakeFiles/appeasy-gps-glonass_qmlimportscan: .qt_plugins/Qt6_QmlPlugins_Imports_appeasy-gps-glonass.cmake

.qt_plugins/Qt6_QmlPlugins_Imports_appeasy-gps-glonass.cmake: /home/andreimendes/Qt/6.5.3/gcc_64/libexec/qmlimportscanner
.qt_plugins/Qt6_QmlPlugins_Imports_appeasy-gps-glonass.cmake: .rcc/qmake_easy-gps-glonass.qrc
.qt_plugins/Qt6_QmlPlugins_Imports_appeasy-gps-glonass.cmake: .rcc/appeasy-gps-glonass_raw_qml_0.qrc
.qt_plugins/Qt6_QmlPlugins_Imports_appeasy-gps-glonass.cmake: .rcc/planemarker.qrc
.qt_plugins/Qt6_QmlPlugins_Imports_appeasy-gps-glonass.cmake: /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/Main.qml
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running qmlimportscanner for appeasy-gps-glonass"
	cd /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass && /home/andreimendes/Qt/6.5.3/gcc_64/libexec/qmlimportscanner @/home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug/.qt_plugins/Qt6_QmlPlugins_Imports_appeasy-gps-glonass.rsp

appeasy-gps-glonass_qmlimportscan: .qt_plugins/Qt6_QmlPlugins_Imports_appeasy-gps-glonass.cmake
appeasy-gps-glonass_qmlimportscan: CMakeFiles/appeasy-gps-glonass_qmlimportscan
appeasy-gps-glonass_qmlimportscan: CMakeFiles/appeasy-gps-glonass_qmlimportscan.dir/build.make
.PHONY : appeasy-gps-glonass_qmlimportscan

# Rule to build all files generated by this target.
CMakeFiles/appeasy-gps-glonass_qmlimportscan.dir/build: appeasy-gps-glonass_qmlimportscan
.PHONY : CMakeFiles/appeasy-gps-glonass_qmlimportscan.dir/build

CMakeFiles/appeasy-gps-glonass_qmlimportscan.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/appeasy-gps-glonass_qmlimportscan.dir/cmake_clean.cmake
.PHONY : CMakeFiles/appeasy-gps-glonass_qmlimportscan.dir/clean

CMakeFiles/appeasy-gps-glonass_qmlimportscan.dir/depend:
	cd /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug/CMakeFiles/appeasy-gps-glonass_qmlimportscan.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/appeasy-gps-glonass_qmlimportscan.dir/depend

