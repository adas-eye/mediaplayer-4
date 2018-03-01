#include "controlbar.hpp"

#include <QWidget>
#include <QBoxLayout>
#include <QObject>
#include <QProgressBar>
#include <iostream>
#include <sstream>
#include <iomanip>
#include <QMediaMetaData>
#include <taglib/fileref.h>
#include <taglib/tag.h>
#include <taglib/tpropertymap.h>

// Unicode symbols: 🔈 🔉 🔊 🔇 ⏪ ⏩ ▮▮ ▶ ◼ ↺ ⇄ 🗖 📂

Controlbar::Controlbar(Player* p) : QToolBar(), player(p)
{
    setFocusPolicy(Qt::NoFocus);
    setMovable(false);
    // Add individual layouts for both rows to add more customization options
    QBoxLayout *layout = new QBoxLayout(QBoxLayout::TopToBottom);
    QBoxLayout *upperlayout = new QBoxLayout(QBoxLayout::LeftToRight);
    QBoxLayout *lowerlayout = new QBoxLayout(QBoxLayout::LeftToRight);

    //add 3 different layouts for lowerlayout
    QBoxLayout *leftlayout = new QBoxLayout(QBoxLayout::LeftToRight);
    QBoxLayout *middlelayout = new QBoxLayout(QBoxLayout::LeftToRight);
    QBoxLayout *rightlayout = new QBoxLayout(QBoxLayout::LeftToRight);
    QLabel *metadata = new QLabel("no media");
    layout->addWidget(metadata);
    layout->addLayout(upperlayout);
    layout->addLayout(lowerlayout);
    lowerlayout->addLayout(leftlayout,1);
    lowerlayout->addLayout(middlelayout,1);
    lowerlayout->addLayout(rightlayout,1);

    this->metadatalabel = metadata;
    metadata->setStyleSheet("QLabel { qproperty-alignment: AlignCenter;}");

    QPushButton *play = new QPushButton("▶");
    this->playbutton = play;
    play->setFocusPolicy(Qt::NoFocus);
    QObject::connect(play, SIGNAL (clicked()), this, SLOT(playclicked()));

    QPushButton *next = new QPushButton("⏩");
    next->setFocusPolicy(Qt::NoFocus);
    QObject::connect(next, SIGNAL (clicked()), this, SLOT(nextmedia()));

    QPushButton *previous = new QPushButton("⏪");
    previous->setFocusPolicy(Qt::NoFocus);
    QObject::connect(previous, SIGNAL (clicked()), this, SLOT(previousmedia()));

    this->positionsliderPressed = true;
    QSlider *position = new QSlider(Qt::Horizontal);
    position->setFocusPolicy(Qt::NoFocus);
    this->positionslider = position;
    QObject::connect(player->getQMediaPlayer(), SIGNAL(positionChanged(qint64)), this, SLOT(updateSlider(qint64)));
    QObject::connect(positionslider, SIGNAL(valueChanged(int)), this, SLOT(changePosition(int)));

    QLabel *timer = new QLabel("00:00");
    this->timelabel = timer;

    QLabel *duration = new QLabel("00:00");
    this->durationlabel = duration;
    QObject::connect(player->getQMediaPlayer(), SIGNAL(durationChanged(qint64)), this, SLOT(setsonginfo(qint64)));

    QSlider *volumeslider = new QSlider(Qt::Horizontal);
    volumeslider->setValue(50);
    volumeslider->setFocusPolicy(Qt::NoFocus);
    QObject::connect(volumeslider, SIGNAL(valueChanged(int)), this, SLOT(changeVolume(int)));

    QPushButton *mute = new QPushButton("🔉");
    mute->setFocusPolicy(Qt::NoFocus);
    this->mutebutton = mute;
    QObject::connect(mute, SIGNAL(clicked()), this, SLOT(mute()));

    QPushButton *shuffle = new QPushButton("⇄");
    shuffle->setFocusPolicy(Qt::NoFocus);
    this->shufflebutton = shuffle;
    QObject::connect(shuffle, SIGNAL(clicked()), this, SLOT(shuffle()));

    QPushButton *repeat = new QPushButton("↺");
    repeat->setFocusPolicy(Qt::NoFocus);
    this->repeatbutton = repeat;
    QObject::connect(repeat, SIGNAL(clicked()), this, SLOT(repeat()));

    QObject::connect(player->getQMediaPlayer(), SIGNAL(stateChanged(QMediaPlayer::State)),
                     this, SLOT(statechange(QMediaPlayer::State)));


    // Widget positions
    leftlayout->addWidget(repeat,1);
    leftlayout->addWidget(shuffle,1);
    leftlayout->addWidget(new QLabel(""),2);

    middlelayout->addWidget(previous,4);
    middlelayout->addWidget(play,4);
    middlelayout->addWidget(next,4);
    rightlayout->addWidget(new QLabel(""),1);
    rightlayout->addWidget(mute,1);
    rightlayout->addWidget(volumeslider,2);
    rightlayout->addWidget(new QLabel(""),1);

    upperlayout->addWidget(timelabel);
    upperlayout->addWidget(positionslider);
    upperlayout->addWidget(durationlabel);

    // Add layout to QToolBar
    this->controlLayout = layout;
    QWidget *widget = new QWidget();
    widget->setLayout(layout);
    this->addWidget(widget);
}

