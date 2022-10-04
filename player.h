#ifndef SPACEINVADERS_PLAYER_H
#define SPACEINVADERS_PLAYER_H


class player {
public:
    void Tick();
private:
    const int scale = 2;
    float speed{200};
    const int playerHeightPosScale = 10;
    const int windowWidth = 288;
    const int windowHeight = 448;
};


#endif //SPACEINVADERS_PLAYER_H
