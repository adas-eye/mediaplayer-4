# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1

# Include any dependencies generated for this target.
include bindings/c/CMakeFiles/tag_c.dir/depend.make

# Include the progress variables for this target.
include bindings/c/CMakeFiles/tag_c.dir/progress.make

# Include the compile flags for this target's objects.
include bindings/c/CMakeFiles/tag_c.dir/flags.make

bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o: bindings/c/CMakeFiles/tag_c.dir/flags.make
bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o: bindings/c/tag_c.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o"
	cd /home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bindings/c && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/tag_c.dir/tag_c.cpp.o -c /home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bindings/c/tag_c.cpp

bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tag_c.dir/tag_c.cpp.i"
	cd /home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bindings/c && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bindings/c/tag_c.cpp > CMakeFiles/tag_c.dir/tag_c.cpp.i

bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tag_c.dir/tag_c.cpp.s"
	cd /home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bindings/c && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bindings/c/tag_c.cpp -o CMakeFiles/tag_c.dir/tag_c.cpp.s

bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o.requires:

.PHONY : bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o.requires

bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o.provides: bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o.requires
	$(MAKE) -f bindings/c/CMakeFiles/tag_c.dir/build.make bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o.provides.build
.PHONY : bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o.provides

bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o.provides.build: bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o


# Object files for target tag_c
tag_c_OBJECTS = \
"CMakeFiles/tag_c.dir/tag_c.cpp.o"

# External object files for target tag_c
tag_c_EXTERNAL_OBJECTS =

bindings/c/libtag_c.so.0.0.0: bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o
bindings/c/libtag_c.so.0.0.0: bindings/c/CMakeFiles/tag_c.dir/build.make
bindings/c/libtag_c.so.0.0.0: taglib/libtag.so.1.14.0
bindings/c/libtag_c.so.0.0.0: bindings/c/CMakeFiles/tag_c.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libtag_c.so"
	cd /home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bindings/c && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/tag_c.dir/link.txt --verbose=$(VERBOSE)
	cd /home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bindings/c && $(CMAKE_COMMAND) -E cmake_symlink_library libtag_c.so.0.0.0 libtag_c.so.0 libtag_c.so

bindings/c/libtag_c.so.0: bindings/c/libtag_c.so.0.0.0
	@$(CMAKE_COMMAND) -E touch_nocreate bindings/c/libtag_c.so.0

bindings/c/libtag_c.so: bindings/c/libtag_c.so.0.0.0
	@$(CMAKE_COMMAND) -E touch_nocreate bindings/c/libtag_c.so

# Rule to build all files generated by this target.
bindings/c/CMakeFiles/tag_c.dir/build: bindings/c/libtag_c.so

.PHONY : bindings/c/CMakeFiles/tag_c.dir/build

bindings/c/CMakeFiles/tag_c.dir/requires: bindings/c/CMakeFiles/tag_c.dir/tag_c.cpp.o.requires

.PHONY : bindings/c/CMakeFiles/tag_c.dir/requires

bindings/c/CMakeFiles/tag_c.dir/clean:
	cd /home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bindings/c && $(CMAKE_COMMAND) -P CMakeFiles/tag_c.dir/cmake_clean.cmake
.PHONY : bindings/c/CMakeFiles/tag_c.dir/clean

bindings/c/CMakeFiles/tag_c.dir/depend:
	cd /home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1 /home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bindings/c /home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1 /home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bindings/c /home/sakkep/Koulu/ELEC-A7150-C++Programming/Project/mediaplayer/media-player-2/libs/taglib-1.9.1/bindings/c/CMakeFiles/tag_c.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : bindings/c/CMakeFiles/tag_c.dir/depend
