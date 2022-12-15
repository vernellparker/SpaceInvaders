#include <iostream>
#include <LDtkLoader/Project.hpp>
#include <raylib.h>
#include "Player.h"
#include "Alien.h"
#include "Laser.h"
#include "map"

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
        Texture2D texture = LoadTexture(("../../assets/SpaceInvaders/map/" + layer.getTileset().path).c_str());
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
    }
    return make_pair(renderers, textures);
}

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
        ldtk_project.loadFromFile("../../assets/SpaceInvaders/map/SpaceInvaders.ldtk");
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

    Player player( windowWidth, windowHeight);

    //Todo: Check into this
    vector<Alien*> enemies;
    Texture enemy1 = LoadTexture("../../assets/spriteSheets/invader_001.png");
    for(int i = 0; i <= 9; i++ ){
        auto alien = new Alien(Texture2D(), Vector2(), enemy1,
                               {static_cast<float>((static_cast<float>(windowWidth) * scale / 2) -
                                                   (static_cast<float>(enemy1.width) * 5) +
                                                   static_cast<float>(enemy1.width) * i),
                                static_cast<float>(windowHeight) / 2});
        enemies.emplace_back(alien);
    }
    Texture enemy2 = LoadTexture("../../assets/spriteSheets/invader_002.png");
    for(int i = 0; i <= 9; i++ ){
        auto alien = new Alien(Texture2D(), Vector2(), enemy2,
                               {static_cast<float>((static_cast<float>(windowWidth) * scale / 2) -
                                                   (static_cast<float>(enemy2.width) * 5) +
                                                   static_cast<float>(enemy2.width) * i),
                                static_cast<float>(enemy1.height) + (static_cast<float>(windowHeight) / 2) + 5});
        enemies.emplace_back(alien);
    }
    Texture enemy3 = LoadTexture("../../assets/spriteSheets/invader_003.png");
    for(int i = 0; i <= 9; i++ ){
        auto alien = new Alien(Texture2D(), Vector2(), enemy3,
                               {static_cast<float>((static_cast<float>(windowWidth) * scale / 2) -
                                                   (static_cast<float>(enemy3.width) * 5) +
                                                   static_cast<float>(enemy3.width) * i),
                                static_cast<float>(enemy2.height ) + (static_cast<float>(windowHeight) / 2) + 25});
        enemies.emplace_back(alien);
    }
    Texture enemy4 = LoadTexture("../../assets/spriteSheets/invader_004.png");
    for(int i = 0; i <= 9; i++ ){
        auto alien = new Alien(Texture2D(), Vector2(), enemy4,
                               {static_cast<float>((static_cast<float>(windowWidth) * scale / 2) -
                                                   (static_cast<float>(enemy3.width) * 5) +
                                                   static_cast<float>(enemy3.width) * i),
                                static_cast<float>(enemy3.height ) + (static_cast<float>(windowHeight) / 2) + 45});
        enemies.emplace_back(alien);
    }
    Texture enemy5 = LoadTexture("../../assets/spriteSheets/invader_005.png");
    for(int i = 0; i <= 9; i++ ){
        auto alien = new Alien(Texture2D(), Vector2(), enemy5,
                               {static_cast<float>((static_cast<float>(windowWidth) * scale / 2) -
                                                   (static_cast<float>(enemy3.width) * 5) +
                                                   static_cast<float>(enemy3.width) * i),
                                static_cast<float>(enemy4.height ) + static_cast<float>(windowHeight) / 2 + 65});
        enemies.emplace_back(alien);
    }
    Texture enemy6 = LoadTexture("../../assets/spriteSheets/invader_001.png");
    for(int i = 0; i <= 9; i++ ){
        auto alien = new Alien(Texture2D(), Vector2(), enemy6,
                               {static_cast<float>((static_cast<float>(windowWidth) * scale / 2) -
                                                   (static_cast<float>(enemy1.width) * 5) +
                                                   static_cast<float>(enemy1.width) * i),
                                static_cast<float>(enemy1.height ) + static_cast<float>(windowHeight) / 2 + 85});
        enemies.emplace_back(alien);
    }

    map<Laser*, bool> playerLasers;
    map<Laser*, bool> eLasers;
    int playerLaserCount{};
    int alienLaserCount{};
    int enemyLaserMultiplier{4};
    int enemyLaserMax{0};
    Color playerLivesTextColor{GREEN};
    bool shouldEndGame{false};
    srand(time(0));
    int random = rand() % 120;

    while (!WindowShouldClose()) {
        float dt = GetFrameTime();
        BeginDrawing();
        ClearBackground(BLUE);
        DrawRenderers(setupTiles.first, scale);

        //-----------WIN CONDITIONS------------
        if(enemies.empty()){
            DrawText(TextFormat("You Win!"), 200, 160, 40, GREEN);
        }else if( player.GetPlayerLives() <= 0  || shouldEndGame){
            DrawText(TextFormat("You Loose!"), 200, 160, 40, RED);
        }else{
            //-----------UI------------
            if(player.GetPlayerLives() >= 3){
                playerLivesTextColor = GREEN;
            }else if(player.GetPlayerLives() == 2){
                playerLivesTextColor = YELLOW;
            }else if(player.GetPlayerLives() == 1) {
                playerLivesTextColor = RED;
            }
            DrawText(TextFormat("Lives: %02i", player.GetPlayerLives()), 10, 0, 40, playerLivesTextColor);
            DrawText(TextFormat("Enemies: %02i", enemies.size()), windowWidth, 0, 40, RED);

            //-----------TICKS------------
            player.Tick(dt);
            for (auto e : enemies){
                e->Tick(dt);
            }
            for (auto l : playerLasers){
                l.first->Tick(dt);
            }
            for (auto el : eLasers){
                el.first->Tick(dt);
            }

            //-----------LASERS------------
            if (random < enemies.size() && alienLaserCount <= enemyLaserMax){
                auto laser  = new Laser(enemies[random]->GetAlienPosition(), false);
                eLasers.insert({laser, false});
                alienLaserCount++;
            }else{
                random = rand() % (enemies.size()* enemyLaserMultiplier);
            }
            for (auto it = playerLasers.cbegin(); it != playerLasers.cend() /* not hoisted */; /* no increment */)
            {
                if (it->first->GetLaserPosition().y <= 50)
                {
                    playerLaserCount--;
                    playerLasers.erase(it++);    // or "it = m.erase(it)" since C++11
                } else if (it->second){
                    playerLasers.erase(it++);
                    playerLaserCount--;// or "it = m.erase(it)" since C++11
                }
                else
                {
                    ++it;
                }
            }

            for (auto it = eLasers.cbegin(); it != eLasers.cend() /* not hoisted */; /* no increment */)
            {
                if(CheckCollisionRecs(it->first->GetCollisionRect(), player.GetCollisionRect())){
                    player.SubtractPlayerLife();
                    eLasers.erase(it++);    // or "it = m.erase(it)" since C++11
                    alienLaserCount--;
                }else{

                    if (it->first->GetLaserPosition().y >= windowHeight * scale - 10 || it->second)
                    {
                        eLasers.erase(it++);    // or "it = m.erase(it)" since C++11
                        alienLaserCount--;
                    }else
                    {
                        ++it;
                    }
                }

            }

            if(IsKeyPressed(KEY_SPACE) && playerLaserCount <= 2){
                auto laser  = new Laser(player.GetPlayerPos(), true);
                playerLasers.insert({laser, false});
                playerLaserCount+= 1;
                cout << "Laser: " << playerLaserCount << endl;
            }

            //-----------ENEMIES------------
            enemies.erase(
                    std::remove_if(
                            enemies.begin(),
                            enemies.end(),
                            [&playerLasers,&playerLaserCount](Alien* alien) -> bool {
                                bool shouldRemove{false};
                                for(auto &laser : playerLasers)
                                    if (CheckCollisionRecs(laser.first->GetCollisionRect(), alien->GetCollisionRect())) {
                                        shouldRemove = true;
                                        laser.second = true;

                                    }else {
                                        shouldRemove = false;
                                    }
                                return shouldRemove;
                            }
                    ),
                    enemies.end()
            );
            for (auto e : enemies){
                if(e->GetAlienPosition().y >= windowHeight * 2 - 200){
                    shouldEndGame = true;
                    break;
                }
                if(e->GetAlienPosition().x >= (windowWidth * scale) - e->GetCollisionRect().width){
                    for (auto a : enemies) {
                        a->SetDirection(-10);
                        a->BumpDown();
                    }
                    break;
                }
                if(e->GetAlienPosition().x <= 0 ){
                    for (auto a : enemies) {
                        a->SetDirection(10);
                        a->BumpDown();
                    }
                    break;
                }
            }
            if(enemies.size() <= 10){
                for (auto e : enemies){
                    e->SetSpeedByMovementFrameCount(5);
                }
                enemyLaserMax = 6;
                enemyLaserMultiplier = 1;
            }else if(enemies.size() <= 20){
                for (auto e : enemies){
                    e->SetSpeedByMovementFrameCount(20);
                }
                enemyLaserMax = 4;
                enemyLaserMultiplier = 2;
            }else if(enemies.size() <= 30){
                for (auto e : enemies){
                    e->SetSpeedByMovementFrameCount(30);
                }
                enemyLaserMax = 2;
                enemyLaserMultiplier = 3;
            }
        }
        EndDrawing();
    }

    //-----------DISPOSE OF Everything------------
    for (auto renderTexture: setupTiles.first){
        UnloadRenderTexture(renderTexture);
    }

    for (auto tileTexture: setupTiles.second){
        UnloadTexture(tileTexture);
    }

    player.Dispose();
    for (auto e : enemies){
        e->Dispose();
    }
    for (auto i : playerLasers){
        i.first->Dispose();
    }

    //-----------CLOSE------------
    CloseWindow();
    return (0);
}