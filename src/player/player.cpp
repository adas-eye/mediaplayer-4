#include "player.hpp"

#include <QUrl>
#include <QMediaContent>

Player::Player() : QWidget()
{
    playlist = new QMediaPlaylist(this);
    mediaplayer = new QMediaPlayer(this);
    mediaplayer->setPlaylist(playlist);
    mediaplayer->setVolume(50);
}

Player::~Player()
{
    delete mediaplayer;
    delete playlist;
}

bool Player::setMedia(const std::string& mediaUrl)
{
    try
    {
        playlist->insertMedia(0,QMediaContent(QUrl::fromLocalFile(mediaUrl.c_str())));
    }
    catch (int e)
    {
        return false;
    }

    return true;
}

bool Player::addMedia(const std::string& mediaUrl)
{
    try
    {
        playlist->addMedia(QMediaContent(QUrl::fromLocalFile(mediaUrl.c_str())));
    }
    catch (int e)
    {
        return false;
    }
    return true;
}

bool Player::play()
{
    if (mediaplayer->media() == nullptr) return false;
    if (mediaplayer->state() == QMediaPlayer::PlayingState) return false;
    mediaplayer->play();
    return true;
}

bool Player::pause()
{
    if (mediaplayer->media() == nullptr) return false;
    if (mediaplayer->state() == QMediaPlayer::StoppedState) return false;
    mediaplayer->pause();
    return true;
}

bool Player::stop()
{
    if (mediaplayer->media() == nullptr) return false;
    mediaplayer->stop();
    return true;
}

bool Player::isPlaying() const
{
    return mediaplayer->state() == QMediaPlayer::PlayingState;
}
