TEMPLATE = app
TARGET = mediaplayer
DEPENDPATH += .
INCLUDEPATH += . ../libs/taglib-1.9.1/bin/include
QT += core widgets gui multimedia multimediawidgets
CONFIG += c++11
LIBS+=-L../libs/taglib-1.9.1/bin/lib -ltag

# Input
HEADERS += player/player.hpp ui/ui.hpp ui/controlbar.hpp ui/menubar.hpp \
           player/playlistmodel.hpp ui/centerbar.hpp ui/toolbar.hpp  \
           ui/actions.hpp

SOURCES += main.cpp player/player.cpp ui/ui.cpp ui/controlbar.cpp \
           ui/menubar.cpp player/playlistmodel.cpp ui/centerbar.cpp \
           ui/toolbar.cpp ui/actions.cpp
