#include <QMainWindow>
#include <QHBoxLayout>
#include "ui.hpp"


UI::UI(Player* p) : QMainWindow(p), player(p)
{
    setStyleSheet("color:white; background-color: qlineargradient(spread:pad,x1:0,y1:0,x2:0,y2:1,stop:0 rgba(72,72,72,255),stop:1 rgba(12,12,12,255));");
    setFocusPolicy(Qt::NoFocus);
    setWindowTitle("C++Player");
    setGeometry(100,100,1200,800);
    initComponents();
    show();
}

UI::~UI()
{
    delete playlistmodel;
    delete menu;
    delete tool;
    delete control;
    delete center;
    delete actions;
    delete player;
}

void UI::initComponents()
{
  //Init QMainWindow components

  playlistmodel = new PlaylistModel(player, this);
  //centralWidget for MainWindow
  QWidget *centralWidget = new QWidget(this);
  QHBoxLayout *hLayout = new QHBoxLayout(centralWidget);
  hLayout->setSpacing(0);
  hLayout->setContentsMargins(0,0,0,0);

  //center is a QStackedWidget
  control = new Controlbar(player);
  center = new Centerbar(centralWidget,player, playlistmodel, control);
  hLayout->addWidget(center);
  actions = new Actions(this, player, playlistmodel ,center);
  menu = new Menubar(this, player, actions);
  tool = new Toolbar(this, menu, player, actions);


  //THEME
  center->setStyleSheet("background-color:transparent;");
  menu->setStyleSheet("background-color: transparent;");
  tool->setStyleSheet("background-color: transparent;");
  control->setStyleSheet("background-color: transparent;");

  // Disable QToolBar contextMenu
  control->setContextMenuPolicy(Qt::PreventContextMenu);
  tool->setContextMenuPolicy(Qt::PreventContextMenu);

  //Add initialized components to QMainWindow
  setMenuBar(menu);
  addToolBar(Qt::TopToolBarArea, tool);
  addToolBar(Qt::BottomToolBarArea, control);
  setCentralWidget(centralWidget);
}

// Keyboard event
void UI::keyPressEvent(QKeyEvent *e)
{
    if (e->key() == Qt::Key_P) control->playclicked();
    else if (e->key() == Qt::Key_M) control->mute();
    else if (e->key() == Qt::Key_T) control->repeat();
    else if (e->key() == Qt::Key_H) control->shuffle();
    else if (e->key() == Qt::Key_F) control->nextmedia();
    else if (e->key() == Qt::Key_B) control->previousmedia();
}
