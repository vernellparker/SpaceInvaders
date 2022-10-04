cmake_minimum_required(VERSION 3.23)
project(SpaceInvaders)

set(CMAKE_CXX_STANDARD 17)

add_executable(SpaceInvaders main.cpp)
include(cmake/CPM.cmake)
CPMAddPackage("gh:raysan5/raylib#4.2.0")
CPMAddPackage("gh:Madour/LDtkLoader#1.0")

# link dependencies
target_link_libraries(SpaceInvaders raylib LDtkLoader)
