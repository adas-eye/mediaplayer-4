#ifndef MENUBAR_HPP
#define MENUBAR_HPP

#include <QMenuBar>
#include <QStackedWidget>
#include <QToolButton>
#include <QWidgetAction>
#include <QAction>
#include <QMenu>
#include <QMainWindow>
#include "player/player.hpp"
#include "actions.hpp"

class Menubar : public QMenuBar
{
    Q_OBJECT
public:
  	Menubar(QMainWindow* m, Player* p, Actions *a);
		~Menubar() { }

    QMenu* menuMenu;
    QMenu* menuPlaylist;
    QMenu* menuSortPlaylist;
    QToolButton *toolButton;

private:
    QMainWindow *mainwindow;
    Player *player;
    Actions *actions;
};

#endif
