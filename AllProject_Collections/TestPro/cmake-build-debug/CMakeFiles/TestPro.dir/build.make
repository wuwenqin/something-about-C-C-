# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.19

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\C++Environment\CLion 2021.1.3\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\C++Environment\CLion 2021.1.3\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\AWU\Desktop\C++Study\AllProject_Collections\TestPro

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\AWU\Desktop\C++Study\AllProject_Collections\TestPro\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/TestPro.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TestPro.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TestPro.dir/flags.make

CMakeFiles/TestPro.dir/main.cpp.obj: CMakeFiles/TestPro.dir/flags.make
CMakeFiles/TestPro.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\AWU\Desktop\C++Study\AllProject_Collections\TestPro\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TestPro.dir/main.cpp.obj"
	C:\c++runTime\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\TestPro.dir\main.cpp.obj -c C:\Users\AWU\Desktop\C++Study\AllProject_Collections\TestPro\main.cpp

CMakeFiles/TestPro.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestPro.dir/main.cpp.i"
	C:\c++runTime\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\AWU\Desktop\C++Study\AllProject_Collections\TestPro\main.cpp > CMakeFiles\TestPro.dir\main.cpp.i

CMakeFiles/TestPro.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestPro.dir/main.cpp.s"
	C:\c++runTime\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\AWU\Desktop\C++Study\AllProject_Collections\TestPro\main.cpp -o CMakeFiles\TestPro.dir\main.cpp.s

CMakeFiles/TestPro.dir/test.cpp.obj: CMakeFiles/TestPro.dir/flags.make
CMakeFiles/TestPro.dir/test.cpp.obj: ../test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\AWU\Desktop\C++Study\AllProject_Collections\TestPro\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/TestPro.dir/test.cpp.obj"
	C:\c++runTime\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\TestPro.dir\test.cpp.obj -c C:\Users\AWU\Desktop\C++Study\AllProject_Collections\TestPro\test.cpp

CMakeFiles/TestPro.dir/test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TestPro.dir/test.cpp.i"
	C:\c++runTime\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\AWU\Desktop\C++Study\AllProject_Collections\TestPro\test.cpp > CMakeFiles\TestPro.dir\test.cpp.i

CMakeFiles/TestPro.dir/test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TestPro.dir/test.cpp.s"
	C:\c++runTime\mingw64\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\AWU\Desktop\C++Study\AllProject_Collections\TestPro\test.cpp -o CMakeFiles\TestPro.dir\test.cpp.s

# Object files for target TestPro
TestPro_OBJECTS = \
"CMakeFiles/TestPro.dir/main.cpp.obj" \
"CMakeFiles/TestPro.dir/test.cpp.obj"

# External object files for target TestPro
TestPro_EXTERNAL_OBJECTS =

TestPro.exe: CMakeFiles/TestPro.dir/main.cpp.obj
TestPro.exe: CMakeFiles/TestPro.dir/test.cpp.obj
TestPro.exe: CMakeFiles/TestPro.dir/build.make
TestPro.exe: CMakeFiles/TestPro.dir/linklibs.rsp
TestPro.exe: CMakeFiles/TestPro.dir/objects1.rsp
TestPro.exe: CMakeFiles/TestPro.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\AWU\Desktop\C++Study\AllProject_Collections\TestPro\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable TestPro.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\TestPro.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TestPro.dir/build: TestPro.exe

.PHONY : CMakeFiles/TestPro.dir/build

CMakeFiles/TestPro.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\TestPro.dir\cmake_clean.cmake
.PHONY : CMakeFiles/TestPro.dir/clean

CMakeFiles/TestPro.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\AWU\Desktop\C++Study\AllProject_Collections\TestPro C:\Users\AWU\Desktop\C++Study\AllProject_Collections\TestPro C:\Users\AWU\Desktop\C++Study\AllProject_Collections\TestPro\cmake-build-debug C:\Users\AWU\Desktop\C++Study\AllProject_Collections\TestPro\cmake-build-debug C:\Users\AWU\Desktop\C++Study\AllProject_Collections\TestPro\cmake-build-debug\CMakeFiles\TestPro.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TestPro.dir/depend

