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
include doc/examples/CMakeFiles/QuickStart_example.dir/depend.make

# Include the progress variables for this target.
include doc/examples/CMakeFiles/QuickStart_example.dir/progress.make

# Include the compile flags for this target's objects.
include doc/examples/CMakeFiles/QuickStart_example.dir/flags.make

doc/examples/CMakeFiles/QuickStart_example.dir/QuickStart_example.cpp.o: doc/examples/CMakeFiles/QuickStart_example.dir/flags.make
doc/examples/CMakeFiles/QuickStart_example.dir/QuickStart_example.cpp.o: ../doc/examples/QuickStart_example.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dowoncha/Github/Shrodingers/eigen/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object doc/examples/CMakeFiles/QuickStart_example.dir/QuickStart_example.cpp.o"
	cd /home/dowoncha/Github/Shrodingers/eigen/build/doc/examples && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/QuickStart_example.dir/QuickStart_example.cpp.o -c /home/dowoncha/Github/Shrodingers/eigen/doc/examples/QuickStart_example.cpp

doc/examples/CMakeFiles/QuickStart_example.dir/QuickStart_example.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/QuickStart_example.dir/QuickStart_example.cpp.i"
	cd /home/dowoncha/Github/Shrodingers/eigen/build/doc/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/dowoncha/Github/Shrodingers/eigen/doc/examples/QuickStart_example.cpp > CMakeFiles/QuickStart_example.dir/QuickStart_example.cpp.i

doc/examples/CMakeFiles/QuickStart_example.dir/QuickStart_example.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/QuickStart_example.dir/QuickStart_example.cpp.s"
	cd /home/dowoncha/Github/Shrodingers/eigen/build/doc/examples && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/dowoncha/Github/Shrodingers/eigen/doc/examples/QuickStart_example.cpp -o CMakeFiles/QuickStart_example.dir/QuickStart_example.cpp.s

doc/examples/CMakeFiles/QuickStart_example.dir/QuickStart_example.cpp.o.requires:
.PHONY : doc/examples/CMakeFiles/QuickStart_example.dir/QuickStart_example.cpp.o.requires

doc/examples/CMakeFiles/QuickStart_example.dir/QuickStart_example.cpp.o.provides: doc/examples/CMakeFiles/QuickStart_example.dir/QuickStart_example.cpp.o.requires
	$(MAKE) -f doc/examples/CMakeFiles/QuickStart_example.dir/build.make doc/examples/CMakeFiles/QuickStart_example.dir/QuickStart_example.cpp.o.provides.build
.PHONY : doc/examples/CMakeFiles/QuickStart_example.dir/QuickStart_example.cpp.o.provides

doc/examples/CMakeFiles/QuickStart_example.dir/QuickStart_example.cpp.o.provides.build: doc/examples/CMakeFiles/QuickStart_example.dir/QuickStart_example.cpp.o

# Object files for target QuickStart_example
QuickStart_example_OBJECTS = \
"CMakeFiles/QuickStart_example.dir/QuickStart_example.cpp.o"

# External object files for target QuickStart_example
QuickStart_example_EXTERNAL_OBJECTS =

doc/examples/QuickStart_example: doc/examples/CMakeFiles/QuickStart_example.dir/QuickStart_example.cpp.o
doc/examples/QuickStart_example: doc/examples/CMakeFiles/QuickStart_example.dir/build.make
doc/examples/QuickStart_example: doc/examples/CMakeFiles/QuickStart_example.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable QuickStart_example"
	cd /home/dowoncha/Github/Shrodingers/eigen/build/doc/examples && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/QuickStart_example.dir/link.txt --verbose=$(VERBOSE)
	cd /home/dowoncha/Github/Shrodingers/eigen/build/doc/examples && ./QuickStart_example >/home/dowoncha/Github/Shrodingers/eigen/build/doc/examples/QuickStart_example.out

# Rule to build all files generated by this target.
doc/examples/CMakeFiles/QuickStart_example.dir/build: doc/examples/QuickStart_example
.PHONY : doc/examples/CMakeFiles/QuickStart_example.dir/build

doc/examples/CMakeFiles/QuickStart_example.dir/requires: doc/examples/CMakeFiles/QuickStart_example.dir/QuickStart_example.cpp.o.requires
.PHONY : doc/examples/CMakeFiles/QuickStart_example.dir/requires

doc/examples/CMakeFiles/QuickStart_example.dir/clean:
	cd /home/dowoncha/Github/Shrodingers/eigen/build/doc/examples && $(CMAKE_COMMAND) -P CMakeFiles/QuickStart_example.dir/cmake_clean.cmake
.PHONY : doc/examples/CMakeFiles/QuickStart_example.dir/clean

doc/examples/CMakeFiles/QuickStart_example.dir/depend:
	cd /home/dowoncha/Github/Shrodingers/eigen/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dowoncha/Github/Shrodingers/eigen /home/dowoncha/Github/Shrodingers/eigen/doc/examples /home/dowoncha/Github/Shrodingers/eigen/build /home/dowoncha/Github/Shrodingers/eigen/build/doc/examples /home/dowoncha/Github/Shrodingers/eigen/build/doc/examples/CMakeFiles/QuickStart_example.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : doc/examples/CMakeFiles/QuickStart_example.dir/depend

