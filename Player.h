#ifndef SPACEINVADERS_PLAYER_H
#define SPACEINVADERS_PLAYER_H


#include "raylib.h"

class Player {
public:
    Player(int windowWidth, int windowHeight );
    void Tick(float deltaTime);
    void Dispose();
private:
    Texture2D _playerShip{};
    Vector2 _playerShipPos{};
    const int _scale = 2;
    float _speed{200};
    const int _playerHeightPosScale = 10;
    const int _windowWidth = 288;
    const int _windowHeight = 448;
};


#endif //SPACEINVADERS_PLAYER_H
