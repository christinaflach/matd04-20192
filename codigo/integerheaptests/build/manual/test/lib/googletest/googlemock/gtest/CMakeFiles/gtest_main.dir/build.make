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
include test/lib/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/depend.make

# Include the progress variables for this target.
include test/lib/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/progress.make

# Include the compile flags for this target's objects.
include test/lib/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/flags.make

test/lib/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: test/lib/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/flags.make
test/lib/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o: ../../test/lib/googletest/googletest/src/gtest_main.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object test/lib/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/test/lib/googletest/googlemock/gtest && /Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.o -c /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/test/lib/googletest/googletest/src/gtest_main.cc

test/lib/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gtest_main.dir/src/gtest_main.cc.i"
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/test/lib/googletest/googlemock/gtest && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/test/lib/googletest/googletest/src/gtest_main.cc > CMakeFiles/gtest_main.dir/src/gtest_main.cc.i

test/lib/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gtest_main.dir/src/gtest_main.cc.s"
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/test/lib/googletest/googlemock/gtest && /Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/test/lib/googletest/googletest/src/gtest_main.cc -o CMakeFiles/gtest_main.dir/src/gtest_main.cc.s

# Object files for target gtest_main
gtest_main_OBJECTS = \
"CMakeFiles/gtest_main.dir/src/gtest_main.cc.o"

# External object files for target gtest_main
gtest_main_EXTERNAL_OBJECTS =

lib/libgtest_main.a: test/lib/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/src/gtest_main.cc.o
lib/libgtest_main.a: test/lib/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/build.make
lib/libgtest_main.a: test/lib/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library ../../../../../lib/libgtest_main.a"
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/test/lib/googletest/googlemock/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean_target.cmake
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/test/lib/googletest/googlemock/gtest && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gtest_main.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/lib/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/build: lib/libgtest_main.a

.PHONY : test/lib/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/build

test/lib/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/clean:
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/test/lib/googletest/googlemock/gtest && $(CMAKE_COMMAND) -P CMakeFiles/gtest_main.dir/cmake_clean.cmake
.PHONY : test/lib/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/clean

test/lib/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/depend:
	cd /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/test/lib/googletest/googletest /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/test/lib/googletest/googlemock/gtest /Users/christina/Ensino-UFBA/matd04/matd04-p/codigo/integerheaptests/build/manual/test/lib/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/lib/googletest/googlemock/gtest/CMakeFiles/gtest_main.dir/depend

