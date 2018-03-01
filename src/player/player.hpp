#ifndef PLAYER_HPP
#define PLAYER_HPP

//#include "playlistmodel.hpp"
#include <string>

#include <QWidget>
#include <QMediaPlayer>
#include <QMediaPlaylist>

class Player : public QWidget
{
public:
    // Constructor, initiates QMediaPlayer.
    Player();
    ~Player();

    // set media for QMediaPlayer. Returns false if file is not found
    // or if the file type is not playable
    // Protip: convert QString or any other with toStrString() method.
    // Puts media in front of the playlist
    bool setMedia(const std::string& mediaUrl);
    // Puts media to queue
    bool addMedia(const std::string& mediaUrl);

    // return false if player has no current media or the media isnt playing.
    bool play();

    // return false if player has no current media or media is playing
    bool pause();

    // return false if player has no current media
    // takes the track back to the start.
    bool stop();

    // return true if audio is playing
    bool isPlaying() const;

    int getVolume() const { return mediaplayer->volume(); }
    void setVolume(int v) { mediaplayer->setVolume(v); }
    void clearPlaylist() { playlist->clear(); }

    // If some basic methods are not implements, it's possible to call those
    // trhough this getter. (e.g. position() and setPosition(int pos))
    QMediaPlayer* getQMediaPlayer() const { return mediaplayer; }
    // Same for QMediaPlaylist
    QMediaPlaylist* getQMediaPlaylist() { return playlist; }

	  //PlaylistModel* getPlaylistModel() { return playlistmodel; }


private:
    QMediaPlayer* mediaplayer;
    QMediaPlaylist* playlist;
	  //PlaylistModel *playlistmodel;
};

#endif
