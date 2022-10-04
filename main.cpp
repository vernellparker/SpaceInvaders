#include <iostream>
#include <LDtkLoader/Project.hpp>
#include <raylib.h>
#include "raymath.h"
using namespace std;


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
        textures.push_back(texture);
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
    const int scale = 2;
    float speed{200};
    const int playerHeightPosScale = 10;
    const int windowWidth = 288;
    const int windowHeight = 448;

    // Init Raylib and create a window.
    InitWindow(windowWidth * scale, windowHeight * scale, "Space Invaders");
    SetTargetFPS(60);


    Texture2D bunker_left = LoadTexture("../assets/images/SpaceInvaders_10.png");
    Texture2D bunker_right = LoadTexture("../assets/images/SpaceInvaders_11.png");
    // get the level and the layer we want to render
    const auto& level = world.getLevel("Level_0");
    const auto& layer = level.getLayer("Props");
    const auto& leftBunkers =  layer.getEntitiesByName("Bunker_Left");
    const auto& rightBunkers =  layer.getEntitiesByName("Bunker_Right");
    vector<Vector2> leftBunkersPos{};
    vector<Vector2> rightBunkersPos{};

    for (auto i : leftBunkers){
        Vector2 pos = {
            static_cast<float>(i.get().getPosition().x) * scale,
            static_cast<float>(i.get().getPosition().y) * scale,
        };
        leftBunkersPos.emplace_back(pos);
    }

    for (auto i : rightBunkers){
        Vector2 pos = {
                static_cast<float>(i.get().getPosition().x) * scale,
                static_cast<float>(i.get().getPosition().y) * scale,
        };
        rightBunkersPos.emplace_back(pos);
    }

    Texture2D playerShip = LoadTexture("../assets/spriteSheets/SpaceInvaders_player.png");
    Vector2 playerShipPos = {
            static_cast<float>(windowWidth) / 2 * scale - scale * static_cast<float>(playerShip.width)/2 ,
            static_cast<float>(windowHeight) * scale - static_cast<float>(playerShip.height) * playerHeightPosScale
    };


    auto setupTiles = SetupTiles(world,WHITE);


    while (!WindowShouldClose()) {
        float dt = GetFrameTime();
        BeginDrawing();
        ClearBackground(BLUE);

        //Moves map instead of moving player_idle
        Vector2 direction{};
        if(IsKeyDown(KEY_A) && playerShipPos.x > 0) direction.x -= 1.0;
        if(IsKeyDown(KEY_D) && playerShipPos.x  <  static_cast<float>(windowWidth) * scale - static_cast<float>(playerShip.width) * scale) direction.x += 1.0;
        if(Vector2Length(direction) != 0.0){
            playerShipPos = Vector2Add(playerShipPos, Vector2Scale(Vector2Normalize(direction), speed * dt));
        }

        DrawRenderers(setupTiles.first, scale);

        for(auto i : leftBunkersPos){
            Rectangle src{0.f, 0.f, (float)bunker_left.width, (float) bunker_left.height};
            Rectangle dest{i.x, i.y,  scale * (float)bunker_left.width,  scale * (float) bunker_left.height};
            DrawTexturePro(bunker_left, src, dest, Vector2{}, 0.f, WHITE);
        }

        for(auto i : rightBunkersPos){
            Rectangle src{0.f, 0.f, (float)bunker_right.width, (float) bunker_right.height};
            Rectangle dest{i.x, i.y,  scale * (float)bunker_right.width,  scale * (float) bunker_right.height};
            DrawTexturePro(bunker_right, src, dest, Vector2{}, 0.f, WHITE);
        }



        Rectangle playerShipSrc{0.f, 0.f, (float)playerShip.width, (float) playerShip.height};
        Rectangle playerShpDest{playerShipPos.x, playerShipPos.y,  scale * (float)playerShip.width,  scale * (float) playerShip.height};

        DrawTexturePro(playerShip, playerShipSrc, playerShpDest, Vector2{}, 0.f, WHITE);
        EndDrawing();
    }

    // Unload everything before leaving.

    UnloadTexture(bunker_left);
    UnloadTexture(bunker_right);

    for (auto renderTexture: setupTiles.first){
        UnloadRenderTexture(renderTexture);
    }

    for (auto tileTexture: setupTiles.second){
        UnloadTexture(tileTexture);
    }
    CloseWindow();
    return (0);
}