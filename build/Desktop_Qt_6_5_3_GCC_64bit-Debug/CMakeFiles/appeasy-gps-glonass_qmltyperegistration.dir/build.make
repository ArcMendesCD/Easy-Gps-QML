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

# Utility rule file for appeasy-gps-glonass_qmltyperegistration.

# Include any custom commands dependencies for this target.
include CMakeFiles/appeasy-gps-glonass_qmltyperegistration.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/appeasy-gps-glonass_qmltyperegistration.dir/progress.make

CMakeFiles/appeasy-gps-glonass_qmltyperegistration: appeasy-gps-glonass_qmltyperegistrations.cpp
CMakeFiles/appeasy-gps-glonass_qmltyperegistration: easy-gps-glonass/appeasy-gps-glonass.qmltypes

appeasy-gps-glonass_qmltyperegistrations.cpp: qmltypes/appeasy-gps-glonass_foreign_types.txt
appeasy-gps-glonass_qmltyperegistrations.cpp: meta_types/qt6appeasy-gps-glonass_debug_metatypes.json
appeasy-gps-glonass_qmltyperegistrations.cpp: /home/andreimendes/Qt/6.5.3/gcc_64/./libexec/qmltyperegistrar
appeasy-gps-glonass_qmltyperegistrations.cpp: /home/andreimendes/Qt/6.5.3/gcc_64/metatypes/qt6core_relwithdebinfo_metatypes.json
appeasy-gps-glonass_qmltyperegistrations.cpp: /home/andreimendes/Qt/6.5.3/gcc_64/metatypes/qt6qml_relwithdebinfo_metatypes.json
appeasy-gps-glonass_qmltyperegistrations.cpp: /home/andreimendes/Qt/6.5.3/gcc_64/metatypes/qt6network_relwithdebinfo_metatypes.json
appeasy-gps-glonass_qmltyperegistrations.cpp: /home/andreimendes/Qt/6.5.3/gcc_64/metatypes/qt6quick_relwithdebinfo_metatypes.json
appeasy-gps-glonass_qmltyperegistrations.cpp: /home/andreimendes/Qt/6.5.3/gcc_64/metatypes/qt6gui_relwithdebinfo_metatypes.json
appeasy-gps-glonass_qmltyperegistrations.cpp: /home/andreimendes/Qt/6.5.3/gcc_64/metatypes/qt6qmlmodels_relwithdebinfo_metatypes.json
appeasy-gps-glonass_qmltyperegistrations.cpp: /home/andreimendes/Qt/6.5.3/gcc_64/metatypes/qt6opengl_relwithdebinfo_metatypes.json
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic QML type registration for target appeasy-gps-glonass"
	/home/andreimendes/Qt/6.5.3/gcc_64/libexec/qmltyperegistrar --generate-qmltypes=/home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug/easy-gps-glonass/appeasy-gps-glonass.qmltypes --import-name=easy-gps-glonass --major-version=1 --minor-version=0 @/home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug/qmltypes/appeasy-gps-glonass_foreign_types.txt -o /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug/appeasy-gps-glonass_qmltyperegistrations.cpp /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug/meta_types/qt6appeasy-gps-glonass_debug_metatypes.json
	/usr/bin/cmake -E make_directory /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug/.generated
	/usr/bin/cmake -E touch /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug/.generated/appeasy-gps-glonass.qmltypes

easy-gps-glonass/appeasy-gps-glonass.qmltypes: appeasy-gps-glonass_qmltyperegistrations.cpp
	@$(CMAKE_COMMAND) -E touch_nocreate easy-gps-glonass/appeasy-gps-glonass.qmltypes

meta_types/qt6appeasy-gps-glonass_debug_metatypes.json: meta_types/qt6appeasy-gps-glonass_debug_metatypes.json.gen
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Generating meta_types/qt6appeasy-gps-glonass_debug_metatypes.json"
	/usr/bin/cmake -E true

meta_types/qt6appeasy-gps-glonass_debug_metatypes.json.gen: /home/andreimendes/Qt/6.5.3/gcc_64/./libexec/moc
meta_types/qt6appeasy-gps-glonass_debug_metatypes.json.gen: meta_types/appeasy-gps-glonass_json_file_list.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Running moc --collect-json for target appeasy-gps-glonass"
	/home/andreimendes/Qt/6.5.3/gcc_64/libexec/moc -o /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug/meta_types/qt6appeasy-gps-glonass_debug_metatypes.json.gen --collect-json @/home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug/meta_types/appeasy-gps-glonass_json_file_list.txt
	/usr/bin/cmake -E copy_if_different /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug/meta_types/qt6appeasy-gps-glonass_debug_metatypes.json.gen /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug/meta_types/qt6appeasy-gps-glonass_debug_metatypes.json

appeasy-gps-glonass_qmltyperegistration: CMakeFiles/appeasy-gps-glonass_qmltyperegistration
appeasy-gps-glonass_qmltyperegistration: appeasy-gps-glonass_qmltyperegistrations.cpp
appeasy-gps-glonass_qmltyperegistration: easy-gps-glonass/appeasy-gps-glonass.qmltypes
appeasy-gps-glonass_qmltyperegistration: meta_types/qt6appeasy-gps-glonass_debug_metatypes.json
appeasy-gps-glonass_qmltyperegistration: meta_types/qt6appeasy-gps-glonass_debug_metatypes.json.gen
appeasy-gps-glonass_qmltyperegistration: CMakeFiles/appeasy-gps-glonass_qmltyperegistration.dir/build.make
.PHONY : appeasy-gps-glonass_qmltyperegistration

# Rule to build all files generated by this target.
CMakeFiles/appeasy-gps-glonass_qmltyperegistration.dir/build: appeasy-gps-glonass_qmltyperegistration
.PHONY : CMakeFiles/appeasy-gps-glonass_qmltyperegistration.dir/build

CMakeFiles/appeasy-gps-glonass_qmltyperegistration.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/appeasy-gps-glonass_qmltyperegistration.dir/cmake_clean.cmake
.PHONY : CMakeFiles/appeasy-gps-glonass_qmltyperegistration.dir/clean

CMakeFiles/appeasy-gps-glonass_qmltyperegistration.dir/depend:
	cd /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug /home/andreimendes/Documents/Dev/avionics-suite/easy-gps/easy-gps-glonass/build/Desktop_Qt_6_5_3_GCC_64bit-Debug/CMakeFiles/appeasy-gps-glonass_qmltyperegistration.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/appeasy-gps-glonass_qmltyperegistration.dir/depend

