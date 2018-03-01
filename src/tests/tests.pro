TEMPLATE = app
TARGET = tests
DEPENDPATH += .
INCLUDEPATH += .
QT += core widgets multimedia multimediawidgets testlib
CONFIG += c++11 testcase
LIBS+=-ltag

# Input
HEADERS += testcasePlayer.hpp ../player/player.hpp ../player/playlistmodel.hpp
SOURCES += testcasePlayer.cpp ../player/player.cpp ../player/playlistmodel.cpp
