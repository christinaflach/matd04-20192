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
include test/CMakeFiles/integerheap_tests.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/integerheap_tests.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/integerheap_tests.dir/flags.make

test/CMakeFiles/integerheap_tests.dir/main.cpp.o: test/CMakeFiles/integerheap_tests.dir/flags.make
test/CMakeFiles/integerheap_tests.dir/main.cpp.o: ../../test/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/CMakeFiles/integerheap_tests.dir/main.cpp.o"
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/integerheap_tests.dir/main.cpp.o -c /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/test/main.cpp

test/CMakeFiles/integerheap_tests.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/integerheap_tests.dir/main.cpp.i"
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/test/main.cpp > CMakeFiles/integerheap_tests.dir/main.cpp.i

test/CMakeFiles/integerheap_tests.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/integerheap_tests.dir/main.cpp.s"
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/test/main.cpp -o CMakeFiles/integerheap_tests.dir/main.cpp.s

test/CMakeFiles/integerheap_tests.dir/src/integerheap_tests.cpp.o: test/CMakeFiles/integerheap_tests.dir/flags.make
test/CMakeFiles/integerheap_tests.dir/src/integerheap_tests.cpp.o: ../../test/src/integerheap_tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object test/CMakeFiles/integerheap_tests.dir/src/integerheap_tests.cpp.o"
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/test && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/integerheap_tests.dir/src/integerheap_tests.cpp.o -c /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/test/src/integerheap_tests.cpp

test/CMakeFiles/integerheap_tests.dir/src/integerheap_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/integerheap_tests.dir/src/integerheap_tests.cpp.i"
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/test/src/integerheap_tests.cpp > CMakeFiles/integerheap_tests.dir/src/integerheap_tests.cpp.i

test/CMakeFiles/integerheap_tests.dir/src/integerheap_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/integerheap_tests.dir/src/integerheap_tests.cpp.s"
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/test && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/test/src/integerheap_tests.cpp -o CMakeFiles/integerheap_tests.dir/src/integerheap_tests.cpp.s

# Object files for target integerheap_tests
integerheap_tests_OBJECTS = \
"CMakeFiles/integerheap_tests.dir/main.cpp.o" \
"CMakeFiles/integerheap_tests.dir/src/integerheap_tests.cpp.o"

# External object files for target integerheap_tests
integerheap_tests_EXTERNAL_OBJECTS =

test/integerheap_tests: test/CMakeFiles/integerheap_tests.dir/main.cpp.o
test/integerheap_tests: test/CMakeFiles/integerheap_tests.dir/src/integerheap_tests.cpp.o
test/integerheap_tests: test/CMakeFiles/integerheap_tests.dir/build.make
test/integerheap_tests: src/integerheap/libintegerheap.a
test/integerheap_tests: lib/libgtest.a
test/integerheap_tests: test/CMakeFiles/integerheap_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable integerheap_tests"
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/integerheap_tests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/integerheap_tests.dir/build: test/integerheap_tests

.PHONY : test/CMakeFiles/integerheap_tests.dir/build

test/CMakeFiles/integerheap_tests.dir/clean:
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/test && $(CMAKE_COMMAND) -P CMakeFiles/integerheap_tests.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/integerheap_tests.dir/clean

test/CMakeFiles/integerheap_tests.dir/depend:
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/test /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/test /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/test/CMakeFiles/integerheap_tests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/integerheap_tests.dir/depend

