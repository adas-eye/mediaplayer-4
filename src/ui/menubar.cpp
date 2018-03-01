#include <QWidget>
#include <QGridLayout>
#include <QPushButton>
#include <QFileDialog>
#include "menubar.hpp"



Menubar::Menubar(QMainWindow* m, Player* p, Actions *a) : QMenuBar(), mainwindow(m), player(p), actions(a)
{

  menuMenu = new QMenu(this);
  menuMenu->setTitle("Menu");
  menuPlaylist = new QMenu(menuMenu);
  menuPlaylist->setTitle("Playlist");
  menuSortPlaylist = new QMenu(menuPlaylist);
  menuSortPlaylist->setTitle("Sort Playlist");

  this->addAction(menuMenu->menuAction());
  menuMenu->addAction(menuPlaylist->menuAction());
  menuMenu->addAction(actions->getActions().at(8));
  menuPlaylist->addAction(actions->getActions().at(0));
  menuPlaylist->addAction(actions->getActions().at(1));
  menuPlaylist->addAction(menuSortPlaylist->menuAction());
  menuPlaylist->addAction(actions->getActions().at(2));
  menuPlaylist->addAction(actions->getActions().at(7));

  menuSortPlaylist->addAction(actions->getActions().at(3));
  menuSortPlaylist->addAction(actions->getActions().at(4));
  menuSortPlaylist->addAction(actions->getActions().at(5));
  menuSortPlaylist->addAction(actions->getActions().at(6));


  toolButton = new QToolButton();
  toolButton->setText("Sort Playlist ");
  toolButton->setToolButtonStyle(Qt::ToolButtonTextOnly);
  toolButton->setMenu(menuSortPlaylist);
  toolButton->setPopupMode(QToolButton::InstantPopup);
  toolButton->setFocusPolicy(Qt::NoFocus);
  actions->toolButtonAction->setDefaultWidget(toolButton);

}
