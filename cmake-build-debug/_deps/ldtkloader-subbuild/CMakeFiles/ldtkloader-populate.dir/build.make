﻿# CMAKE generated file: DO NOT EDIT!
# Generated by "NMake Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

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

!IF "$(OS)" == "Windows_NT"
NULL=
!ELSE
NULL=nul
!ENDIF
SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-subbuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-subbuild

# Utility rule file for ldtkloader-populate.

# Include any custom commands dependencies for this target.
include CMakeFiles\ldtkloader-populate.dir\compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles\ldtkloader-populate.dir\progress.make

CMakeFiles\ldtkloader-populate: CMakeFiles\ldtkloader-populate-complete

CMakeFiles\ldtkloader-populate-complete: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-install
CMakeFiles\ldtkloader-populate-complete: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-mkdir
CMakeFiles\ldtkloader-populate-complete: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-download
CMakeFiles\ldtkloader-populate-complete: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-update
CMakeFiles\ldtkloader-populate-complete: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-patch
CMakeFiles\ldtkloader-populate-complete: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-configure
CMakeFiles\ldtkloader-populate-complete: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-build
CMakeFiles\ldtkloader-populate-complete: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-install
CMakeFiles\ldtkloader-populate-complete: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-subbuild\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'ldtkloader-populate'"
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E make_directory D:/workspace/C++/SpaceInvaders/cmake-build-debug/_deps/ldtkloader-subbuild/CMakeFiles
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E touch D:/workspace/C++/SpaceInvaders/cmake-build-debug/_deps/ldtkloader-subbuild/CMakeFiles/ldtkloader-populate-complete
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E touch D:/workspace/C++/SpaceInvaders/cmake-build-debug/_deps/ldtkloader-subbuild/ldtkloader-populate-prefix/src/ldtkloader-populate-stamp/ldtkloader-populate-done

ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-update:
.PHONY : ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-update

ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-build: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-subbuild\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No build step for 'ldtkloader-populate'"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-build
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E echo_append
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E touch D:/workspace/C++/SpaceInvaders/cmake-build-debug/_deps/ldtkloader-subbuild/ldtkloader-populate-prefix/src/ldtkloader-populate-stamp/ldtkloader-populate-build
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-subbuild

ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-configure: ldtkloader-populate-prefix\tmp\ldtkloader-populate-cfgcmd.txt
ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-configure: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-subbuild\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "No configure step for 'ldtkloader-populate'"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-build
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E echo_append
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E touch D:/workspace/C++/SpaceInvaders/cmake-build-debug/_deps/ldtkloader-subbuild/ldtkloader-populate-prefix/src/ldtkloader-populate-stamp/ldtkloader-populate-configure
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-subbuild

ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-download: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-gitinfo.txt
ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-download: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-subbuild\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'ldtkloader-populate'"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -P D:/workspace/C++/SpaceInvaders/cmake-build-debug/_deps/ldtkloader-subbuild/ldtkloader-populate-prefix/tmp/ldtkloader-populate-gitclone.cmake
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E touch D:/workspace/C++/SpaceInvaders/cmake-build-debug/_deps/ldtkloader-subbuild/ldtkloader-populate-prefix/src/ldtkloader-populate-stamp/ldtkloader-populate-download
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-subbuild

ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-install: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-subbuild\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'ldtkloader-populate'"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-build
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E echo_append
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E touch D:/workspace/C++/SpaceInvaders/cmake-build-debug/_deps/ldtkloader-subbuild/ldtkloader-populate-prefix/src/ldtkloader-populate-stamp/ldtkloader-populate-install
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-subbuild

ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-subbuild\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'ldtkloader-populate'"
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -Dcfgdir= -P D:/workspace/C++/SpaceInvaders/cmake-build-debug/_deps/ldtkloader-subbuild/ldtkloader-populate-prefix/tmp/ldtkloader-populate-mkdirs.cmake
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E touch D:/workspace/C++/SpaceInvaders/cmake-build-debug/_deps/ldtkloader-subbuild/ldtkloader-populate-prefix/src/ldtkloader-populate-stamp/ldtkloader-populate-mkdir

ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-patch: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-subbuild\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'ldtkloader-populate'"
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E echo_append
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E touch D:/workspace/C++/SpaceInvaders/cmake-build-debug/_deps/ldtkloader-subbuild/ldtkloader-populate-prefix/src/ldtkloader-populate-stamp/ldtkloader-populate-patch

ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-update:
.PHONY : ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-update

ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-test: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-subbuild\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No test step for 'ldtkloader-populate'"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-build
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E echo_append
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -E touch D:/workspace/C++/SpaceInvaders/cmake-build-debug/_deps/ldtkloader-subbuild/ldtkloader-populate-prefix/src/ldtkloader-populate-stamp/ldtkloader-populate-test
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-subbuild

ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-update: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-subbuild\CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Performing update step for 'ldtkloader-populate'"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-src
	echo >nul && "C:\Program Files\JetBrains\CLion 2021.2\bin\cmake\win\bin\cmake.exe" -P D:/workspace/C++/SpaceInvaders/cmake-build-debug/_deps/ldtkloader-subbuild/ldtkloader-populate-prefix/tmp/ldtkloader-populate-gitupdate.cmake
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-subbuild

ldtkloader-populate: CMakeFiles\ldtkloader-populate
ldtkloader-populate: CMakeFiles\ldtkloader-populate-complete
ldtkloader-populate: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-build
ldtkloader-populate: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-configure
ldtkloader-populate: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-download
ldtkloader-populate: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-install
ldtkloader-populate: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-mkdir
ldtkloader-populate: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-patch
ldtkloader-populate: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-test
ldtkloader-populate: ldtkloader-populate-prefix\src\ldtkloader-populate-stamp\ldtkloader-populate-update
ldtkloader-populate: CMakeFiles\ldtkloader-populate.dir\build.make
.PHONY : ldtkloader-populate

# Rule to build all files generated by this target.
CMakeFiles\ldtkloader-populate.dir\build: ldtkloader-populate
.PHONY : CMakeFiles\ldtkloader-populate.dir\build

CMakeFiles\ldtkloader-populate.dir\clean:
	$(CMAKE_COMMAND) -P CMakeFiles\ldtkloader-populate.dir\cmake_clean.cmake
.PHONY : CMakeFiles\ldtkloader-populate.dir\clean

CMakeFiles\ldtkloader-populate.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-subbuild D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-subbuild D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-subbuild D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-subbuild D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\ldtkloader-subbuild\CMakeFiles\ldtkloader-populate.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles\ldtkloader-populate.dir\depend

