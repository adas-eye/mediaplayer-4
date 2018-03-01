#ifndef PLAYLISTMODEL_HPP
#define PLAYLISTMODEL_HPP

#include <QAbstractItemModel>
#include "player.hpp"
#include <QMediaPlaylist>
#include <QScopedPointer>

class PlaylistModel : public QAbstractItemModel
{
    Q_OBJECT

public:
    enum Column
    {
        Index = 0,
        Title = 1,
        Artist = 2,
        Album = 3,
        Length = 4,
        ColumnCount
    };

    PlaylistModel(Player *p, QObject *parent = nullptr);
    ~PlaylistModel();

    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    int columnCount(const QModelIndex &parent = QModelIndex()) const override;

    QModelIndex index(int row, int column, const QModelIndex &parent = QModelIndex()) const override;
    QModelIndex parent(const QModelIndex &child) const override;

    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;
    virtual QVariant headerData(int section, Qt::Orientation orientation,int role = Qt::DisplayRole) const;

    // QMediaPlaylist *playlist() const;
    void setPlaylist(QMediaPlaylist *playlist);
    void clearData();

    QVector<QVector<QString> > getMData() const{
      return m_data_matrix;
    }


public slots:
    void sortByCol(int col, Qt::SortOrder order);
private slots:
    void beginRemoveItems(int start, int end);
    void endRemoveItems();


private:
    Player *player;

    //Vector<Vector< FilePa, Index ,Title  , Artist , Album  , Length
    QVector<QVector<QString> > m_data_matrix;
};

#endif
