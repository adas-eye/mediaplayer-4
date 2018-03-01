#ifndef TESTCASEPLAYER_HPP
#define TESTCASEPLAYER_HPP

#include "../player/player.hpp"

#include <QtTest/QtTest>

//test player functionality

class testcasePlayer: public QObject
{
    Q_OBJECT
private:
    Player *player;
private slots:
    void initTestCase();
    void testPlayerClass();
    void cleanupTestCase();
};

#endif
