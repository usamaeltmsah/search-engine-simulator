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
CMAKE_COMMAND = "/media/usama/E/programs/OS/Ubuntu Programes/clion-2019.1.2/bin/cmake/linux/bin/cmake"

# The command to remove a file.
RM = "/media/usama/E/programs/OS/Ubuntu Programes/clion-2019.1.2/bin/cmake/linux/bin/cmake" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/media/usama/E/FCI/FCIL4 T2/CS471 - Parallel Processing/2020/Assignments/Assignment 2/CS471-Parallel-A2-2020/serial c "

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/media/usama/E/FCI/FCIL4 T2/CS471 - Parallel Processing/2020/Assignments/Assignment 2/CS471-Parallel-A2-2020/serial c /cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/serial_c_.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/serial_c_.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/serial_c_.dir/flags.make

CMakeFiles/serial_c_.dir/main.c.o: CMakeFiles/serial_c_.dir/flags.make
CMakeFiles/serial_c_.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/media/usama/E/FCI/FCIL4 T2/CS471 - Parallel Processing/2020/Assignments/Assignment 2/CS471-Parallel-A2-2020/serial c /cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/serial_c_.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/serial_c_.dir/main.c.o   -c "/media/usama/E/FCI/FCIL4 T2/CS471 - Parallel Processing/2020/Assignments/Assignment 2/CS471-Parallel-A2-2020/serial c /main.c"

CMakeFiles/serial_c_.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/serial_c_.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/media/usama/E/FCI/FCIL4 T2/CS471 - Parallel Processing/2020/Assignments/Assignment 2/CS471-Parallel-A2-2020/serial c /main.c" > CMakeFiles/serial_c_.dir/main.c.i

CMakeFiles/serial_c_.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/serial_c_.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/media/usama/E/FCI/FCIL4 T2/CS471 - Parallel Processing/2020/Assignments/Assignment 2/CS471-Parallel-A2-2020/serial c /main.c" -o CMakeFiles/serial_c_.dir/main.c.s

# Object files for target serial_c_
serial_c__OBJECTS = \
"CMakeFiles/serial_c_.dir/main.c.o"

# External object files for target serial_c_
serial_c__EXTERNAL_OBJECTS =

serial_c_: CMakeFiles/serial_c_.dir/main.c.o
serial_c_: CMakeFiles/serial_c_.dir/build.make
serial_c_: CMakeFiles/serial_c_.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/media/usama/E/FCI/FCIL4 T2/CS471 - Parallel Processing/2020/Assignments/Assignment 2/CS471-Parallel-A2-2020/serial c /cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking C executable serial_c_"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/serial_c_.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/serial_c_.dir/build: serial_c_

.PHONY : CMakeFiles/serial_c_.dir/build

CMakeFiles/serial_c_.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/serial_c_.dir/cmake_clean.cmake
.PHONY : CMakeFiles/serial_c_.dir/clean

CMakeFiles/serial_c_.dir/depend:
	cd "/media/usama/E/FCI/FCIL4 T2/CS471 - Parallel Processing/2020/Assignments/Assignment 2/CS471-Parallel-A2-2020/serial c /cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/media/usama/E/FCI/FCIL4 T2/CS471 - Parallel Processing/2020/Assignments/Assignment 2/CS471-Parallel-A2-2020/serial c " "/media/usama/E/FCI/FCIL4 T2/CS471 - Parallel Processing/2020/Assignments/Assignment 2/CS471-Parallel-A2-2020/serial c " "/media/usama/E/FCI/FCIL4 T2/CS471 - Parallel Processing/2020/Assignments/Assignment 2/CS471-Parallel-A2-2020/serial c /cmake-build-debug" "/media/usama/E/FCI/FCIL4 T2/CS471 - Parallel Processing/2020/Assignments/Assignment 2/CS471-Parallel-A2-2020/serial c /cmake-build-debug" "/media/usama/E/FCI/FCIL4 T2/CS471 - Parallel Processing/2020/Assignments/Assignment 2/CS471-Parallel-A2-2020/serial c /cmake-build-debug/CMakeFiles/serial_c_.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/serial_c_.dir/depend

