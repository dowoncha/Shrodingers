# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dowoncha/Github/Shrodingers/eigen

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dowoncha/Github/Shrodingers/eigen/build

# Include any dependencies generated for this target.
include test/CMakeFiles/geo_quaternion_1.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/geo_quaternion_1.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/geo_quaternion_1.dir/flags.make

test/CMakeFiles/geo_quaternion_1.dir/geo_quaternion.cpp.o: test/CMakeFiles/geo_quaternion_1.dir/flags.make
test/CMakeFiles/geo_quaternion_1.dir/geo_quaternion.cpp.o: ../test/geo_quaternion.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dowoncha/Github/Shrodingers/eigen/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/geo_quaternion_1.dir/geo_quaternion.cpp.o"
	cd /home/dowoncha/Github/Shrodingers/eigen/build/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/geo_quaternion_1.dir/geo_quaternion.cpp.o -c /home/dowoncha/Github/Shrodingers/eigen/test/geo_quaternion.cpp

test/CMakeFiles/geo_quaternion_1.dir/geo_quaternion.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/geo_quaternion_1.dir/geo_quaternion.cpp.i"
	cd /home/dowoncha/Github/Shrodingers/eigen/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/dowoncha/Github/Shrodingers/eigen/test/geo_quaternion.cpp > CMakeFiles/geo_quaternion_1.dir/geo_quaternion.cpp.i

test/CMakeFiles/geo_quaternion_1.dir/geo_quaternion.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/geo_quaternion_1.dir/geo_quaternion.cpp.s"
	cd /home/dowoncha/Github/Shrodingers/eigen/build/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/dowoncha/Github/Shrodingers/eigen/test/geo_quaternion.cpp -o CMakeFiles/geo_quaternion_1.dir/geo_quaternion.cpp.s

test/CMakeFiles/geo_quaternion_1.dir/geo_quaternion.cpp.o.requires:
.PHONY : test/CMakeFiles/geo_quaternion_1.dir/geo_quaternion.cpp.o.requires

test/CMakeFiles/geo_quaternion_1.dir/geo_quaternion.cpp.o.provides: test/CMakeFiles/geo_quaternion_1.dir/geo_quaternion.cpp.o.requires
	$(MAKE) -f test/CMakeFiles/geo_quaternion_1.dir/build.make test/CMakeFiles/geo_quaternion_1.dir/geo_quaternion.cpp.o.provides.build
.PHONY : test/CMakeFiles/geo_quaternion_1.dir/geo_quaternion.cpp.o.provides

test/CMakeFiles/geo_quaternion_1.dir/geo_quaternion.cpp.o.provides.build: test/CMakeFiles/geo_quaternion_1.dir/geo_quaternion.cpp.o

# Object files for target geo_quaternion_1
geo_quaternion_1_OBJECTS = \
"CMakeFiles/geo_quaternion_1.dir/geo_quaternion.cpp.o"

# External object files for target geo_quaternion_1
geo_quaternion_1_EXTERNAL_OBJECTS =

test/geo_quaternion_1: test/CMakeFiles/geo_quaternion_1.dir/geo_quaternion.cpp.o
test/geo_quaternion_1: test/CMakeFiles/geo_quaternion_1.dir/build.make
test/geo_quaternion_1: test/CMakeFiles/geo_quaternion_1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable geo_quaternion_1"
	cd /home/dowoncha/Github/Shrodingers/eigen/build/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/geo_quaternion_1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/geo_quaternion_1.dir/build: test/geo_quaternion_1
.PHONY : test/CMakeFiles/geo_quaternion_1.dir/build

test/CMakeFiles/geo_quaternion_1.dir/requires: test/CMakeFiles/geo_quaternion_1.dir/geo_quaternion.cpp.o.requires
.PHONY : test/CMakeFiles/geo_quaternion_1.dir/requires

test/CMakeFiles/geo_quaternion_1.dir/clean:
	cd /home/dowoncha/Github/Shrodingers/eigen/build/test && $(CMAKE_COMMAND) -P CMakeFiles/geo_quaternion_1.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/geo_quaternion_1.dir/clean

test/CMakeFiles/geo_quaternion_1.dir/depend:
	cd /home/dowoncha/Github/Shrodingers/eigen/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dowoncha/Github/Shrodingers/eigen /home/dowoncha/Github/Shrodingers/eigen/test /home/dowoncha/Github/Shrodingers/eigen/build /home/dowoncha/Github/Shrodingers/eigen/build/test /home/dowoncha/Github/Shrodingers/eigen/build/test/CMakeFiles/geo_quaternion_1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/geo_quaternion_1.dir/depend

