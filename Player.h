#ifndef SPACEINVADERS_PLAYER_H
#define SPACEINVADERS_PLAYER_H


#include "raylib.h"
#include "BaseCharacter.h"

class Player: public BaseCharacter {
public:
    Player(int windowWidth, int windowHeight);
    Vector2 GetPlayerPos(){return _texture2DPos;}
    void Tick(float deltaTime) override;
    void Dispose() override;
private:
    Texture2D _texture2D{};
    Vector2 _texture2DPos{};
    const int _scale = 2;
    float _speed{200};
    const int _textureHeightPosScale = 10;
    const int _windowWidth = 288;
    const int _windowHeight = 448;
};


#endif //SPACEINVADERS_PLAYER_H
