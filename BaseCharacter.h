//
// Created by verne on 12/12/2022.
//

#ifndef SPACEINVADERS_BASECHARACTER_H
#define SPACEINVADERS_BASECHARACTER_H


#include "raylib.h"

class BaseCharacter {
public:
    BaseCharacter();
    virtual void Tick(float deltaTime);
    virtual void Dispose();
private:
    Texture2D _texture2D{};
    Vector2 _texture2DPos{};
    const int _scale = 2;
    float _speed{200};
    const int _textureHeightPosScale = 10;
    const int _windowWidth = 288;
    const int _windowHeight = 448;

};


#endif //SPACEINVADERS_BASECHARACTER_H
