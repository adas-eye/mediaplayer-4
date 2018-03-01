#ifndef CENTERBAR_HPP
#define CENTERBAR_HPP

#include <QWidget>
#include <QStackedWidget>
#include <QTableView>
#include <QHeaderView>
#include "player/player.hpp"
#include "player/playlistmodel.hpp"
#include "controlbar.hpp"

class Centerbar : public QStackedWidget
{
    Q_OBJECT
public:
		Centerbar(QWidget* centralWidget, Player* player, PlaylistModel* pm, Controlbar *ctrl);
		~Centerbar() { }
    bool hasEnding (std::string const &fullString, std::string const &ending);

private slots:
  void jump(const QModelIndex&);
  void syncCurr(int curr);
  void mediaType(const QMediaContent& currentMedia);
private:
  QWidget* centralWidget;
  Player* player;
  PlaylistModel *playlistmodel;
  Controlbar *control;

  QTableView *playlistView;
  QHeaderView *headerView;
  QVideoWidget *vw;
  QStackedWidget *widgetRight;
  QLabel *imgLabelSplit;
  QWidget *video;
  QHBoxLayout *h4Layout;

};

#endif
