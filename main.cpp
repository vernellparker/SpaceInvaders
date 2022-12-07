#include <iostream>
#include <LDtkLoader/Project.hpp>
#include <raylib.h>
#include "Player.h"
#include "Bunker.h"
#include "Alien.h"

using namespace std;

const int scale = 2;
const int windowWidth = 288;
const int windowHeight = 448;

//Renderable layer names
const string renderableLayersNames[3]{
        "SpacebackGround",
        "BackgroundFloor",
        "Buildings",
};

//Sets up tiles to be rendered.
pair <vector<RenderTexture2D>, vector<Texture2D>> SetupTiles(const ldtk::World& world, Color tint){
    static vector<RenderTexture2D> renderers;
    static vector<Texture2D> textures;

    // get the level and the layer we want to render
    const auto& level = world.getLevel("Level_0");

    for (const auto& layerName : renderableLayersNames ){

        const auto& layer = level.getLayer(layerName);
        // get all the tiles in the Ground layer
        const auto& tiles_vector = layer.allTiles();


        // Load the texture and the renderer.
        Texture2D texture = LoadTexture(("../assets/SpaceInvaders/map/" + layer.getTileset().path).c_str());
        textures.emplace_back(texture);
        RenderTexture2D renderer = LoadRenderTexture(256* 3, 448*3);

        BeginTextureMode(renderer);

        for (const auto &tile : tiles_vector) {
            const auto& position = tile.getPosition();
            const auto& texture_rect = tile.getTextureRect();
            Vector2 dest = {
                    static_cast<float>(position.x),
                    static_cast<float>(position.y),
            };
            Rectangle src = {
                    static_cast<float>(texture_rect.x),
                    static_cast<float>(texture_rect.y),
                    static_cast<float>(texture_rect.width) * (tile.flipX ? -1.0f : 1.0f) ,
                    static_cast<float>(texture_rect.height) * (tile.flipY ? -1.0f : 1.0f )
            };
            DrawTextureRec(texture, src, dest, tint);
        }
        EndTextureMode();
        renderers.push_back(renderer);
    };

    return make_pair(renderers, textures);
};

//Draws all renders produced by the SetupTiles methods.
void DrawRenderers (const vector<RenderTexture2D>& renderers, int scale ){

    for (auto renderer : renderers ){
        Rectangle mapSrc = {
                0,
                0,
                static_cast<float>(renderer.texture.width),
                -static_cast<float>(renderer.texture.height)
        };
        Rectangle mapDest = {
                0,
                0,
                static_cast<float>(renderer.texture.width * scale),
                static_cast<float>(renderer.texture.height * scale)
        };


        DrawTexturePro(renderer.texture, mapSrc, mapDest, {0}, .0f, WHITE);
    }
};



int main() {
    // declare a LDtk World
    ldtk::Project ldtk_project;

    // load the LDtk World from file
    try {
        ldtk_project.loadFromFile("../assets/SpaceInvaders/map/SpaceInvaders.ldtk");
    }
    catch (std::exception& ex) {
        std::cerr << ex.what() << std::endl;
        return 1;
    }

    // get the world
    const auto& world = ldtk_project.getWorld();

    // Init Raylib and create a window.
    InitWindow(windowWidth * scale, windowHeight * scale, "Space Invaders");
    SetTargetFPS(60);

    auto setupTiles = SetupTiles(world,WHITE);

    Player player(windowWidth, windowHeight);
    Bunker bunker(world);

    //Todo: Check into this
    vector<Alien*> enemies;
    Texture enemy1 = LoadTexture("../assets/spriteSheets/invader_001.png");
    for(int i = 0; i <= 9; i++ ){
        auto alien = new Alien(enemy1, {static_cast<float>( (static_cast<float>(windowWidth) * scale /2) - (static_cast<float>(enemy1.width) * 5) + static_cast<float>(enemy1.width) * i),0});
        enemies.emplace_back(alien);
    }
    Texture enemy2 = LoadTexture("../assets/spriteSheets/invader_002.png");
    for(int i = 0; i <= 9; i++ ){
        auto alien = new Alien(enemy2, {static_cast<float>( (static_cast<float>(windowWidth) * scale /2) - (static_cast<float>(enemy2.width) * 5) + static_cast<float>(enemy2.width) * i),static_cast<float>(enemy1.height) + 10});
        enemies.emplace_back(alien);
    }
    Texture enemy3 = LoadTexture("../assets/spriteSheets/invader_003.png");
    for(int i = 0; i <= 9; i++ ){
        auto alien = new Alien(enemy3, {static_cast<float>( (static_cast<float>(windowWidth) * scale /2) - (static_cast<float>(enemy3.width) * 5) + static_cast<float>(enemy3.width) * i),static_cast<float>((enemy2.height + 10 )* 2)});
        enemies.emplace_back(alien);
    }
    Texture enemy4 = LoadTexture("../assets/spriteSheets/invader_004.png");
    for(int i = 0; i <= 9; i++ ){
        auto alien = new Alien(enemy4, {static_cast<float>( (static_cast<float>(windowWidth) * scale /2) - (static_cast<float>(enemy3.width) * 5) + static_cast<float>(enemy3.width) * i),static_cast<float>((enemy2.height  + 10) * 3)});
        enemies.emplace_back(alien);
    }
    Texture enemy5 = LoadTexture("../assets/spriteSheets/invader_005.png");
    for(int i = 0; i <= 9; i++ ){
        auto alien = new Alien(enemy5, {static_cast<float>( (static_cast<float>(windowWidth) * scale /2) - (static_cast<float>(enemy3.width) * 5) + static_cast<float>(enemy3.width) * i),static_cast<float>((enemy2.height + 10) * 4)});
        enemies.emplace_back(alien);
    }
    Texture enemy6 = LoadTexture("../assets/spriteSheets/invader_001.png");
    for(int i = 0; i <= 9; i++ ){
        auto alien = new Alien(enemy6, {static_cast<float>( (static_cast<float>(windowWidth) * scale /2) - (static_cast<float>(enemy1.width) * 5) + static_cast<float>(enemy1.width) * i),static_cast<float>((enemy2.height + 10) * 5)});
        enemies.emplace_back(alien);
    }



    while (!WindowShouldClose()) {
        float dt = GetFrameTime();
        BeginDrawing();
        ClearBackground(BLUE);

        DrawRenderers(setupTiles.first, scale);

        player.Tick(dt);
        bunker.Tick(dt);
        for (auto e : enemies){
            e->Tick(dt);
        }

        EndDrawing();
    }

    // Unload everything before leaving.


    for (auto renderTexture: setupTiles.first){
        UnloadRenderTexture(renderTexture);
    }

    for (auto tileTexture: setupTiles.second){
        UnloadTexture(tileTexture);
    }
    player.Dispose();
    bunker.Dispose();
    for (auto e : enemies){
        e->Dispose();
    }


    CloseWindow();
    return (0);
}