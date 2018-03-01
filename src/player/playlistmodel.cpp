#include "playlistmodel.hpp"

#include <QFileInfo>
#include <QUrl>
#include <QMediaPlaylist>
#include <QColor>
#include <QBrush>

#include <taglib/fileref.h>
#include <taglib/tag.h>
#include <taglib/tpropertymap.h>
#include <QtAlgorithms>
#include <sstream>
#include <iomanip>
#include <string>

PlaylistModel::PlaylistModel(Player *p, QObject *parent)
    : QAbstractItemModel(parent), player(p)
{
  m_data_matrix = QVector<QVector<QString> > ();
}

PlaylistModel::~PlaylistModel()
{
}

int PlaylistModel::rowCount(const QModelIndex &parent) const
{
    return !parent.isValid() ? m_data_matrix.size() : 0;

}

int PlaylistModel::columnCount(const QModelIndex &parent) const
{
    return !parent.isValid() ? ColumnCount : 0;
}

QModelIndex PlaylistModel::index(int row, int column, const QModelIndex &parent) const
{

    return !parent.isValid()
            && row >= 0 && row < m_data_matrix.size()
            && column >= 0 && column < ColumnCount
        ? createIndex(row, column)
        : QModelIndex();
}

QModelIndex PlaylistModel::parent(const QModelIndex &child) const
{
    Q_UNUSED(child);

    return QModelIndex();
}

QVariant PlaylistModel::data(const QModelIndex &index, int role) const
{
    if (index.isValid() && role == Qt::DisplayRole) {
        if(index.column() == Index){
          return m_data_matrix.at(index.row()).at(1);
        }
        if (index.column() == Title) {
            return m_data_matrix.at(index.row()).at(2);
        }
        if (index.column() == Artist) {
            return m_data_matrix.at(index.row()).at(3);
        }
        if (index.column() == Album) {
            return m_data_matrix.at(index.row()).at(4);
        }
        if (index.column() == Length) {
            return m_data_matrix.at(index.row()).at(5);
        }

        return QVariant();
    }
    if(role == Qt::BackgroundColorRole && index.isValid() && index.row()%2==0) {
      return QBrush(QColor(40,40,40));
    }
    return QVariant();
}

QVariant PlaylistModel::headerData(int section, Qt::Orientation orientation, int role) const {
  if (role != Qt::DisplayRole) {return QVariant();}
	if (orientation == Qt::Horizontal) {
    if(section==0){return tr("QMediaPlaylist Index");}
		else if(section==1){return tr("Title");}
		else if(section==2){return tr("Artist");}
		else if(section==3){return tr("Album");}
		else if(section==4){return tr("Length");}
		else{return QVariant();}
    }
    return QVariant();
}

void PlaylistModel::setPlaylist(QMediaPlaylist *playlist)
{
  clearData();
  int start = m_data_matrix.size();
  for(int i=0;i<playlist->mediaCount();i++){
    beginInsertRows(QModelIndex(),start,start);
    QByteArray byteArray = playlist->media(i).canonicalUrl().path().toUtf8();
    const char* cString = byteArray.constData();
    TagLib::FileRef f(cString);
    TagLib::Tag *tag = f.tag();
    QString title = QString::fromStdString(tag->title().toCString(true));
    QString artist = QString::fromStdString(tag->artist().toCString(true));
    QString album = QString::fromStdString(tag->album().toCString(true));

    TagLib::AudioProperties *props = f.audioProperties();
    int seconds = props->length() % 60;
    int minutes = (props->length() - seconds)/60;
    std::stringstream ss;
    ss<<minutes<<":"<<std::setfill('0')<<std::setw(2)<<seconds;
    QString length = QString::fromStdString(ss.str());
    QVector<QString> m_data_matrix_row;
    m_data_matrix_row.push_back(playlist->media(i).canonicalUrl().toString().remove(0,7));
    m_data_matrix_row.push_back(QString::number(i));
    m_data_matrix_row.push_back(title.isEmpty() ? QString("Unknown title") : title);
    m_data_matrix_row.push_back(artist.isEmpty() ? QString("Unknown artist") : artist);
    m_data_matrix_row.push_back(album.isEmpty() ? QString("Unknown album") : album);
    m_data_matrix_row.push_back(length);
    m_data_matrix.push_back(m_data_matrix_row);
    start += 1;
    endInsertRows();
  }

}

void PlaylistModel::clearData(){
  int start = m_data_matrix.size();
  for(int i=0;i<m_data_matrix.size();i++){
    beginRemoveRows(QModelIndex(),start,start);
    m_data_matrix[i].clear();
    start -=1;
    endRemoveRows();
  }
  m_data_matrix.clear();
}


