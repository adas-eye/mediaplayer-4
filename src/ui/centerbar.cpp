#include <QWidget>
#include <QSplitter>
#include <QLabel>
#include <QVBoxLayout>
#include <QStackedWidget>
#include <QGridLayout>
#include <QPushButton>
#include <QHeaderView>
#include <QTableView>
#include <QListView>
#include <iostream>
#include <QSizePolicy>
#include <QVideoWidget>
#include <QListWidget>
#include "centerbar.hpp"


Centerbar::Centerbar(QWidget* c, Player* p, PlaylistModel *pm, Controlbar *ctrl) : QStackedWidget(), centralWidget(c),player(p), playlistmodel(pm), control(ctrl)
{

  QWidget *playlistEmpty = new QWidget();
  QHBoxLayout *h1Layout = new QHBoxLayout(playlistEmpty);
  h1Layout->setSpacing(0);
  h1Layout->setContentsMargins(0,0,0,0);


  QWidget *widget = new QWidget(playlistEmpty);
  QHBoxLayout *h2Layout = new QHBoxLayout(widget);

  h2Layout->setSpacing(0);
  h2Layout->setContentsMargins(0,0,0,0);


  QLabel *imgLabel = new QLabel(widget);
  QSizePolicy sizePolicy(QSizePolicy::Preferred, QSizePolicy::Preferred);
  sizePolicy.setHorizontalStretch(0);
  sizePolicy.setVerticalStretch(0);
  sizePolicy.setHeightForWidth(imgLabel->sizePolicy().hasHeightForWidth());
  imgLabel->setSizePolicy(sizePolicy);
  imgLabel->setMaximumSize(QSize(500, 100));
  imgLabel->setLayoutDirection(Qt::LeftToRight);
  imgLabel->setPixmap(QPixmap("images/player_logo1.png"));
  imgLabel->setScaledContents(true);
  imgLabel->setAlignment(Qt::AlignJustify|Qt::AlignTop);
  imgLabel->setStyleSheet("background-color:transparent;");


  h2Layout->addWidget(imgLabel);
  h1Layout->addWidget(widget);

  this->addWidget(playlistEmpty);


  QWidget *playlistNotEmpty = new QWidget();
  QHBoxLayout *h3Layout = new QHBoxLayout(playlistNotEmpty);
  h3Layout->setSpacing(0);
  h3Layout->setContentsMargins(0,0,0,0);
  QSplitter *splitter = new QSplitter(playlistNotEmpty);
  splitter->setOrientation(Qt::Horizontal);


  playlistView = new QTableView(splitter);
  playlistView->setModel(playlistmodel);
  playlistView->setSortingEnabled(true);
  headerView = playlistView->horizontalHeader();
  connect(headerView, SIGNAL(sortIndicatorChanged(int, Qt::SortOrder)), playlistmodel, SLOT(sortByCol(int, Qt::SortOrder)));
  connect(playlistView, SIGNAL(activated(QModelIndex)), this, SLOT(jump(QModelIndex)));
  connect(player->getQMediaPlaylist(), SIGNAL(currentIndexChanged(int)), this ,SLOT(syncCurr(int)));



  playlistView->setSizePolicy(QSizePolicy::Expanding,QSizePolicy::Expanding);
  playlistView->horizontalHeader()->setSectionResizeMode(QHeaderView::Interactive);
  playlistView->setStyleSheet("QHeaderView::section { background-color:black }");

  playlistView->verticalHeader()->hide();
  playlistView->setSelectionBehavior(QAbstractItemView::SelectRows);
  playlistView->setSelectionMode(QAbstractItemView::ContiguousSelection);


  for (int c=0; c < 4; c++) {
    playlistView->horizontalHeader()->setSectionResizeMode(c, QHeaderView::Stretch);
  }

  splitter->addWidget(playlistView);
  widgetRight = new QStackedWidget(splitter);

  QWidget *noVideo = new QWidget();
  QHBoxLayout *h5Layout = new QHBoxLayout(noVideo);
  h5Layout->setSpacing(0);
  h5Layout->setContentsMargins(0,0,0,0);
  imgLabelSplit = new QLabel(noVideo);
  imgLabelSplit->setMaximumSize(QSize(500,100));
  imgLabelSplit->setPixmap(QPixmap("images/player_logo.png"));
  imgLabelSplit->setStyleSheet("background-color:transparent;");
  imgLabelSplit->setScaledContents(true);
  h5Layout->addWidget(imgLabelSplit);

  video = new QWidget();
  QHBoxLayout *h6Layout = new QHBoxLayout(video);
  h6Layout->setSpacing(0);
  h6Layout->setContentsMargins(0,0,0,0);


  vw = new QVideoWidget(video);
  player->getQMediaPlayer()->setVideoOutput(vw);
  h6Layout->addWidget(vw);
  widgetRight->addWidget(noVideo);
  widgetRight->addWidget(video);
  widgetRight->setCurrentIndex(0);
  splitter->addWidget(widgetRight);
  splitter->setSizes(QList<int>()<<150<<200);
  h3Layout->addWidget(splitter);
  this->addWidget(playlistNotEmpty);

  connect(player->getQMediaPlayer(), SIGNAL(currentMediaChanged(QMediaContent)), this, SLOT(mediaType(QMediaContent)));

}

void Centerbar::jump(const QModelIndex &index){
  if(index.isValid()){
    player->getQMediaPlaylist()->setCurrentIndex(index.row());
    player->play();
    control->getPlayButton()->setText("▮▮");
  }
}

void Centerbar::syncCurr(int curr) {
  playlistView->setCurrentIndex(playlistmodel->index(curr,0));
}

void Centerbar::mediaType(const QMediaContent& currentMedia){
  if(hasEnding(currentMedia.canonicalResource().url().toString().toStdString(),".mp4")){
    widgetRight->setCurrentIndex(1);
  }
  else {
    widgetRight->setCurrentIndex(0);
  }

}

bool Centerbar::hasEnding (std::string const &fullString, std::string const &ending) {
    if (fullString.length() >= ending.length()) {
        return (0 == fullString.compare (fullString.length() - ending.length(), ending.length(), ending));
    } else {
        return false;
    }
}
