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
CMAKE_SOURCE_DIR = /home/dowoncha/Github/Shrodingers

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dowoncha/Github/Shrodingers/build

# Include any dependencies generated for this target.
include eigen/test/CMakeFiles/nomalloc_6.dir/depend.make

# Include the progress variables for this target.
include eigen/test/CMakeFiles/nomalloc_6.dir/progress.make

# Include the compile flags for this target's objects.
include eigen/test/CMakeFiles/nomalloc_6.dir/flags.make

eigen/test/CMakeFiles/nomalloc_6.dir/nomalloc.cpp.o: eigen/test/CMakeFiles/nomalloc_6.dir/flags.make
eigen/test/CMakeFiles/nomalloc_6.dir/nomalloc.cpp.o: ../eigen/test/nomalloc.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/dowoncha/Github/Shrodingers/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object eigen/test/CMakeFiles/nomalloc_6.dir/nomalloc.cpp.o"
	cd /home/dowoncha/Github/Shrodingers/build/eigen/test && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/nomalloc_6.dir/nomalloc.cpp.o -c /home/dowoncha/Github/Shrodingers/eigen/test/nomalloc.cpp

eigen/test/CMakeFiles/nomalloc_6.dir/nomalloc.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/nomalloc_6.dir/nomalloc.cpp.i"
	cd /home/dowoncha/Github/Shrodingers/build/eigen/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/dowoncha/Github/Shrodingers/eigen/test/nomalloc.cpp > CMakeFiles/nomalloc_6.dir/nomalloc.cpp.i

eigen/test/CMakeFiles/nomalloc_6.dir/nomalloc.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/nomalloc_6.dir/nomalloc.cpp.s"
	cd /home/dowoncha/Github/Shrodingers/build/eigen/test && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/dowoncha/Github/Shrodingers/eigen/test/nomalloc.cpp -o CMakeFiles/nomalloc_6.dir/nomalloc.cpp.s

eigen/test/CMakeFiles/nomalloc_6.dir/nomalloc.cpp.o.requires:
.PHONY : eigen/test/CMakeFiles/nomalloc_6.dir/nomalloc.cpp.o.requires

eigen/test/CMakeFiles/nomalloc_6.dir/nomalloc.cpp.o.provides: eigen/test/CMakeFiles/nomalloc_6.dir/nomalloc.cpp.o.requires
	$(MAKE) -f eigen/test/CMakeFiles/nomalloc_6.dir/build.make eigen/test/CMakeFiles/nomalloc_6.dir/nomalloc.cpp.o.provides.build
.PHONY : eigen/test/CMakeFiles/nomalloc_6.dir/nomalloc.cpp.o.provides

eigen/test/CMakeFiles/nomalloc_6.dir/nomalloc.cpp.o.provides.build: eigen/test/CMakeFiles/nomalloc_6.dir/nomalloc.cpp.o

# Object files for target nomalloc_6
nomalloc_6_OBJECTS = \
"CMakeFiles/nomalloc_6.dir/nomalloc.cpp.o"

# External object files for target nomalloc_6
nomalloc_6_EXTERNAL_OBJECTS =

eigen/test/nomalloc_6: eigen/test/CMakeFiles/nomalloc_6.dir/nomalloc.cpp.o
eigen/test/nomalloc_6: eigen/test/CMakeFiles/nomalloc_6.dir/build.make
eigen/test/nomalloc_6: eigen/test/CMakeFiles/nomalloc_6.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable nomalloc_6"
	cd /home/dowoncha/Github/Shrodingers/build/eigen/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/nomalloc_6.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
eigen/test/CMakeFiles/nomalloc_6.dir/build: eigen/test/nomalloc_6
.PHONY : eigen/test/CMakeFiles/nomalloc_6.dir/build

eigen/test/CMakeFiles/nomalloc_6.dir/requires: eigen/test/CMakeFiles/nomalloc_6.dir/nomalloc.cpp.o.requires
.PHONY : eigen/test/CMakeFiles/nomalloc_6.dir/requires

eigen/test/CMakeFiles/nomalloc_6.dir/clean:
	cd /home/dowoncha/Github/Shrodingers/build/eigen/test && $(CMAKE_COMMAND) -P CMakeFiles/nomalloc_6.dir/cmake_clean.cmake
.PHONY : eigen/test/CMakeFiles/nomalloc_6.dir/clean

eigen/test/CMakeFiles/nomalloc_6.dir/depend:
	cd /home/dowoncha/Github/Shrodingers/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dowoncha/Github/Shrodingers /home/dowoncha/Github/Shrodingers/eigen/test /home/dowoncha/Github/Shrodingers/build /home/dowoncha/Github/Shrodingers/build/eigen/test /home/dowoncha/Github/Shrodingers/build/eigen/test/CMakeFiles/nomalloc_6.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : eigen/test/CMakeFiles/nomalloc_6.dir/depend

