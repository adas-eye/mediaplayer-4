# Media player suunnitelma

## Sisällysluettelo
1. [Yleiskuvaus](#yleis)
2. [Ohjelman rakennesuunnitelma](#ohjrak)
3. [Ominaisuuksien tärkeys](#omintark)
4. [Käyttöliittymän luonnos](#ui)
5. [Käytettävät ulkoiset kirjastot](#kirjastot)
6. [Aikataulusuunnitelma](#aikataulu)   
    1.[Deadlines](#deadlines)<br />
    2.[Tapaamiset](#tap)
7. [Vastuualueet](#vastuu)
8. [Huomioitavaa](#huom)
9. [Hyödylliset linkit ja lähteet](#linkit)
10. [Tekijät](#teki)



## Yleiskuvaus <a name="yleis"></a>
Tässä kappaleessa avataan yleisellä tasolla projektiaihetta ja sen perustoteutusta.
Mediasoitin on ohjelma joka toistaa kaikenlaista mediaa (musiikki, kuva, ääni).
Se toimii graafisella ja helppokäyttöisellä käyttöliittymällä johon voi tuoda omat
mediatiedostot ja toistaa niitä tietokoneen ruudulla ja kaiuttimissa. 
Mediasoittimen on myös tarkoitus helpottaa media ylläpitoa ja järjestystä selkeällä
käyttöliittymällä, metadatan muokkausmahdollisuudella sekä tiedostojen järjestämisellä
esimerkiksi aakkosjärjestykseen. Lisäksi soittimesta löytyy visualisaattori ja 
työkalut videon sekä äänen efektoimiseen lennosta esimerkiksi muuttamalla 
soitto nopeutta tai lisäämällä equalisaattorin. Perus play/stop toiminnallisuuden 
lisäksi soittimesta löytyy myös sekoitus toiminto. Soitin osaa näyttää kappaleen 
kansikuvan, jos kappaleen metadata sen sisältää. Videoiden toistoa varten mediasoitin 
tukee myös kokoruudun tilaa. Musiikki kirjaston hallintaan soittimessa on hakutoiminto 
ja mahdollisuus luoda omia soittolistoja.


## Ohjelman rakennesuunnitelma <a name="ohjrak"></a>
Tässä kappaleessa perehdytään alustavaan suunnitelma ohjelman rakenteesta. 
Käyttöliittymän ympärille rakennetaan monta pienempää komponenttia, jotkat tuovat 
ikkunaan toiminnallisuuksia. player.cpp-tiedostoon tulee kaikki median 
kontrolloimiseen liittyvät ominaisuudet, joita kutsutaan käyttöliittymäkomponenttien luokista.

![Rakkene luonnos](https://version.aalto.fi/gitlab/ELEC-A7150/media-player-2/raw/master/images/RakenneLuonnos.png)

## Ominaisuuksien tärkeys <a name="omintark"></a>
| Nimi                                  | Tärkeys (1-5)          | Tehty |
|-------------                          |:----------------:      |------:|
|Kappaleen soittaminen terminaalista    |3                       |       |
|Kappaleen kelaaminen ja keskeyttäminen |5                       |       |
|Video ja kuva terminaalista            |5                       |       |
|Graafinen käyttöliittymä               |4                       |       |
|Äänitiedoston metadatan näyttäminen    |3                       |       |
|Graafinen mediakataloki                |3                       |       |
|Itsetehty makefile ja CMake            |3                       |       |
|Raahaa ja pudota-ominaisuus            |2                       |       |
|Shuffle-ominaisuus                     |3                       |       |
|Kansion tuominen mediasoittimeen       |4                       |       |
|Mini-player-ominaisuus                 |1                       |       |
|Mahdollisuus täydentää metadataa       |1                       |       |

Yllä olevaa taulukkoa täydennetään viikottaisissa tapaamisissa.


## Käyttöliittymän luonnos <a name="ui"></a>
Tässä kappaleessa havainnollistuu mediaplayer applikaation käyttöliittymä. 
Jokaiselle Ohjelman rakennesuunnitelma -kappaleessa kuvatulle käyttöliittymäkomponentille
luodaan oma itsenäinen käyttöliittymälohko (widget) sopivalla Qt:n kirjastolla. 
Kaikki käyttöliittymäkomponentit yhdistetään yhdeksi kokonaisuudeksi. 
MenuBar -käyttöliittymäkomponentti sijoittuu applikaatioikkunan yläreunaan. 
MenuBar -käyttöliittymäkomponentissa ikkunaan piirtyy painikkeet mediatiedostojen 
tuomiselle ohjelmaan. Välittömästi sen alapuolelle sijoittuvat BrowseBar- ja 
MediaBar -käyttöliittymäkomponentit. Alustavasti BrowseBar -käyttöliittymäkomponentti vie 
leveyssuunnassa murtoosan ikkunan koosta jättäen MediaBar -käyttöliittymäkomponentille leveämmän tilan.
MediaBar -käyttöliittymäkomponentissa toistetaan kaikki videotiedostot ja musiikkitiedostojen 
kohdalla tilan täyttää kappaleen musiikkivideo tai sopiva staattinen kuva,
joka kuvaa toistettavaa kappaletta (albumin kansikuva, tms.). 
BrowseBar -käyttöliittymäkomponentissa näkyy listana kaikkien ohjelmalle tuotujen 
mediatiedostojen keskeisimmät metatiedot (kappale,artisti/ohjaaja,albumi,vuosi,...) 
sekä status, joka kertoo toistetaanko k.o. kappaletta. 
BrowseBar- ja MediaBar-käyttöliittymäkomponenttien leveyssuunnassa viemän tilan 
keskinäistä suhdetta voi säätää. MediaBar- ja BrowseBar -käyttöliittymäkomponenttien 
jälkeen koko ikkunana leveyden vie ControlBar -käyttöliittymäkomponentti, 
jossa havainnollsitetaan toistettavan kappaleen metatiedot sekä ikkunaan myös piirtyy 
play-, pause-, stop-, volyymi- ja muut tarpeelliset painikkeet. Alla kuva, jossa näkyy 
millä tavalla kaikki käyttöliittymäkomponentit ryhmittyvät applikaation pääkäyttöliittymänäkymään.

![mockup_withContent](https://version.aalto.fi/gitlab/ELEC-A7150/media-player-2/raw/master/images/c++mediaplayer.png)

Alla kuva käyttöliittymästä, kun applikaation ajaa ensimmäisen kerran. Tällöin
ikkunaan avautuu aikaisemmin kuvattu MenuBar-käyttöliittymäkomponentti sekä
suuri drag-and-drop mediatiedostojen lisäysominaisuus. Kun mediaplayer -applikaatiollemme
annettaan mediatiedostoja onnistuneesti muuttu näkymä yllä olevan kuvan näköiseksi.

![mockup_withoutContent](https://version.aalto.fi/gitlab/ELEC-A7150/media-player-2/raw/master/images/c++mediaplayer_noPlaylist.png)


## Käytettävät ulkoiset kirjastot <a name="kirjastot"></a>

### Qt <a name="qt"></a>
Qt helpottaa graafisen käyttöliittymän tekoa sekä tuo paljon valmiita ominaisuuksia kuten
esimerkiksi raahaa ja pudota-ominaisuuden. 

Qt omaa myös multimedia osion joka sopii hyvin meidän projektiin mm. QMediaPlayer luokan ansiosta.
Qt multimedia on kuitenkin osoittaunut ongelmalliseksi linux ympäristössä ja on syytä vaihtaa jos
ongelmia esiintyy lisää.

### ID3 metatietokirjasto <a name="ID3"></a>
Mikäli Qt:n oma metatietojen hakuun luotu kirjasto osoittautuu vajaavaiseksi eikä
täytä kaikkia vaatimuksiamme, olemme valmiita käyttämään ID3 kirjastoa mediatiedostojen
metatiedon hakua varten.


## Aikataulusuunnitelma <a name="aikataulu"></a>
Tässä kappaleessa avataan projektille suunniteltua aikataulua.
Aikataulusuunnitelmaa havainnollistamassa alla olevassa
kuvassa on merkitty alustavasti tärkeimmät ominaisuudet punaisella ja oranssilla
värillä mahdollisten lisäominaisuuksien implementointi. Aikatarkkuutena toimivat 
viikot.

![aikataulu](https://version.aalto.fi/gitlab/ELEC-A7150/media-player-2/raw/master/images/aikataulu.png)


### Deadlines <a name="deadlines"></a> 
Alla näkyvässä Deadlines listassa on alustavat virstanpylväät projektille. Tätä
listaa päivitetään viikottaisissa tapaamisissa mikäli projekti osoittautuu 
iteraatio-omaiseksi vesiputousmallin sijaan.

|Pvm    |  Aihe                                 |   Vastuu |
|----   |:-------:                              |---------:|
|17.11. |  Projekti suunnitelma valmis          | kaikki   |
|16.11. |  Terminaalin perustoiminnot valmiit   | kaikki   |
|24.11. |  player.cpp perusominaisuudet         | Santeri  |
|24.11. |  browseBar.cpp toteutus               | Sakari   |
|24.11. |  controlBar.cpp toteutus              | Eelis    |
|27.11. |  -----------------------------------  | -------  |
|       |  Välitapaaminen                       | Sakari ja Santeri   |
|1.12.  |  -----------------------------------  | -------  |
|1.12.  |  menuBar.cpp toteutus                 | Santeri  |
|1.12.  |  mediaBar.cpp toteutus                | Sakari   |
|8.12.  |  mainBar.cpp toteutus                 | Jan      |
|13.12  |  lisäominaisuuksien toteutus          | kaikki   |
|15.12. |  master deadline/presentaatio         | kaikki   |

### Tapaamiset <a name="tap"></a>
Pyrimme tapaamaan kerran viikossa, jolloin katsotaan missä mennään ja 
yhdistetään jokaisen henkilökohtaiset toteutukset yhdeksi kokonaisuudeksi.
Tapaamisen tarkoituksena on tarkistaa, että kaikki osat toimivat keskenään 
moitteettomasti ja yhdessä selvittää mahdollisia 'bugeja'.
Tapaamisissa sovitaan myös tulevan viikon tavoitteista ja päivitetään deadlines
sekä ominaisuuksien tärkeys-listoja tarvittavilta osilta.


## Vastuualueet <a name="vastuu"></a>

Vastualueet projektissamme ovat muuttuvia tarkoittaen, että jokaisena projekti-
viikkona jaetaan uudet vastuualueet. Vaikka vastuualueet muovautuvat yhteisissä
tapaamisissa, päädyimme projektin kokonaisuuden hahmottamiseksi asettaa alustavat
vastuualueet seuraavalla tavalla:

Santeri: mediaplayer:n implementaatio, class ja metodit (funktiot)<br />
Sakari: käyttöliittymäkomponenttien implementaatio<br />
Eelis: käyttöliittymäkomponenttien implementaatio<br />
Jan: lisäominaisuuksien toteutus<br />
Sakari ja Santeri: ohjattu välitapaaminen<br />
kaikki: uudet viikottain vaihtuvat vastuualueet sekä lopullinen esitelmä<br />


## Huomioitavaa <a name="huom"></a>

- Jan ja Eelis ei pääse ensimmäiseen tapaamiseen 27.11.-1.12.


## Hyödylliset linkit ja lähteet <a name="linkit"></a>

- Media Player aiheen kuvaus (TIM): https://tim.aalto.fi/view/elec-a7150/syksy17/projects/media-player
- MyCourses Projektisivu: https://mycourses.aalto.fi/course/view.php?id=17241&section=4


## Tekijät <a name="teki"></a>
**Santeri Suitiala**<br />
**Eelis Pinomaa**<br />
**Sakari Pöyhiä**<br />
**Jan Lundström**<br />
