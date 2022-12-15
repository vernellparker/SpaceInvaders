//
// Created by verne on 12/12/2022.
//

#include "Laser.h"


Laser::Laser(Vector2 spawnPoint, bool isPlayer): _isPlayer(isPlayer) {
    _laser = LoadTexture("../assets/images/SpaceInvaders_2.png");
    _laserPos.y = spawnPoint.y - 2;
    _laserPos.x = spawnPoint.x - ((static_cast<float>(_laser.width)/2) - 10);
}


void Laser::Tick(float deltaTime) {

    if(_isActive){
        if(_isPlayer){
            _laserPos.y -= 1 + _speed *deltaTime;
        }else{
            _laserPos.y += 1 + _speed *deltaTime;
        }

        Rectangle laserSrc{0.f, 0.f, (float)_laser.width, (float) _laser.height};
        Rectangle laserDest{_laserPos.x, _laserPos.y, static_cast<float>(_scale) * (float)_laser.width, static_cast<float>(_scale) * (float) _laser.height};
        _laserRect = laserDest;
        DrawTexturePro(_laser, laserSrc, laserDest, Vector2{}, 0.f, WHITE);
    }

}

void Laser::Dispose(){
    UnloadTexture(_laser);
}

void Laser::SetIsActive(bool isActive) {
    _isActive = isActive;
}
