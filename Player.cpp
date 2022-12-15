//
// Created by verne on 10/4/2022.
//

#include "Player.h"
#include "raymath.h"

Player::Player(int windowWidth, int windowHeight) {
    _texture2D = LoadTexture("../assets/spriteSheets/SpaceInvaders_player.png");
    _texture2DPos = {
            static_cast<float>(windowWidth) / 2 * static_cast<float>(_scale) - static_cast<float>(_scale) * static_cast<float>(_texture2D.width) / 2 ,
            static_cast<float>(windowHeight) * static_cast<float>(_scale) - static_cast<float>(_texture2D.height) * static_cast<float>(_textureHeightPosScale)
    };

}


void Player::Tick(float deltaTime) {
    Vector2 direction{};
    if(IsKeyDown(KEY_A) && _texture2DPos.x > 0) direction.x -= 1.0;
    if(IsKeyDown(KEY_D) && _texture2DPos.x < static_cast<float>(_windowWidth) * static_cast<float>(_scale) - static_cast<float>(_texture2D.width) * static_cast<float>(_scale)) direction.x += 1.0;
    if(Vector2Length(direction) != 0.0){
        _texture2DPos = Vector2Add(_texture2DPos, Vector2Scale(Vector2Normalize(direction), _speed * deltaTime));
    }

    Rectangle playerShipSrc{0.f, 0.f, (float)_texture2D.width, (float) _texture2D.height};
    Rectangle playerShpDest{_texture2DPos.x, _texture2DPos.y, static_cast<float>(_scale) * (float)_texture2D.width, static_cast<float>(_scale) * (float) _texture2D.height};
    _collisionRect = playerShpDest;
    DrawTexturePro(_texture2D, playerShipSrc, playerShpDest, Vector2{}, 0.f, WHITE);
}

void Player::Dispose() {
    UnloadTexture(_texture2D);
}

void Player::SubtractPlayerLife() {
    _playerLives--;
}

