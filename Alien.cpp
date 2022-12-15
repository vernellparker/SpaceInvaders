//
// Created by verne on 12/7/2022.
//

#include "Alien.h"

Alien::Alien(Texture2D texture2D, Vector2 texture2DPos, Texture alien, Vector2 pos): _texture2D(alien),_alienPos(pos) {

}

void Alien::Tick(float deltaTime) {

        _movementFrameCount++;
        if (_movementFrameCount >= _movementFrameCountMax ){
            if(_resettingDirection){
                _alienPos.y += _texture2D.width;
                _resettingDirection = false;
            }
            _alienPos.x += _direction;


            _movementFrameCount = 0;

        }
        _runningTime += deltaTime;

        if (_runningTime >= _updateTime) {
            _frame++;
            _runningTime = 0.f;
            if (_frame > _maxFrames) {
                _frame = 0;
            }
        }
        if(_isAlive){
    // draw the character
        Rectangle source{static_cast<float>(_frame ) * static_cast<float>(_texture2D.width) / 2, 0.f, static_cast<float>(_texture2D.width) / 2, static_cast<float>(_texture2D.height)};
        Rectangle dest{_alienPos.x, _alienPos.y, static_cast<float>(_texture2D.width), static_cast<float>(_scale * _texture2D.height)};
        _collisionRect = dest;
        DrawTexturePro(_texture2D, source, dest, Vector2{}, 0.f, WHITE);
    }


}

void Alien::Dispose() {
    UnloadTexture(_texture2D);
}

void Alien::SetAlienPosition(float x, float y) {
     _alienPos.x = x;
     _alienPos.y = y;
}

void Alien::SetDirection(float direction) {
    _direction = direction;
}

void Alien::BumpDown() {
    _resettingDirection = true;
}

void Alien::SetIsAlive(bool isAlive) {
    _isAlive = isAlive;
}

void Alien::SetSpeedByMovementFrameCount(float amount) {
    _movementFrameCountMax = amount;
}
