#ifndef UI_HPP
#define UI_HPP

#include <QMainWindow>
#include <QKeyEvent>

#include "player/player.hpp"
#include "player/playlistmodel.hpp"
#include "menubar.hpp"
#include "toolbar.hpp"
#include "centerbar.hpp"
#include "controlbar.hpp"
#include "actions.hpp"

class UI : public QMainWindow
{
public:
    UI(Player* player);
    ~UI();
    void initComponents();
private:
    Player* player;
    PlaylistModel* playlistmodel;
    Menubar* menu;
    Toolbar* tool;
    Controlbar* control;
    Centerbar* center;
    Actions* actions;
    void keyPressEvent(QKeyEvent *e);
};

#endif
