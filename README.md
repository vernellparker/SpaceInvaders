# SpaceInvaders

This is a basic implementation of the classic arcade game Space Invaders using Raylib.

# How to run the project
This project is self-contained and should automatically download any 
dependencies that it needs to run (i.e. Raylib and LDTK) 

The following commands should run the project:
   
    mkdir build 
    cd build
    cmake ..
    cmake --build .
    cd Debug
    ./SpaceInvaders


NOTE: The cmake command may take a while on the download raylib step.

KNOWN BUG: Happens sometimes when multiple lasers hit a single enemy target that cause the coliding lasers to not count.


# Rubric Points
    README
    Compiling and Testing
    Loops, Functions, I/O  
    -The project demonstrates an understanding of C++ functions and control structures.
    -The project accepts user input and processes the input.
    Object Oriented Programming
    -The project uses Object Oriented Programming techniques.
    -Classes use appropriate access specifiers for class members.
    Memory Management
    -The project makes use of references in function declarations.