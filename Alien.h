//
// Created by verne on 12/7/2022.
//

#ifndef SPACEINVADERS_ALIEN_H
#define SPACEINVADERS_ALIEN_H

#include <raylib.h>

class Alien {
public:
    Alien(Texture alien, Vector2 pos);
    void Tick(float deltaTime);
    void Dispose();
    Vector2 GetAlienPosition(){return _alienPos;}
    void SetAlienPosition(float x, float y);
    void SetDirection(float direction);
    Rectangle GetCollisionRect(){return _collisionRect;}
    void BumpDown();
private:
    Texture2D _alien{};
    Vector2 _alienPos{};
    const int _scale = 2;
    int _frame {};
    float _updateTime{1.f /12.f};
    Rectangle _collisionRect{};
    float _speed{200};
    const int _alienHeightPosScale = 10;
    const int _maxFrames{2};
    const int _windowWidth = 288;
    const int _windowHeight = 448;
    float _runningTime{};
    float _movementFrameCount{};
    float _movementFrameCountMax{60};
    float _direction{10};
    bool _resetingDirection{};
};


#endif //SPACEINVADERS_ALIEN_H
