# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/stud/src/hw_1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/stud/src/hw_1/build

# Include any dependencies generated for this target.
include CMakeFiles/hw1.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/hw1.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/hw1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/hw1.dir/flags.make

CMakeFiles/hw1.dir/main.cpp.o: CMakeFiles/hw1.dir/flags.make
CMakeFiles/hw1.dir/main.cpp.o: ../main.cpp
CMakeFiles/hw1.dir/main.cpp.o: CMakeFiles/hw1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stud/src/hw_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/hw1.dir/main.cpp.o"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/hw1.dir/main.cpp.o -MF CMakeFiles/hw1.dir/main.cpp.o.d -o CMakeFiles/hw1.dir/main.cpp.o -c /home/stud/src/hw_1/main.cpp

CMakeFiles/hw1.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hw1.dir/main.cpp.i"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stud/src/hw_1/main.cpp > CMakeFiles/hw1.dir/main.cpp.i

CMakeFiles/hw1.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hw1.dir/main.cpp.s"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stud/src/hw_1/main.cpp -o CMakeFiles/hw1.dir/main.cpp.s

CMakeFiles/hw1.dir/config/config.cpp.o: CMakeFiles/hw1.dir/flags.make
CMakeFiles/hw1.dir/config/config.cpp.o: ../config/config.cpp
CMakeFiles/hw1.dir/config/config.cpp.o: CMakeFiles/hw1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stud/src/hw_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/hw1.dir/config/config.cpp.o"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/hw1.dir/config/config.cpp.o -MF CMakeFiles/hw1.dir/config/config.cpp.o.d -o CMakeFiles/hw1.dir/config/config.cpp.o -c /home/stud/src/hw_1/config/config.cpp

CMakeFiles/hw1.dir/config/config.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hw1.dir/config/config.cpp.i"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stud/src/hw_1/config/config.cpp > CMakeFiles/hw1.dir/config/config.cpp.i

CMakeFiles/hw1.dir/config/config.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hw1.dir/config/config.cpp.s"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stud/src/hw_1/config/config.cpp -o CMakeFiles/hw1.dir/config/config.cpp.s

CMakeFiles/hw1.dir/database/cache.cpp.o: CMakeFiles/hw1.dir/flags.make
CMakeFiles/hw1.dir/database/cache.cpp.o: ../database/cache.cpp
CMakeFiles/hw1.dir/database/cache.cpp.o: CMakeFiles/hw1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stud/src/hw_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/hw1.dir/database/cache.cpp.o"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/hw1.dir/database/cache.cpp.o -MF CMakeFiles/hw1.dir/database/cache.cpp.o.d -o CMakeFiles/hw1.dir/database/cache.cpp.o -c /home/stud/src/hw_1/database/cache.cpp

CMakeFiles/hw1.dir/database/cache.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hw1.dir/database/cache.cpp.i"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stud/src/hw_1/database/cache.cpp > CMakeFiles/hw1.dir/database/cache.cpp.i

CMakeFiles/hw1.dir/database/cache.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hw1.dir/database/cache.cpp.s"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stud/src/hw_1/database/cache.cpp -o CMakeFiles/hw1.dir/database/cache.cpp.s

CMakeFiles/hw1.dir/database/database.cpp.o: CMakeFiles/hw1.dir/flags.make
CMakeFiles/hw1.dir/database/database.cpp.o: ../database/database.cpp
CMakeFiles/hw1.dir/database/database.cpp.o: CMakeFiles/hw1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stud/src/hw_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/hw1.dir/database/database.cpp.o"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/hw1.dir/database/database.cpp.o -MF CMakeFiles/hw1.dir/database/database.cpp.o.d -o CMakeFiles/hw1.dir/database/database.cpp.o -c /home/stud/src/hw_1/database/database.cpp

CMakeFiles/hw1.dir/database/database.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hw1.dir/database/database.cpp.i"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stud/src/hw_1/database/database.cpp > CMakeFiles/hw1.dir/database/database.cpp.i

CMakeFiles/hw1.dir/database/database.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hw1.dir/database/database.cpp.s"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stud/src/hw_1/database/database.cpp -o CMakeFiles/hw1.dir/database/database.cpp.s

CMakeFiles/hw1.dir/database/person.cpp.o: CMakeFiles/hw1.dir/flags.make
CMakeFiles/hw1.dir/database/person.cpp.o: ../database/person.cpp
CMakeFiles/hw1.dir/database/person.cpp.o: CMakeFiles/hw1.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/stud/src/hw_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/hw1.dir/database/person.cpp.o"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/hw1.dir/database/person.cpp.o -MF CMakeFiles/hw1.dir/database/person.cpp.o.d -o CMakeFiles/hw1.dir/database/person.cpp.o -c /home/stud/src/hw_1/database/person.cpp

CMakeFiles/hw1.dir/database/person.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hw1.dir/database/person.cpp.i"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/stud/src/hw_1/database/person.cpp > CMakeFiles/hw1.dir/database/person.cpp.i

CMakeFiles/hw1.dir/database/person.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hw1.dir/database/person.cpp.s"
	/usr/bin/x86_64-linux-gnu-g++-7 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/stud/src/hw_1/database/person.cpp -o CMakeFiles/hw1.dir/database/person.cpp.s

# Object files for target hw1
hw1_OBJECTS = \
"CMakeFiles/hw1.dir/main.cpp.o" \
"CMakeFiles/hw1.dir/config/config.cpp.o" \
"CMakeFiles/hw1.dir/database/cache.cpp.o" \
"CMakeFiles/hw1.dir/database/database.cpp.o" \
"CMakeFiles/hw1.dir/database/person.cpp.o"

# External object files for target hw1
hw1_EXTERNAL_OBJECTS =

hw1: CMakeFiles/hw1.dir/main.cpp.o
hw1: CMakeFiles/hw1.dir/config/config.cpp.o
hw1: CMakeFiles/hw1.dir/database/cache.cpp.o
hw1: CMakeFiles/hw1.dir/database/database.cpp.o
hw1: CMakeFiles/hw1.dir/database/person.cpp.o
hw1: CMakeFiles/hw1.dir/build.make
hw1: /usr/local/lib/libPocoNetSSL.so.80
hw1: /usr/lib/x86_64-linux-gnu/libz.so
hw1: /usr/local/lib/libPocoUtil.so.80
hw1: /usr/local/lib/libPocoXML.so.80
hw1: /usr/local/lib/libPocoJSON.so.80
hw1: /usr/local/lib/libPocoNet.so.80
hw1: /usr/local/lib/libPocoCrypto.so.80
hw1: /usr/local/lib/libPocoFoundation.so.80
hw1: /usr/lib/x86_64-linux-gnu/libssl.so
hw1: /usr/lib/x86_64-linux-gnu/libcrypto.so
hw1: CMakeFiles/hw1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/stud/src/hw_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable hw1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hw1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/hw1.dir/build: hw1
.PHONY : CMakeFiles/hw1.dir/build

CMakeFiles/hw1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hw1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hw1.dir/clean

CMakeFiles/hw1.dir/depend:
	cd /home/stud/src/hw_1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/stud/src/hw_1 /home/stud/src/hw_1 /home/stud/src/hw_1/build /home/stud/src/hw_1/build /home/stud/src/hw_1/build/CMakeFiles/hw1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hw1.dir/depend

