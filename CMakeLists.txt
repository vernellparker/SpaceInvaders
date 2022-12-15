cmake_minimum_required(VERSION 3.23)
project(SpaceInvaders)

set(CMAKE_CXX_STANDARD 17)

set(CPM_DOWNLOAD_VERSION 0.36.0)

if(CPM_SOURCE_CACHE)
    set(CPM_DOWNLOAD_LOCATION "${CPM_SOURCE_CACHE}/cpm/CPM_${CPM_DOWNLOAD_VERSION}.cmake")
elseif(DEFINED ENV{CPM_SOURCE_CACHE})
    set(CPM_DOWNLOAD_LOCATION "$ENV{CPM_SOURCE_CACHE}/cpm/CPM_${CPM_DOWNLOAD_VERSION}.cmake")
else()
    set(CPM_DOWNLOAD_LOCATION "${CMAKE_BINARY_DIR}/cmake/CPM_${CPM_DOWNLOAD_VERSION}.cmake")
endif()

if(NOT (EXISTS ${CPM_DOWNLOAD_LOCATION}))
    message(STATUS "Downloading CPM.cmake to ${CPM_DOWNLOAD_LOCATION}")
    file(DOWNLOAD
            https://github.com/TheLartians/CPM.cmake/releases/download/v${CPM_DOWNLOAD_VERSION}/CPM.cmake
            ${CPM_DOWNLOAD_LOCATION}
            )
endif()

include(${CPM_DOWNLOAD_LOCATION})


add_executable(SpaceInvaders main.cpp Player.cpp Player.h Bunker.cpp Bunker.h Alien.cpp Alien.h Laser.cpp Laser.h Laser.h BaseCharacter.cpp BaseCharacter.h BaseCharacter.h)
include(cmake/CPM.cmake)
CPMAddPackage("gh:raysan5/raylib#4.2.0")
CPMAddPackage("gh:Madour/LDtkLoader#1.0")

# link dependencies
target_link_libraries(SpaceInvaders raylib LDtkLoader)
