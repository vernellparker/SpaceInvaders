//
// Created by verne on 12/7/2022.
//

#include "Alien.h"

Alien::Alien(Texture alien, Vector2 pos):_alien(alien), _alienPos(pos) {}

void Alien::Tick(float deltaTime) {
    _movementFrameCount++;
    if (_movementFrameCount >= _movementFrameCountMax ){
        if(_resetingDirection){
            _alienPos.y += _alien.width;
            _resetingDirection = false;
        }else{

        }
        _alienPos.x += _direction;
        _movementFrameCount = 0;

    }
    _runningTime += deltaTime;

    if (_runningTime >= _updateTime)
    {
        _frame++ ;
        _runningTime = 0.f;
        if (_frame > _maxFrames){
            _frame = 0;
        }
    }



    // draw the character
    Rectangle source{static_cast<float>(_frame ) * static_cast<float>(_alien.width)/2, 0.f,  static_cast<float>(_alien.width)/2, static_cast<float>(_alien.height)};
    Rectangle dest{_alienPos.x, _alienPos.y, static_cast<float>(_alien.width), static_cast<float>(_scale * _alien.height)};
    _collisionRect = dest;
    DrawTexturePro(_alien, source, dest, Vector2{}, 0.f, WHITE);

}

void Alien::Dispose() {
    UnloadTexture(_alien);
}

void Alien::SetAlienPosition(float x, float y) {
     _alienPos.x = x;
     _alienPos.y = y;
}

void Alien::SetDirection(float direction) {
    _direction = direction;
}

void Alien::BumpDown() {
    _resetingDirection = true;
}