///////////
// Slots //
///////////

void Controlbar::playclicked()
{
    if (!player->getQMediaPlaylist()->isEmpty()) {
        if (player->isPlaying()) {
            player->pause();
            playbutton->setText("▶");
        } else {
            player->play();
            playbutton->setText("▮▮");
        }
    }
}

void Controlbar::changePosition(int value)
{
    std::stringstream timer;
    int dur = player->getQMediaPlayer()->duration()*value/100;
    timer << std::setfill('0') << std::setw(2) << (dur/60000) % 60
    << ":" << std::setfill('0') << std::setw(2) << (dur/1000) % 60;
    if (positionsliderPressed) { player->getQMediaPlayer()->setPosition(dur); }
    timelabel->setText(timer.str().c_str());
    positionsliderPressed = true;
}

// set new duration and metadata when song is changed
void Controlbar::setsonginfo(qint64 value)
{
    std::stringstream duration;
    duration << std::setfill('0') << std::setw(2) << (value/60000) % 60
    << ":" << std::setfill('0') << std::setw(2) << (value/1000) % 60;
    durationlabel->setText(duration.str().c_str());

    std::stringstream data;
    //TagLib artist
    QByteArray byteArray = player->getQMediaPlayer()->currentMedia().canonicalUrl().path().toUtf8();
    const char* cString = byteArray.constData();
    TagLib::FileRef f(cString);
    TagLib::Tag *tag = f.tag();
    QString artist = QString::fromStdString(tag->artist().toCString(true));
    //
    if (artist.isEmpty())
    {
        data << "unkown artist";
    }
    else
    {
        data << artist.toStdString();
    }
    data << " - ";
    if (player->getQMediaPlayer()->metaData(QMediaMetaData::Title).toString().toStdString() == "") {
        data << "unkown title";
    }
    else
    {
        data << player->getQMediaPlayer()->metaData(QMediaMetaData::Title).toString().toStdString();
    }
    metadatalabel->setText(data.str().c_str());
}

void Controlbar::changeVolume(int value)
{
    player->setVolume(value);
    setVolumeIcon();
}

void Controlbar::updateSlider(qint64 value)
{
    positionsliderPressed = false;
    std::stringstream timer;
    timer << std::setfill('0') << std::setw(2) << (value/60000) % 60
    << ":" << std::setfill('0') << std::setw(2) << (value/1000) % 60;
    timelabel->setText(timer.str().c_str());

    qint64 dur = player->getQMediaPlayer()->duration();
    positionslider->setValue((float)value/dur*100);
}

void Controlbar::nextmedia()
{
    player->getQMediaPlaylist()->next();
}

void Controlbar::previousmedia()
{
    player->getQMediaPlaylist()->previous();
}

void Controlbar::mute()
{
    QMediaPlayer *mediaplayer = player->getQMediaPlayer();
    if (mediaplayer->isMuted())
    {
        mediaplayer->setMuted(false);
        setVolumeIcon();
    } else {
        mediaplayer->setMuted(true);
        mutebutton->setText("🔇");
    }
}

void Controlbar::shuffle()
{
    QMediaPlaylist *mediaplaylist = player->getQMediaPlaylist();
    if (mediaplaylist->playbackMode() == QMediaPlaylist::Random)
    {
        if (repeatbutton->isFlat())
        {
            mediaplaylist->setPlaybackMode(QMediaPlaylist::Loop);
        }
        else
        {
            mediaplaylist->setPlaybackMode(QMediaPlaylist::Sequential);
        }
        shufflebutton->setFlat(false);
        shufflebutton->setStyleSheet("QPushButton {color: white;}");
    }
    else
    {
        mediaplaylist->setPlaybackMode(QMediaPlaylist::Random);
        shufflebutton->setFlat(true);
        shufflebutton->setStyleSheet("QPushButton {color: red;}");
    }
}

void Controlbar::repeat()
{
    QMediaPlaylist *mediaplaylist = player->getQMediaPlaylist();
    if (mediaplaylist->playbackMode() == QMediaPlaylist::Loop)
    {
        if (!shufflebutton->isFlat())
        {
            mediaplaylist->setPlaybackMode(QMediaPlaylist::Sequential);
        }
        repeatbutton->setFlat(false);
        repeatbutton->setStyleSheet("QPushButton {color: white;}");
    }
    else
    {
        if (!shufflebutton->isFlat())
        {
            mediaplaylist->setPlaybackMode(QMediaPlaylist::Loop);
        }
        repeatbutton->setFlat(true);
        repeatbutton->setStyleSheet("QPushButton {color: red;}");
    }
}

void Controlbar::setVolumeIcon()
{
    int volume = player->getQMediaPlayer()->volume();
    if (volume < 26)
    {
        mutebutton->setText("🔈");
    }
    else if (volume >= 26 && volume < 75)
    {
        mutebutton->setText("🔉");
    }
    else
    {
        mutebutton->setText("🔊");
    }
}

void Controlbar::statechange(QMediaPlayer::State state)
{
    if (state == QMediaPlayer::StoppedState)
    {
        playbutton->setText("▶");
    }
}
