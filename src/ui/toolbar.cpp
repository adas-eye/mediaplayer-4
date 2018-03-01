#include <QFileDialog>
#include "toolbar.hpp"



Toolbar::Toolbar(QMainWindow* m, Menubar* menu, Player* p, Actions* a) : QToolBar(), mainwindow(m), menubar(menu), player(p), actions(a)
{
  setFloatable(false);
  setMovable(false);
  this->addAction(actions->getActions().at(0));
  this->addAction(actions->getActions().at(1));
  this->addAction(actions->toolButtonAction);

}
