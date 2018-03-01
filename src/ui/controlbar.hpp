#ifndef CONTROLBAR_HPP
#define CONTROLBAR_HPP

#include <QGridLayout>
#include <QPushButton>
#include <QLabel>
#include <QSlider>
#include <QToolBar>
#include <QKeyEvent>

#include "player/player.hpp"

class Controlbar : public QToolBar
{
    Q_OBJECT
public:
    Controlbar(Player* p);
    ~Controlbar() { }
    QPushButton* getPlayButton()const{
      return playbutton;
    }

private:
    Player* player;
    QBoxLayout* controlLayout;
    QPushButton* playbutton;
    QSlider* positionslider;
    QLabel* timelabel;
    QLabel* durationlabel;
    bool positionsliderPressed;
    QPushButton* mutebutton;
    QPushButton* shufflebutton;
    QPushButton* repeatbutton;
    QLabel* metadatalabel;

    void setVolumeIcon();

public slots:
    void playclicked();
    void changePosition(int value);
    void changeVolume(int value);
    void updateSlider(qint64 value);
    void nextmedia();
    void previousmedia();
    void setsonginfo(qint64 value);
    void mute();
    void shuffle();
    void repeat();
    void statechange(QMediaPlayer::State state);
};

#endif
