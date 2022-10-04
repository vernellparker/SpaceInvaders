# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "D:/workspace/Raylib/SpaceInvaders/cmake-build-debug/_deps/ldtkloader-src"
  "D:/workspace/Raylib/SpaceInvaders/cmake-build-debug/_deps/ldtkloader-build"
  "D:/workspace/Raylib/SpaceInvaders/cmake-build-debug/_deps/ldtkloader-subbuild/ldtkloader-populate-prefix"
  "D:/workspace/Raylib/SpaceInvaders/cmake-build-debug/_deps/ldtkloader-subbuild/ldtkloader-populate-prefix/tmp"
  "D:/workspace/Raylib/SpaceInvaders/cmake-build-debug/_deps/ldtkloader-subbuild/ldtkloader-populate-prefix/src/ldtkloader-populate-stamp"
  "D:/workspace/Raylib/SpaceInvaders/cmake-build-debug/_deps/ldtkloader-subbuild/ldtkloader-populate-prefix/src"
  "D:/workspace/Raylib/SpaceInvaders/cmake-build-debug/_deps/ldtkloader-subbuild/ldtkloader-populate-prefix/src/ldtkloader-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "D:/workspace/Raylib/SpaceInvaders/cmake-build-debug/_deps/ldtkloader-subbuild/ldtkloader-populate-prefix/src/ldtkloader-populate-stamp/${subDir}")
endforeach()
