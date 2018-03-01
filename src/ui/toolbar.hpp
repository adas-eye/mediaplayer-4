#ifndef TOOLBAR_HPP
#define TOOLBAR_HPP

#include <QToolBar>
#include <QAction>
#include <QMenu>
#include <QMainWindow>
#include "player/player.hpp"
#include "menubar.hpp"
#include "actions.hpp"

class Toolbar : public QToolBar
{
    Q_OBJECT
public:
  	Toolbar(QMainWindow* m, Menubar* menu, Player* p, Actions* a);
		~Toolbar() { }

private:
    QMainWindow *mainwindow;
    Menubar *menubar;
    Player *player;
    Actions *actions;
};

#endif
