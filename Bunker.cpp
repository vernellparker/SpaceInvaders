//
// Created by verne on 12/7/2022.
//

#include "Bunker.h"
#include <LDtkLoader/Project.hpp>

Bunker::Bunker(const ldtk::World& world):_bunker_left(LoadTexture("../assets/images/SpaceInvaders_10.png")), _bunker_right(LoadTexture("../assets/images/SpaceInvaders_11.png")) {
    // get the level and the layer we want to render
    const auto& level = world.getLevel("Level_0");
    const auto& layer = level.getLayer("Props");
    const auto& leftBunkers =  layer.getEntitiesByName("Bunker_Left");
    const auto& rightBunkers =  layer.getEntitiesByName("Bunker_Right");


    for (auto i : leftBunkers){
        Vector2 pos = {
                static_cast<float>(i.get().getPosition().x) * static_cast<float>(_scale),
                static_cast<float>(i.get().getPosition().y) * static_cast<float>(_scale),
        };
        _leftBunkersPos.emplace_back(pos);
    }

    for (auto i : rightBunkers){
        Vector2 pos = {
                static_cast<float>(i.get().getPosition().x) * static_cast<float>(_scale),
                static_cast<float>(i.get().getPosition().y) * static_cast<float>(_scale),
        };
        _rightBunkersPos.emplace_back(pos);
    }
}

void Bunker::Tick(float deltaTime) {
    for(auto i : _leftBunkersPos){
        Rectangle src{0.f, 0.f, (float)_bunker_left.width, (float) _bunker_left.height};
        Rectangle dest{i.x, i.y,  static_cast<float>(_scale) * (float)_bunker_left.width,  static_cast<float>(_scale) * (float) _bunker_left.height};
        DrawTexturePro(_bunker_left, src, dest, Vector2{}, 0.f, WHITE);
    }

    for(auto i : _rightBunkersPos){
        Rectangle src{0.f, 0.f, (float)_bunker_right.width, (float) _bunker_right.height};
        Rectangle dest{i.x, i.y,  static_cast<float>(_scale) * (float)_bunker_right.width,  static_cast<float>(_scale) * (float) _bunker_right.height};
        DrawTexturePro(_bunker_right, src, dest, Vector2{}, 0.f, WHITE);
    }

}

void Bunker::Dispose() {
    UnloadTexture(_bunker_left);
    UnloadTexture(_bunker_right);
}
