# media-Player-2

## Esittely

media-player-2 on hyvin tavallinen musiikkisoitin linuxille 

joka omaa siistin ja intuitiivisen käyttöliittymän.

## Asennus koulun koneella
ENGLISH BELOW

Lataa zip tai tar tiedosto painikkeesta projektin juurta kuvaavasta GitLab projektisivulta (tämä).

Pura lataamasi paketti ja avaa terminaali kansiossa, johon purit lataamasi tiedoston. 

Suorita seuraavat terminaalikomennot järjestyksessä.

`cd libs/taglib-1.9.1`

`cmake -DCMAKE_INSTALL_PREFIX=./bin -DCMAKE_RELEASE_TYPE=Release`

`make`

`make install`

`cd ../../src`

`qmake -qt=qt5`

`make`

`./mediaplayer`

ENGLISH

Download zip or tar file from this website which represents the root of our project.

Unpack the file which you downloaded. 

Open terminal in the directory where you unpacked the files you downloaded.

Use terminal commands above in order to build and eventually to execute our project.

## vaatimukset

Ohjelma toimii ainoastaan Linuxilla

ja tarvitsee toimiakseen lisäksi seuraavat kirjastot:

**Qt**

[Asenna kirjasto heidän kotisivuiltaan](https://www.qt.io/)

**taglib**:

[Asnna kirjasto heidän kotisivuiltaan](http://taglib.org/)

tai suoraan terminalista:

`wget http://taglib.github.io/releases/taglib-1.9.1.tar.gz`

`tar -xzvf taglib-1.9.1.tar.gz`

`cd taglib-1.9.1`

`sudo apt-get install cmake`

`cmake -DCMAKE_INSTALL_PREFIX=/usr/local -DCMAKE_RELEASE_TYPE=Release`

`make`

`sudo make install`

