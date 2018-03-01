#include <QApplication>

#include "player/player.hpp"
#include "player/playlistmodel.hpp"
#include "ui/ui.hpp"

int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    Player *player = new Player();
    new UI(player);
    return app.exec();
}
