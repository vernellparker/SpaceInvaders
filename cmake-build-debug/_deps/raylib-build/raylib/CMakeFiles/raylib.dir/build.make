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
CMAKE_SOURCE_DIR = D:\workspace\C++\SpaceInvaders

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\workspace\C++\SpaceInvaders\cmake-build-debug

# Include any dependencies generated for this target.
include _deps\raylib-build\raylib\CMakeFiles\raylib.dir\depend.make
# Include any dependencies generated by the compiler for this target.
include _deps\raylib-build\raylib\CMakeFiles\raylib.dir\compiler_depend.make

# Include the progress variables for this target.
include _deps\raylib-build\raylib\CMakeFiles\raylib.dir\progress.make

# Include the compile flags for this target's objects.
include _deps\raylib-build\raylib\CMakeFiles\raylib.dir\flags.make

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rcore.c.obj: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\flags.make
_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rcore.c.obj: _deps\raylib-src\src\rcore.c
_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rcore.c.obj: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object _deps/raylib-build/raylib/CMakeFiles/raylib.dir/rcore.c.obj"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\raylib.dir\rcore.c.obj.d --working-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib --filter-prefix="Note: including file: " -- C:\PROGRA~1\MIB055~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\raylib.dir\rcore.c.obj /FdCMakeFiles\raylib.dir\raylib.pdb /FS -c D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-src\src\rcore.c
<<
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rcore.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/raylib.dir/rcore.c.i"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	C:\PROGRA~1\MIB055~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe > CMakeFiles\raylib.dir\rcore.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-src\src\rcore.c
<<
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rcore.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/raylib.dir/rcore.c.s"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	C:\PROGRA~1\MIB055~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\raylib.dir\rcore.c.s /c D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-src\src\rcore.c
<<
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rmodels.c.obj: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\flags.make
_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rmodels.c.obj: _deps\raylib-src\src\rmodels.c
_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rmodels.c.obj: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object _deps/raylib-build/raylib/CMakeFiles/raylib.dir/rmodels.c.obj"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\raylib.dir\rmodels.c.obj.d --working-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib --filter-prefix="Note: including file: " -- C:\PROGRA~1\MIB055~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\raylib.dir\rmodels.c.obj /FdCMakeFiles\raylib.dir\raylib.pdb /FS -c D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-src\src\rmodels.c
<<
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rmodels.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/raylib.dir/rmodels.c.i"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	C:\PROGRA~1\MIB055~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe > CMakeFiles\raylib.dir\rmodels.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-src\src\rmodels.c
<<
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rmodels.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/raylib.dir/rmodels.c.s"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	C:\PROGRA~1\MIB055~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\raylib.dir\rmodels.c.s /c D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-src\src\rmodels.c
<<
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rshapes.c.obj: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\flags.make
_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rshapes.c.obj: _deps\raylib-src\src\rshapes.c
_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rshapes.c.obj: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object _deps/raylib-build/raylib/CMakeFiles/raylib.dir/rshapes.c.obj"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\raylib.dir\rshapes.c.obj.d --working-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib --filter-prefix="Note: including file: " -- C:\PROGRA~1\MIB055~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\raylib.dir\rshapes.c.obj /FdCMakeFiles\raylib.dir\raylib.pdb /FS -c D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-src\src\rshapes.c
<<
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rshapes.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/raylib.dir/rshapes.c.i"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	C:\PROGRA~1\MIB055~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe > CMakeFiles\raylib.dir\rshapes.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-src\src\rshapes.c
<<
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rshapes.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/raylib.dir/rshapes.c.s"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	C:\PROGRA~1\MIB055~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\raylib.dir\rshapes.c.s /c D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-src\src\rshapes.c
<<
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rtext.c.obj: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\flags.make
_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rtext.c.obj: _deps\raylib-src\src\rtext.c
_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rtext.c.obj: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object _deps/raylib-build/raylib/CMakeFiles/raylib.dir/rtext.c.obj"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\raylib.dir\rtext.c.obj.d --working-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib --filter-prefix="Note: including file: " -- C:\PROGRA~1\MIB055~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\raylib.dir\rtext.c.obj /FdCMakeFiles\raylib.dir\raylib.pdb /FS -c D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-src\src\rtext.c
<<
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rtext.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/raylib.dir/rtext.c.i"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	C:\PROGRA~1\MIB055~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe > CMakeFiles\raylib.dir\rtext.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-src\src\rtext.c
<<
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rtext.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/raylib.dir/rtext.c.s"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	C:\PROGRA~1\MIB055~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\raylib.dir\rtext.c.s /c D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-src\src\rtext.c
<<
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rtextures.c.obj: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\flags.make
_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rtextures.c.obj: _deps\raylib-src\src\rtextures.c
_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rtextures.c.obj: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building C object _deps/raylib-build/raylib/CMakeFiles/raylib.dir/rtextures.c.obj"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\raylib.dir\rtextures.c.obj.d --working-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib --filter-prefix="Note: including file: " -- C:\PROGRA~1\MIB055~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\raylib.dir\rtextures.c.obj /FdCMakeFiles\raylib.dir\raylib.pdb /FS -c D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-src\src\rtextures.c
<<
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rtextures.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/raylib.dir/rtextures.c.i"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	C:\PROGRA~1\MIB055~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe > CMakeFiles\raylib.dir\rtextures.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-src\src\rtextures.c
<<
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\rtextures.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/raylib.dir/rtextures.c.s"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	C:\PROGRA~1\MIB055~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\raylib.dir\rtextures.c.s /c D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-src\src\rtextures.c
<<
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\utils.c.obj: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\flags.make
_deps\raylib-build\raylib\CMakeFiles\raylib.dir\utils.c.obj: _deps\raylib-src\src\utils.c
_deps\raylib-build\raylib\CMakeFiles\raylib.dir\utils.c.obj: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building C object _deps/raylib-build/raylib/CMakeFiles/raylib.dir/utils.c.obj"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\raylib.dir\utils.c.obj.d --working-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib --filter-prefix="Note: including file: " -- C:\PROGRA~1\MIB055~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\raylib.dir\utils.c.obj /FdCMakeFiles\raylib.dir\raylib.pdb /FS -c D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-src\src\utils.c
<<
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\utils.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/raylib.dir/utils.c.i"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	C:\PROGRA~1\MIB055~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe > CMakeFiles\raylib.dir\utils.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-src\src\utils.c
<<
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\utils.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/raylib.dir/utils.c.s"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	C:\PROGRA~1\MIB055~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\raylib.dir\utils.c.s /c D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-src\src\utils.c
<<
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\raudio.c.obj: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\flags.make
_deps\raylib-build\raylib\CMakeFiles\raylib.dir\raudio.c.obj: _deps\raylib-src\src\raudio.c
_deps\raylib-build\raylib\CMakeFiles\raylib.dir\raudio.c.obj: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building C object _deps/raylib-build/raylib/CMakeFiles/raylib.dir/raudio.c.obj"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	$(CMAKE_COMMAND) -E cmake_cl_compile_depends --dep-file=CMakeFiles\raylib.dir\raudio.c.obj.d --working-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib --filter-prefix="Note: including file: " -- C:\PROGRA~1\MIB055~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /showIncludes /FoCMakeFiles\raylib.dir\raudio.c.obj /FdCMakeFiles\raylib.dir\raylib.pdb /FS -c D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-src\src\raudio.c
<<
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\raudio.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/raylib.dir/raudio.c.i"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	C:\PROGRA~1\MIB055~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe > CMakeFiles\raylib.dir\raudio.c.i @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-src\src\raudio.c
<<
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\raudio.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/raylib.dir/raudio.c.s"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	C:\PROGRA~1\MIB055~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\cl.exe @<<
 /nologo $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) /FoNUL /FAs /FaCMakeFiles\raylib.dir\raudio.c.s /c D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-src\src\raudio.c