void PlaylistModel::sortByCol(int col, Qt::SortOrder order){
  emit layoutAboutToBeChanged();
  player->getQMediaPlaylist()->clear();
  if(col==1){//Title
    if(order==Qt::AscendingOrder){
      qStableSort(m_data_matrix.begin(), m_data_matrix.end(), [](const QVector<QString> &sv1, const QVector<QString> &sv2){
        return sv1[2].toLower() < sv2[2].toLower();
      });
      for(int i=0;i<m_data_matrix.size();i++){
        for(int j=0; j<m_data_matrix.size();j++){
          if(i==(m_data_matrix[j][1]).toInt()){
            player->addMedia(m_data_matrix[i][0].toStdString());
          }
        }
      }
    }
    else{
      qStableSort(m_data_matrix.begin(), m_data_matrix.end(), [](const QVector<QString> &sv1, const QVector<QString> &sv2){
        return sv1[2].toLower() > sv2[2].toLower();
      });
      for(int i=0;i<m_data_matrix.size();i++){
        for(int j=0; j<m_data_matrix.size();j++){
          if(i==(m_data_matrix[j][1]).toInt()){
              player->addMedia(m_data_matrix[i][0].toStdString());
          }
        }
      }
    }
  }
  if(col==2){//Artist
    if(order==Qt::AscendingOrder){
      qStableSort(m_data_matrix.begin(), m_data_matrix.end(), [](const QVector<QString> &sv1, const QVector<QString> &sv2){
        return sv1[3].toLower() < sv2[3].toLower();
      });
      for(int i=0;i<m_data_matrix.size();i++){
        for(int j=0; j<m_data_matrix.size();j++){
          if(i==(m_data_matrix[j][1]).toInt()){
            player->addMedia(m_data_matrix[i][0].toStdString());
          }
        }
      }
    }
    else{
      qStableSort(m_data_matrix.begin(), m_data_matrix.end(), [](const QVector<QString> &sv1, const QVector<QString> &sv2){
        return sv1[3].toLower() > sv2[3].toLower();
      });
      for(int i=0;i<m_data_matrix.size();i++){
        for(int j=0; j<m_data_matrix.size();j++){
          if(i==(m_data_matrix[j][1]).toInt()){
            player->addMedia(m_data_matrix[i][0].toStdString());
          }
        }
      }
    }
  }
  if(col==3){//Album
    if(order==Qt::AscendingOrder){
      qStableSort(m_data_matrix.begin(), m_data_matrix.end(), [](const QVector<QString> &sv1, const QVector<QString> &sv2){
        return sv1[4].toLower() < sv2[4].toLower();
      });
      for(int i=0;i<m_data_matrix.size();i++){
        for(int j=0; j<m_data_matrix.size();j++){
          if(i==(m_data_matrix[j][1]).toInt()){
            player->addMedia(m_data_matrix[i][0].toStdString());
          }
        }
      }
    }
    else{
      qStableSort(m_data_matrix.begin(), m_data_matrix.end(), [](const QVector<QString> &sv1, const QVector<QString> &sv2){
        return sv1[4].toLower() > sv2[4].toLower();
      });
      for(int i=0;i<m_data_matrix.size();i++){
        for(int j=0; j<m_data_matrix.size();j++){
          if(i==(m_data_matrix[j][1]).toInt()){
            player->addMedia(m_data_matrix[i][0].toStdString());
          }
        }
      }
    }
  }
  if(col==4){//Length
    if(order==Qt::AscendingOrder){
      qStableSort(m_data_matrix.begin(), m_data_matrix.end(), [](const QVector<QString> &sv1, const QVector<QString> &sv2){
        return sv1[5].toLower() < sv2[5].toLower();
      });
      for(int i=0;i<m_data_matrix.size();i++){
        for(int j=0; j<m_data_matrix.size();j++){
          if(i==(m_data_matrix[j][1]).toInt()){
            player->addMedia(m_data_matrix[i][0].toStdString());
          }
        }
      }
    }
    else{
      qStableSort(m_data_matrix.begin(), m_data_matrix.end(), [](const QVector<QString> &sv1, const QVector<QString> &sv2){
        return sv1[5].toLower() > sv2[5].toLower();
      });
      for(int i=0;i<m_data_matrix.size();i++){
        for(int j=0; j<m_data_matrix.size();j++){
          if(i==(m_data_matrix[j][1]).toInt()){
            player->addMedia(m_data_matrix[i][0].toStdString());
          }
        }
      }
    }
  }
  emit dataChanged(QModelIndex(), QModelIndex());
  emit layoutChanged();
}

void PlaylistModel::beginRemoveItems(int start, int end) {
    beginRemoveRows(QModelIndex(), start, end);
    for (int row=0; row < end+1; row++) {
       m_data_matrix.removeAt(row);
    }
}

void PlaylistModel::endRemoveItems() {
    endInsertRows();
}
