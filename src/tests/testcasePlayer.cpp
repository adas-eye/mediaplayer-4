#include "testcasePlayer.hpp"
#include <QDir>

void testcasePlayer::initTestCase()
{
    Player *p = new Player();
    this->player = p;
}

void testcasePlayer::testPlayerClass()
{
    player->setMedia(QDir::current().absolutePath().toStdString() \
            + "/../testData/Chromeo - Lost on The Way Home feat. Solange.mp3");
    player->play();
    QCOMPARE(player->getQMediaPlayer()->state(), QMediaPlayer::PlayingState);
    player->pause();
    QCOMPARE(player->getQMediaPlayer()->state(), QMediaPlayer::PausedState);
}

void testcasePlayer::cleanupTestCase() { }

QTEST_MAIN(testcasePlayer)
