//
// Created by verne on 10/4/2022.
//

#include "Player.h"
#include "raymath.h"

Player::Player(int windowWidth, int windowHeight ): _windowHeight(windowHeight), _windowWidth(windowWidth) {
    _playerShip = LoadTexture("../assets/spriteSheets/SpaceInvaders_player.png");
    _playerShipPos = {
            static_cast<float>(windowWidth) / 2 * static_cast<float>(_scale) - static_cast<float>(_scale) * static_cast<float>(_playerShip.width)/2 ,
            static_cast<float>(windowHeight) * static_cast<float>(_scale) - static_cast<float>(_playerShip.height) * static_cast<float>(_playerHeightPosScale)
    };

}


void Player::Tick(float deltaTime) {

    Vector2 direction{};
    if(IsKeyDown(KEY_A) && _playerShipPos.x > 0) direction.x -= 1.0;
    if(IsKeyDown(KEY_D) && _playerShipPos.x  <  static_cast<float>(_windowWidth) * static_cast<float>(_scale) - static_cast<float>(_playerShip.width) * static_cast<float>(_scale)) direction.x += 1.0;
    if(Vector2Length(direction) != 0.0){
        _playerShipPos = Vector2Add(_playerShipPos, Vector2Scale(Vector2Normalize(direction), _speed * deltaTime));
    }


    Rectangle playerShipSrc{0.f, 0.f, (float)_playerShip.width, (float) _playerShip.height};
    Rectangle playerShpDest{_playerShipPos.x, _playerShipPos.y,  static_cast<float>(_scale) * (float)_playerShip.width,  static_cast<float>(_scale) * (float) _playerShip.height};

    DrawTexturePro(_playerShip, playerShipSrc, playerShpDest, Vector2{}, 0.f, WHITE);

}

void Player::Dispose() {
    UnloadTexture(_playerShip);
}

