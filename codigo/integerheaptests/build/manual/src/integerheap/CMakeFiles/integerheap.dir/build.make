# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.14.4/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.14.4/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual

# Include any dependencies generated for this target.
include src/integerheap/CMakeFiles/integerheap.dir/depend.make

# Include the progress variables for this target.
include src/integerheap/CMakeFiles/integerheap.dir/progress.make

# Include the compile flags for this target's objects.
include src/integerheap/CMakeFiles/integerheap.dir/flags.make

src/integerheap/CMakeFiles/integerheap.dir/IntegerHeap.cpp.o: src/integerheap/CMakeFiles/integerheap.dir/flags.make
src/integerheap/CMakeFiles/integerheap.dir/IntegerHeap.cpp.o: ../../src/integerheap/IntegerHeap.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/integerheap/CMakeFiles/integerheap.dir/IntegerHeap.cpp.o"
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/src/integerheap && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/integerheap.dir/IntegerHeap.cpp.o -c /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/src/integerheap/IntegerHeap.cpp

src/integerheap/CMakeFiles/integerheap.dir/IntegerHeap.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/integerheap.dir/IntegerHeap.cpp.i"
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/src/integerheap && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/src/integerheap/IntegerHeap.cpp > CMakeFiles/integerheap.dir/IntegerHeap.cpp.i

src/integerheap/CMakeFiles/integerheap.dir/IntegerHeap.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/integerheap.dir/IntegerHeap.cpp.s"
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/src/integerheap && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/src/integerheap/IntegerHeap.cpp -o CMakeFiles/integerheap.dir/IntegerHeap.cpp.s

# Object files for target integerheap
integerheap_OBJECTS = \
"CMakeFiles/integerheap.dir/IntegerHeap.cpp.o"

# External object files for target integerheap
integerheap_EXTERNAL_OBJECTS =

src/integerheap/libintegerheap.a: src/integerheap/CMakeFiles/integerheap.dir/IntegerHeap.cpp.o
src/integerheap/libintegerheap.a: src/integerheap/CMakeFiles/integerheap.dir/build.make
src/integerheap/libintegerheap.a: src/integerheap/CMakeFiles/integerheap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libintegerheap.a"
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/src/integerheap && $(CMAKE_COMMAND) -P CMakeFiles/integerheap.dir/cmake_clean_target.cmake
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/src/integerheap && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/integerheap.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/integerheap/CMakeFiles/integerheap.dir/build: src/integerheap/libintegerheap.a

.PHONY : src/integerheap/CMakeFiles/integerheap.dir/build

src/integerheap/CMakeFiles/integerheap.dir/clean:
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/src/integerheap && $(CMAKE_COMMAND) -P CMakeFiles/integerheap.dir/cmake_clean.cmake
.PHONY : src/integerheap/CMakeFiles/integerheap.dir/clean

src/integerheap/CMakeFiles/integerheap.dir/depend:
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/src/integerheap /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/src/integerheap /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/src/integerheap/CMakeFiles/integerheap.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/integerheap/CMakeFiles/integerheap.dir/depend