<<
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug

# Object files for target raylib
raylib_OBJECTS = \
"CMakeFiles\raylib.dir\rcore.c.obj" \
"CMakeFiles\raylib.dir\rmodels.c.obj" \
"CMakeFiles\raylib.dir\rshapes.c.obj" \
"CMakeFiles\raylib.dir\rtext.c.obj" \
"CMakeFiles\raylib.dir\rtextures.c.obj" \
"CMakeFiles\raylib.dir\utils.c.obj" \
"CMakeFiles\raylib.dir\raudio.c.obj"

# External object files for target raylib
raylib_EXTERNAL_OBJECTS = \
"D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\context.c.obj" \
"D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\init.c.obj" \
"D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\input.c.obj" \
"D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\monitor.c.obj" \
"D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\vulkan.c.obj" \
"D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\window.c.obj" \
"D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\win32_init.c.obj" \
"D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\win32_joystick.c.obj" \
"D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\win32_monitor.c.obj" \
"D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\win32_time.c.obj" \
"D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\win32_thread.c.obj" \
"D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\win32_window.c.obj" \
"D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\wgl_context.c.obj" \
"D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\egl_context.c.obj" \
"D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\osmesa_context.c.obj"

_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\rcore.c.obj
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\rmodels.c.obj
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\rshapes.c.obj
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\rtext.c.obj
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\rtextures.c.obj
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\utils.c.obj
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\raudio.c.obj
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\context.c.obj
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\init.c.obj
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\input.c.obj
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\monitor.c.obj
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\vulkan.c.obj
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\window.c.obj
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\win32_init.c.obj
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\win32_joystick.c.obj
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\win32_monitor.c.obj
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\win32_time.c.obj
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\win32_thread.c.obj
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\win32_window.c.obj
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\wgl_context.c.obj
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\egl_context.c.obj
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\external\glfw\src\CMakeFiles\glfw.dir\osmesa_context.c.obj
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\build.make
_deps\raylib-build\raylib\raylib.lib: _deps\raylib-build\raylib\CMakeFiles\raylib.dir\objects1.rsp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\workspace\C++\SpaceInvaders\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking C static library raylib.lib"
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	$(CMAKE_COMMAND) -P CMakeFiles\raylib.dir\cmake_clean_target.cmake
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	C:\PROGRA~1\MIB055~1\2022\COMMUN~1\VC\Tools\MSVC\1433~1.316\bin\Hostx86\x86\lib.exe /nologo /machine:X86 /out:raylib.lib @CMakeFiles\raylib.dir\objects1.rsp 
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug

# Rule to build all files generated by this target.
_deps\raylib-build\raylib\CMakeFiles\raylib.dir\build: _deps\raylib-build\raylib\raylib.lib
.PHONY : _deps\raylib-build\raylib\CMakeFiles\raylib.dir\build

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\clean:
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib
	$(CMAKE_COMMAND) -P CMakeFiles\raylib.dir\cmake_clean.cmake
	cd D:\workspace\C++\SpaceInvaders\cmake-build-debug
.PHONY : _deps\raylib-build\raylib\CMakeFiles\raylib.dir\clean

_deps\raylib-build\raylib\CMakeFiles\raylib.dir\depend:
	$(CMAKE_COMMAND) -E cmake_depends "NMake Makefiles" D:\workspace\C++\SpaceInvaders D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-src\src D:\workspace\C++\SpaceInvaders\cmake-build-debug D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib D:\workspace\C++\SpaceInvaders\cmake-build-debug\_deps\raylib-build\raylib\CMakeFiles\raylib.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : _deps\raylib-build\raylib\CMakeFiles\raylib.dir\depend

