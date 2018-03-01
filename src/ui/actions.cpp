#include "actions.hpp"
#include <QFileDialog>
#include <QStringList>
#include <iostream>

Actions::Actions(QMainWindow *m, Player *p, PlaylistModel *pm, Centerbar *c) : mainwindow(m), player(p), playlistmodel(pm), center(c){

  actionStrings = {"New Playlist",
                   "Add Playlist",
                   "Remove Playlist",
                   "Sort Playlist by Title",
                   "Sort Playlist by Artist",
                   "Sort Playlist by Album",
                   "Sort Playlist by Length",
                   "Save Playlist",
                   "Exit"};

  for(unsigned int i=0;i<actionStrings.size();i++){
    actionVector.push_back(new QAction(mainwindow));
    //actionVector.at(i)->setObjectName(QStringLiteral(tr(actionStrings.at(i).c_str())));
    actionVector.at(i)->setText(tr(actionStrings.at(i).c_str()));


    if(i==0) { //New Playlist
      connect(actionVector.at(i), SIGNAL(triggered()), this, SLOT(addTracks()));
      connect(actionVector.at(i), SIGNAL(triggered()), this, SLOT(changeIndex()));
    }

    if(i==1) { //Add Playlist
      connect(actionVector.at(i), SIGNAL(triggered()), this, SLOT(addToPlaylist()));
      actionVector.at(i)->setEnabled(false);
    }

    if(i==2) { //Remove Playlist
      connect(actionVector.at(i), SIGNAL(triggered()), this, SLOT(removePlaylist()));
      actionVector.at(i)->setEnabled(false);
    }

    if(i==3) { //Sort Playlist by Title
      connect(actionVector.at(i), SIGNAL(triggered()), this, SLOT(sortPlaylistByTitle()));
      actionVector.at(i)->setEnabled(false);
    }

    if(i==4) { //Sort Playlist by Artist
      connect(actionVector.at(i), SIGNAL(triggered()), this, SLOT(sortPlaylistByArtist()));
      actionVector.at(i)->setEnabled(false);
    }

    if(i==5) { //Sort Playlist by Album
      connect(actionVector.at(i), SIGNAL(triggered()), this, SLOT(sortPlaylistByAlbum()));
      actionVector.at(i)->setEnabled(false);
    }

    if(i==6) { //Sort Playlist by Length
      connect(actionVector.at(i), SIGNAL(triggered()), this, SLOT(sortPlaylistByLength()));
      actionVector.at(i)->setEnabled(false);
    }

    if(i==7) { //Save Playlist
      connect(actionVector.at(i), SIGNAL(triggered()), this, SLOT(savePlaylist()));
      actionVector.at(i)->setEnabled(false);
    }

    if(i==8) { //Exit
      connect(actionVector.at(i), SIGNAL(triggered()), this, SLOT(exit()));
    }


  }
  toolButtonAction = new QWidgetAction(mainwindow);
  toolButtonAction->setEnabled(false);


}

void Actions::addTracks(){
  if(player->getQMediaPlaylist()->isEmpty()){
    QStringList fileNames = QFileDialog::getOpenFileNames(mainwindow,tr("Open Files"),QDir::currentPath(), tr("media files (*.mp3 *.wav *.ogg *.mp4)"));
    if(!fileNames.isEmpty()){
      for(int i=0;i<fileNames.size();i++){
          player->addMedia(fileNames.at(i).toStdString());
      }
      playlistmodel->setPlaylist(player->getQMediaPlaylist());
    }
  }
  else{
    center->setCurrentIndex(0);
    player->getQMediaPlaylist()->clear();
    playlistmodel->clearData();
    QStringList fileNames = QFileDialog::getOpenFileNames(mainwindow,tr("Open Files"),QDir::currentPath(), tr("media files (*.mp3 *.wav *.ogg *.mp4)"));
    if(!fileNames.isEmpty()){
      for(int i=0;i<fileNames.size();i++){
        player->addMedia(fileNames.at(i).toStdString());
      }
      playlistmodel->setPlaylist(player->getQMediaPlaylist());  
    }
  }
}
void Actions::changeIndex(){
  if(!player->getQMediaPlaylist()->isEmpty()){
    center->setCurrentIndex(1);
    toolButtonAction->setEnabled(true); //menu for sorting
    actionVector.at(1)->setEnabled(true); //Add playlist
    actionVector.at(2)->setEnabled(true); //Remove playlist
    actionVector.at(3)->setEnabled(true); //Sort by Title
    actionVector.at(4)->setEnabled(true); //Sort by Artist
    actionVector.at(5)->setEnabled(true); //Sort by Album
    actionVector.at(6)->setEnabled(true); //Sort by Length
    //actionVector.at(7)->setEnabled(true); //Save playlist

  }
}

void Actions::addToPlaylist(){
  QStringList fileNames = QFileDialog::getOpenFileNames(mainwindow,tr("Open Files"),QDir::currentPath(), tr("media files (*.mp3 *.wav *.ogg *.mp4)"));
  for(int i=0;i<fileNames.size();i++){
      player->addMedia(fileNames.at(i).toStdString());
  }
  playlistmodel->setPlaylist(player->getQMediaPlaylist());
}
void Actions::removePlaylist(){
  player->getQMediaPlaylist()->clear();
  playlistmodel->clearData();
  center->setCurrentIndex(0);

  toolButtonAction->setEnabled(false); //menu for sorting
  actionVector.at(1)->setEnabled(false); //Add playlist
  actionVector.at(2)->setEnabled(false); //Remove playlist
  actionVector.at(3)->setEnabled(false); //Sort by Title
  actionVector.at(4)->setEnabled(false); //Sort by Artist
  actionVector.at(5)->setEnabled(false); //Sort by Album
  actionVector.at(6)->setEnabled(false); //Sort by Length

}
void Actions::sortPlaylistByTitle(){
  playlistmodel->sortByCol(1,Qt::AscendingOrder);
}
void Actions::sortPlaylistByArtist(){
  playlistmodel->sortByCol(2,Qt::AscendingOrder);
}
void Actions::sortPlaylistByAlbum(){
  playlistmodel->sortByCol(3,Qt::AscendingOrder);
}
void Actions::sortPlaylistByLength(){
  playlistmodel->sortByCol(4,Qt::AscendingOrder);
}
void Actions::savePlaylist(){}
void Actions::exit(){
  mainwindow->close();
}
