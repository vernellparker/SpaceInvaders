//
// Created by verne on 12/7/2022.
//

#ifndef SPACEINVADERS_BUNKER_H
#define SPACEINVADERS_BUNKER_H


#include <iostream>
#include <raylib.h>
#include <vector>
#include <LDtkLoader/Project.hpp>

using namespace std;

class Bunker {
public:
    explicit Bunker(const ldtk::World& world);
    void Tick(float deltaTime);
    void Dispose();
private:
    Texture2D _bunker_left;
    Texture2D _bunker_right;
    int _scale {2};
    vector<Vector2> _leftBunkersPos{};
    vector<Vector2> _rightBunkersPos{};
};


#endif //SPACEINVADERS_BUNKER_H
