# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/kawahara/programs/image_input/use_intelRealsense

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/kawahara/programs/image_input/use_intelRealsense/build

# Include any dependencies generated for this target.
include CMakeFiles/rsid_cpp_example.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/rsid_cpp_example.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/rsid_cpp_example.dir/flags.make

CMakeFiles/rsid_cpp_example.dir/realsense_init.cpp.o: CMakeFiles/rsid_cpp_example.dir/flags.make
CMakeFiles/rsid_cpp_example.dir/realsense_init.cpp.o: ../realsense_init.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/kawahara/programs/image_input/use_intelRealsense/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/rsid_cpp_example.dir/realsense_init.cpp.o"
	/usr/bin/g++-7  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rsid_cpp_example.dir/realsense_init.cpp.o -c /home/kawahara/programs/image_input/use_intelRealsense/realsense_init.cpp

CMakeFiles/rsid_cpp_example.dir/realsense_init.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rsid_cpp_example.dir/realsense_init.cpp.i"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/kawahara/programs/image_input/use_intelRealsense/realsense_init.cpp > CMakeFiles/rsid_cpp_example.dir/realsense_init.cpp.i

CMakeFiles/rsid_cpp_example.dir/realsense_init.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rsid_cpp_example.dir/realsense_init.cpp.s"
	/usr/bin/g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/kawahara/programs/image_input/use_intelRealsense/realsense_init.cpp -o CMakeFiles/rsid_cpp_example.dir/realsense_init.cpp.s

# Object files for target rsid_cpp_example
rsid_cpp_example_OBJECTS = \
"CMakeFiles/rsid_cpp_example.dir/realsense_init.cpp.o"

# External object files for target rsid_cpp_example
rsid_cpp_example_EXTERNAL_OBJECTS =

rsid_cpp_example: CMakeFiles/rsid_cpp_example.dir/realsense_init.cpp.o
rsid_cpp_example: CMakeFiles/rsid_cpp_example.dir/build.make
rsid_cpp_example: CMakeFiles/rsid_cpp_example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/kawahara/programs/image_input/use_intelRealsense/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable rsid_cpp_example"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rsid_cpp_example.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/rsid_cpp_example.dir/build: rsid_cpp_example

.PHONY : CMakeFiles/rsid_cpp_example.dir/build

CMakeFiles/rsid_cpp_example.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/rsid_cpp_example.dir/cmake_clean.cmake
.PHONY : CMakeFiles/rsid_cpp_example.dir/clean

CMakeFiles/rsid_cpp_example.dir/depend:
	cd /home/kawahara/programs/image_input/use_intelRealsense/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/kawahara/programs/image_input/use_intelRealsense /home/kawahara/programs/image_input/use_intelRealsense /home/kawahara/programs/image_input/use_intelRealsense/build /home/kawahara/programs/image_input/use_intelRealsense/build /home/kawahara/programs/image_input/use_intelRealsense/build/CMakeFiles/rsid_cpp_example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/rsid_cpp_example.dir/depend
