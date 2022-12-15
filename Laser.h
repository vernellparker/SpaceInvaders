//
// Created by verne on 12/12/2022.
//

#ifndef SPACEINVADERS_LASER_H
#define SPACEINVADERS_LASER_H


#include "raylib.h"
#include "BaseCharacter.h"

class Laser {
public:
    Laser(Vector2 spawnPoint, bool isPlayer);
    void Tick(float deltaTime);
    Rectangle GetCollisionRect(){return _laserRect;}
    Vector2 GetLaserPosition() {return _laserPos;};
    void SetIsActive(bool isActive);
    void Dispose();
private:
    Texture2D _laser{};
    Vector2 _laserPos{};
    Rectangle _laserRect{};
    const int _scale {2};
    const int _windowWidth = 288;
    const int _windowHeight = 448;
    float _speed{200};
    bool _isActive{true};
    bool _isPlayer{};
};


#endif //SPACEINVADERS_LASER_H
