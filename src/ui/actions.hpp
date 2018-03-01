#ifndef ACTIONS_HPP
#define ACTIONS_HPP

#include <QObject>
#include <QAction>
#include <QWidgetAction>
#include <vector>
#include <string>
#include <QMainWindow>
#include "player/player.hpp"
#include "centerbar.hpp"

class Actions : public QObject{
  Q_OBJECT
public:
  Actions(QMainWindow *m, Player *p, PlaylistModel* pm, Centerbar *c);
  ~Actions(){}

  std::vector<QAction*> getActions() const{
    return actionVector;
  }
  QWidgetAction* toolButtonAction;

private slots:
    void addTracks();
    void changeIndex();
    void addToPlaylist();
    void removePlaylist();
    void sortPlaylistByTitle();
    void sortPlaylistByArtist();
    void sortPlaylistByAlbum();
    void sortPlaylistByLength();
    void savePlaylist();
    void exit();

private:
  QMainWindow *mainwindow;
  Player *player;
  PlaylistModel *playlistmodel;
  Centerbar *center;
  std::vector<std::string> actionStrings;
  std::vector<QAction*> actionVector;
};




#endif
