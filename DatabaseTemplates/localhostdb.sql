-- phpMyAdmin SQL Dump
-- version 4.4.15.9
-- https://www.phpmyadmin.net
--
-- Host: localhost
-- Gegenereerd op: 15 mei 2019 om 19:48
-- Serverversie: 5.6.37
-- PHP-versie: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `boekenclub`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `authors`
--

CREATE TABLE IF NOT EXISTS `authors` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `authors`
--

INSERT INTO `authors` (`id`, `name`) VALUES
(1, 'Paolo Cognetti'),
(2, 'Sander de Hosson'),
(3, 'Judith Visser'),
(4, 'Bram Benedict'),
(5, 'Michael Khouw'),
(6, 'Danny Kamman'),
(7, 'Bram Benedict');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `boekenlijst`
--

CREATE TABLE IF NOT EXISTS `boekenlijst` (
  `book_id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `book_author` varchar(255) NOT NULL,
  `book_comment` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `boekenlijst`
--

INSERT INTO `boekenlijst` (`book_id`, `book_name`, `book_author`, `book_comment`) VALUES
(14, 'xbhxcvbcvxhfj', 'jhkdjhkdhkjdfhjkfd', 'jkhdhjkfjhkfdhjk'),
(15, 'Titel 3', 'Judith Visser', 'Beschrijving 3');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `authors`
--
ALTER TABLE `authors`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `boekenlijst`
--
ALTER TABLE `boekenlijst`
  ADD PRIMARY KEY (`book_id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `authors`
--
ALTER TABLE `authors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT voor een tabel `boekenlijst`
--
ALTER TABLE `boekenlijst`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=18;--
-- Database: `planningtool`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `games`
--

CREATE TABLE IF NOT EXISTS `games` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `expansions` text,
  `skills` text,
  `url` varchar(255) DEFAULT NULL,
  `youtube` text,
  `min_players` int(11) NOT NULL,
  `max_players` int(11) NOT NULL,
  `play_minutes` int(11) NOT NULL,
  `explain_minutes` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Gegevens worden geëxporteerd voor tabel `games`
--

INSERT INTO `games` (`id`, `name`, `image`, `description`, `expansions`, `skills`, `url`, `youtube`, `min_players`, `max_players`, `play_minutes`, `explain_minutes`) VALUES
(1, 'Counterfeiters', 'counterfeiters.jpg', '<p>De spelers kruipen in de rol van valsemunters die valse bankbiljetten printen en deze ruilen voor het echte spul. De Godfather kan hen helpen de politie te ontlopen, maar deze bescherming heeft wel een prijs…</p>\r\n<p>Het spel eindigt als de politie haar onderzoek naar de valsgeldindustrie voltooit; winnaar is de speler met het meeste ‘echte’ (niet valse) geld!</p>', 'Action Improvements', 'plannen', 'https://boardgamegeek.com/boardgame/257380/counterfeiters', '<iframe width="560" height="315" src="https://www.youtube.com/embed/unzMecWBczM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 2, 4, 40, 10),
(2, '7 Wonders', '7_wonders.jpg', '<p>7 Wonders is een kort kaartspel waarin je een stad bouwt met een wereldwonder erin. In 3 tijdperken met ieder 6 beurten bouw je gebouwen of delen van je wereldwonder. De beste combinaties van gebouwen leveren de meeste winstpunten op.</p>', 'Leaders;Cities', 'plannen', 'https://boardgamegeek.com/boardgame/68448/7-wonders', '<iframe width="560" height="315" src="https://www.youtube.com/embed/z_Wfdn5Es8U" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 3, 8, 40, 15),
(3, 'Camel Up', 'camel_up.png', '<p>De stapelgekke kamelenrace! Vlot race- en gokspel voor het hele gezin. Gok op 5 kamelen, die over een zandparcours rennen en elkaar meedragen. Er kunnen liefst 8 spelers meedoen!</p>', 'The Referee;Grand Prix of the Sahara; Supercub', 'schatten;werken met het onbekende', 'https://www.999games.nl/camel-up.html', '<iframe width="560" height="315" src="https://www.youtube.com/embed/L4w1N0wOKDs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 2, 10, 60, 15),
(4, 'Roborally', 'roborally.jpg', '<p>In Robo Rally nemen de spelers de controle over een robot in een gevaarlijke fabriekshal. Vanwege het grote aantal dubbelzijdig bedrukte kaarten is er een heel grote variëteit aan verschillende speelvelden. Het speelveld in Robo Rally zit vol met bewegende, van richting veranderende transportbanden, metaal smeltende lasers, bodemloze putten, persers, en verscheidene andere obstakels. Het doel van Robot Rally is, buiten overleven, het als eerste alle checkpoints bereiken in de juiste volgorde. De uitdaging in Robo Rally is echter om je robot te bewegen door middel van willekeurig uitgedeelde programmeerkaarten.</p>', NULL, 'planning;programmeren', 'https://boardgamegeek.com/boardgame/18/roborally', '<iframe width="560" height="315" src="https://www.youtube.com/embed/sVJ6A3OsZig" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 2, 8, 90, 30),
(5, 'Codenames: Pictures', 'codenames_pictures.jpg', '<p>Wat zijn die vreemde plaatjes die op tafel liggen? Dat zijn codes van de locaties waar spionnen zich bevinden. Twee rivaliserende hoofden van de geheime dienst weten welke spion op een locatie aanwezig is. Ze geven gecodeerde boodschappen die de geheime agenten vertellen waar ze heen moeten voor hun geheime ontmoetingen. Geheime agenten moeten slim en scherp zijn. Een foute analyse van de code kan betekenen dat ze per ongeluk in contact komen met een vijandelijke spion of zelfs een huurmoordernaar! Beide teams moeten zo snel mogelijk contact maken met al hun spionenn. Er kan slechts één winnaar zijn.</p>', NULL, 'luisteren;communiceren;creativiteit', 'https://boardgamegeek.com/boardgame/198773/codenames-pictures', '<iframe width="560" height="315" src="https://www.youtube.com/embed/gP5j9n7WJ5k" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 4, 10, 15, 5),
(6, 'Dale of Merchants', 'dale_of_merchants.png', '<p>Dale of Merchants Een spannend kaartspel waarbij zowel slimheid als sluwheid bepaalt wie mag toetreden tot het buitengewone gilde. Iedere speler probeert de beste handelaar te worden van het handelaarsgilde. Door middel van deckbuilding probeer je goederen te verhandelen en een handelskraam te bouwen. Dale of Merchants dwingt de spelers tot het maken van moeilijke keuzes omdat iedere kaart op meerdere manieren gebruikt kan worden. Ga je voor de fantastische actie of voor nog meer coole kaarten ? Als je droomt van overwinning zul je in ieder geval je kaarten net zo snel weer moeten uitstallen als dat je ze koopt. In een beurt heeft de speler een van onderstaande actie mogelijkheden: marktactie ? kaart kopen van de markt techniekactie ? gebruik de speciale eigenschap van een kaart kraamactie ? leg een kaart in je kraam voorraadactie ? leg één of meerdere kaarten af op de aflegstapel.</p>', NULL, 'vooruitdenken', 'https://boardgamegeek.com/boardgame/176165/dale-merchants', '<iframe width="560" height="315" src="https://www.youtube.com/embed/CeyQUUL1xHY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 2, 4, 30, 5),
(7, 'Dixit: Odyssey', 'dixit.jpg', '<p>Het sprookjesachtige spel Dixit bevat prachtige kaarten die voor interpretatie vatbaar zijn. Bij dit gezellige bordspel is het belangrijk om je medespelers goed in te schatten en je verbeelding de vrije loop te laten gaan. Het spel heeft weinig spelregels, waardoor het heel snel te leren is en geschikt is voor kinderen vanaf 8 jaar.</p>\r\n\r\n<p>Alle spelers hebben altijd zes kaarten in hun hand, waarop mysterieuze tekeningen te zien zijn. Om de beurt is een speler de verteller die een kaart uit zijn hand kiest en deze omschrijft. Dit kan door middel van een woord, een zin, of het maken van een gebaar of geluid. Alles is toegestaan. Probeer je tegenstanders goed in te schatten en zorg dat je hint niet té makkelijk of té moeilijk is. De andere spelers kiezen vervolgens een kaart uit hun handkaarten die ze bij de omschrijving vinden passen. Hierna worden alle kaarten geschud en open op tafel gelegd, waarna het stemproces plaatsvindt. Welke kaart is nu van de verteller? Probeer de kaart van de verteller te ontdekken, laat je niet misleiden door de kaarten van de andere spelers, maar zorg dat zij wel op jouw kaart stemmen. Op deze manier kan jij de winnaar van Dixit worden!</p>', NULL, 'overbrengen;luisteren;interpreteren', 'https://boardgamegeek.com/boardgame/92828/dixit-odyssey', '<iframe width="560" height="315" src="https://www.youtube.com/embed/rRUPQbfSKvU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 3, 12, 40, 5),
(8, 'Concept', 'concept.jpg', '<p>oncept is een spel voor het hele gezin of voor een gezellig avondje met vrienden. Samenwerken is de boodschap. Een 2-koppig team trekt een Concept kaart en weet hierdoor het te raden concept (woord of zin). Door pionnen op het spelbord te plaatsen geven zij hints over het te raden concept. Het team geeft aan of wat geraden wordt juist of fout is en kan door middel van meerdere pionnen op het spelbord te plaatsen de anderen helpen het concept te raden. Je speelt niet tegen elkaar maar als het ware tegen het spel zelf!</p>', NULL, 'overbrengen;luisteren;interpreteren', 'https://boardgamegeek.com/boardgame/147151/concept', '<iframe width="560" height="315" src="https://www.youtube.com/embed/MLjVC0ZxBus" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 4, 12, 40, 10),
(9, '10 minuten kraak', '10min_kraak.jpg', '<p>In de Tovenaarstoren proberen jij en je dievenvrienden zoveel mogelijk buit te bemachtigen! De Tovenaar heeft veel magische voorwerpen in zijn verzameling waarvoor je rijkelijk beloond zult worden, vooral als het je lukt om de meeste van een bepaald soort te stelen. Maar wees op je hoede, want sommige voorwerpen zijn vervloekt en die zijn weer een stuk lastiger door te verkopen!</p>', NULL, 'planning;vooruitdenken', 'https://boardgamegeek.com/boardgame/194789/10-minute-heist-wizards-tower', '<iframe width="560" height="315" src="https://www.youtube.com/embed/7j95yagOFEE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 2, 5, 10, 5),
(10, 'Ghost Fightin'' Treasure Hunters', 'ghost_fightin_treasure_hunters.jpg', '<p>Spelers werken als één team en proberen met alle 8 de juwelen te ontsnappen uit het huis voordat er spoken opduiken in de 6e verdoemde kamer.<br/>Je team en jij moeten met veel tactiek door de kamers en gangen lopen en juwelen pakken en wegbrengen. Als er een spook in de kamer is, moet je team daar mee vechten. Soms moet je zelfs met spoken en griezels vechten terwijl je een juweel in je rugzak hebt!</p>', NULL, 'samenwerken;communicatie', 'https://boardgamegeek.com/boardgame/146312/ghost-fightin-treasure-hunters', '<iframe width="560" height="315" src="https://www.youtube.com/embed/ZNqm62NtCnU" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 2, 4, 30, 5),
(11, 'Downforce', 'downforce.jpg', '<p>Downforce is een kaart gestuurd bied-, race- en gokspel voor 2-6 spelers op basis van Top Race, het bekroonde ontwerp van de legendarische Wolfgang Kramer. Spelers bieden eerst op de zes auto''s die aan de race deelnemen, daarna spelen ze kaarten uit hun hand om ze over het circuit te versnellen. </p>', 'Danger Circuit', 'plannen;inzicht', 'https://boardgamegeek.com/boardgame/215311/downforce', '<iframe width="560" height="315" src="https://www.youtube.com/embed/CpihysTOamo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 2, 6, 45, 5),
(12, 'City of Horror', 'city_of_horror.jpg', '<p>City of Horror is een survival-horror bordspel. Een invasie van schuifelende zombies terroriseert de stad. Het doel is om de aanval te overleven...</p>\r\n<p>Elke speler controleert een aantal personages met verschillende vaardigheden. Je kunt je karakters verplaatsen naar verschillende locaties, om deze vervolgens te barricaderen en te doorzoeken voor items en wapens.</p>\r\n<p>De mechanismen van City of Horror zijn hetzelfde als in Mall of Horror (ook ontworpen door Nicolas Normandon), maar City of Horror heeft andere materialen en gameplay.</p>', NULL, 'overleg;overtuigen;plannen;stemmen', 'https://boardgamegeek.com/boardgame/120217/city-horror', '<iframe width="560" height="315" src="https://www.youtube.com/embed/zu5v23afSgE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 3, 6, 90, 20),
(13, 'Fantasy Realms', 'fantasy_realms.jpg', '<p>A combo-licious card game.</p>\r\n\r\n<p>Fantasy Realms takes seconds to learn: draw a card, discard a card. Though in this case you can draw from the deck or the discard area!</p>\r\n\r\n<p>Make the best hand you can by making the best combos. Game ends when there are 10 cards in the discard area. Aim for the highest score.</p>', NULL, 'werken met weinig resources; rekenen;verzamelen', 'https://boardgamegeek.com/boardgame/223040/fantasy-realms', '<iframe width="560" height="315" src="https://www.youtube.com/embed/WKLjQHtluss" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 3, 8, 20, 5),
(14, 'The Estates', 'the_estates.jpg', '<p>The City Council recently approved the zoning map for a new urban development — The Estates — featuring high-end infrastructure and a modern atmosphere for its citizens. Soon after, the banks awarded millions of dollars in loans to six real estate investment firms to help develop this new area. The zoning map for The Estates calls for two rows of four buildings each, located between the River and Main Street. The meadows on the other side of the River are to remain a recreational area for the City.</p>', NULL, 'planning', 'https://www.capstone-games.com/the-estates-1', '<iframe width="560" height="315" src="https://www.youtube.com/embed/mVFhPa24CP4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 2, 5, 45, 15),
(15, 'Lemming Maffia', 'lemming_maffia.jpg', '<p>Alle lemmingen proberen zo snel mogelijk in het water te springen. Maar het zou de lemmingmaffia niet zijn als daar niet op gewed kon worden. En ondertussen worden betonblokken ingezet om concurrenten af te stoppen of zelfs helemaal uit te schakelen.</p>', NULL, 'inzicht;overzichtbehouden', 'https://www.999games.nl/lemming-maffia.html', '<iframe width="560" height="315" src="https://www.youtube.com/embed/iYBaqXzcuRE" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 3, 6, 25, 5),
(16, 'Micropolis', 'micropolis.png', '<p>In het spel Micropolis stuur je jouw mieren in de mierenhoop voor fruit, krijgers, een koningin en nog meer mieren.</p>\r\n\r\n<p>De spelers starten het spel Micropolis met een aantal mieren op een centrale locatie. Doorheen het spel trekken ze tegels met tunnels die rond de mieren komen te liggen. Wanneer ze aan beurt zijn, kunnen de spelers een tegel kiezen.</p>', NULL, 'plannen;verzamelen', 'https://boardgamegeek.com/boardgame/239840/micropolis', '<iframe width="560" height="315" src="https://www.youtube.com/embed/tlwN3X3OXVA" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 2, 6, 35, 5),
(17, 'Mysterium', 'mysterium.png', '<p>Mysterium is een coöperatief bordspel waarbij een mysterie moet worden opgelost door samen te werken. Iedereen wint of verliest dus samen. Alle spelers delen hetzelfde doel: het ontdekken van de waarheid achter de dood van de geest die rondwaart in het landgoed, om hem op die manier de eeuwige rust te gunnen!</p>', 'Hidden Signs;Secrets & Lies;', 'overbrengen;luisteren;interpreteren', 'https://boardgamegeek.com/boardgame/181304/mysterium', '<iframe width="560" height="315" src="https://www.youtube.com/embed/mhCv0CZW2UM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 3, 7, 45, 15),
(18, 'Spyfall', 'spyfall.jpg', '<p>Spyfall is een party game waarbij iedere speler een kaart krijgt met dezelfde locatie er op, behalve één speler, deze krijgt een kaart met het woord Spy (spion). Het is de taak van de spion om erachter te komen op welke locatie we zijn, terwijl de andere spelers er achter proberen te komen wie de spion is. Spelers kunnen elkaar vragen stellen zoals "waarom heb je zo''n rare kleding aan?", de spion zal goed moeten luisteren naar de antwoorden om erachter te komen waar we zijn en ook om zelf een goed antwoord te kunnen geven wanneer hem iets gevraagd wordt.</p>', NULL, 'communiceren;luisteren', 'https://www.cryptozoic.com/spyfall', '<iframe width="560" height="315" src="https://www.youtube.com/embed/RAP8yVSKhps" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 3, 12, 10, 5),
(19, 'Keep Talking and Nobody Explodes', 'keep_talking_and_nobody_explodes.jpg', '<p>In Keep Talking and Nobody Explodes zit één speler vast in een kamer met een tikkende tijdbom die onschadelijk moet worden gemaakt. De andere spelers zijn de "experts" die instructies moeten geven door informatie uit de handleiding voor het onschadelijk maken van de bom* te ontcijferen. Maar er schuilt een addertje onder het gras: de experts kunnen de bom niet zien, dus iedereen moet heel snel overleggen!</p>', NULL, 'luisteren;samenwerken;cummunicatie', 'https://keeptalkinggame.com', '<iframe width="560" height="315" src="https://www.youtube.com/embed/lDgTqx-jz8Q" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 3, 5, 10, 5),
(20, 'Not Alone', 'notalone.png', '<p>Not Alone is een asymmetrisch kaartspel waarin één speler (het monster) het opneemt tegen de rest.</p>\r\n\r\n<p>Alle spelers, uitgezonderd het monster, verkennen Artemia door middel van plaatskaarten. Door plaatskaarten en overlevingskaarten te spelen, proberen ze het monster te vermijden, te verwarren of af te leiden tot er hulp komt.</p>\r\n\r\n<p>Het monster zal de spelers achterna zitten door jachtkaarten te spelen en door de mysterieuze krachten van Artemia te gebruiken.</p>', 'Exploration', 'luisteren;samenwerken;inschatten', 'https://boardgamegeek.com/boardgame/194879/not-alone', '<iframe width="560" height="315" src="https://www.youtube.com/embed/TJzUjoZRbzw" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 3, 7, 45, 10),
(21, 'The Climbers', 'climbers.jpg', '<p>Tactisch driedimensionaal spel. Probeer als eerste het hoogste punt te bereiken. De 35 verschillende, gekleurde blokken worden willekeurig neergezet, waardoor elk spel anders is. Maar pas op, je mag uitsluitend op blokken van je eigen kleur en neutrale blokken klimmen.</p>', NULL, 'logica;inzicht', 'https://www.capstone-games.com/the-climbers', '<iframe width="560" height="315" src="https://www.youtube.com/embed/EjL6_zOXXIs" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 2, 5, 50, 10),
(22, 'Gizmos', 'gizmos.jpg', '<p>In Gizmos verzamelen slimste geesten van onze generatie zich op de Great Science Fair. Iedereen heeft hard aan hun creaties gewerkt, maar slechts één kampioen wordt gekroond. Deelnemers moeten on the fly denken om hun machines snel en efficiënt te bouwen. Wiens project zal het beste zijn?</p>', NULL, 'plannen;opbouwen;combineren', 'https://www.cmon.com/product/gizmos/gizmos', '<iframe width="560" height="315" src="https://www.youtube.com/embed/J9gbMpM39TI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 2, 4, 45, 15),
(23, 'The Dragon & Flagon', 'dragon_flagon.png', '<p>The Dragon & Flagon is a tavern world-renowned for its most magical drink, The Dragon. Legend has it that one sip of The Dragon can give a hero wondrous abilities beyond their wildest dreams — but with a tavern full of thirsty adventurers and only one flagon left, things are bound to go wrong. Prepare your magic and grab your weapon because there''s only one true objective in this brawl — and it''s not just a sip of The Dragon. Only one can win and emerge with the reputation as the greatest fighter ever seen within the walls of The Dragon & Flagon!</p>', NULL, 'vooruitdenken;timemanagement', 'https://boardgamegeek.com/boardgame/193840/dragon-flagon', '<iframe width="560" height="315" src="https://www.youtube.com/embed/teGFB4DiKzc" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 4, 8, 60, 15),
(24, 'Pandemic', 'pandemic.png', '<p>In dit coöperatief bordspel zijn de spelers leden van een eliteteam dat ten strijde trekt tegen vier bijzonder dodelijke ziektes. Het team reist over de hele wereld om de vloedgolf van infecties in te dammen en om kennis en hulpbronnen op te doen om medicijnen te ontwikkelen. Lukt het jou om de mensheid te redden?</p>', 'Extreem Gevaar;In het Lab', 'samenwerking;overzichthouden;cummunicatie', 'https://nl.wikipedia.org/wiki/Pandemie_(spel)', '<iframe width="560" height="315" src="https://www.youtube.com/embed/ojkScPkdgsk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 2, 4, 60, 15),
(25, 'Everyone is John', 'john.png', '<p>Everyone Is John is one of the quickest, simplest RPG''s out there, created by Michael B. Sullivan The main concept is that every player but one plays a voice in "John''s" head. All of these voices are trying to get John to do something that they like. The funniest thing about this game is your voice can make him want to do ANYTHING. (I mean ANYTHING) The remaining player plays as John. It is advised that this player is the usual GM/ST or at least the best at telling a story. The game has recently been expanded and released as a book by Gamer Nation Studios, with several "adventure seeds" to begin your story.</p>', NULL, 'creativiteit;communicatie;vindingrijkheid', 'https://1d4chan.org/wiki/Everyone_Is_John', '<iframe width="560" height="315" src="https://www.youtube.com/embed/NKqlEIZeO_Y" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 3, 6, 60, 5);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `planning`
--

CREATE TABLE IF NOT EXISTS `planning` (
  `id` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `presentor` varchar(255) NOT NULL,
  `player` varchar(255) NOT NULL,
  `game_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `planning`
--

INSERT INTO `planning` (`id`, `start_time`, `presentor`, `player`, `game_id`) VALUES
(1, '07:16:33', 'Token', 'Bram', 3);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `age` int(3) NOT NULL,
  `isTutor` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `players`
--

INSERT INTO `players` (`id`, `first_name`, `last_name`, `age`, `isTutor`) VALUES
(1, 'Danny', 'Kamman', 22, 0),
(2, 'Narison', 'Clemencia', 20, 0),
(3, 'Bram', 'Benedict', 20, 0),
(4, 'Quinten', 'Bozuwa', 19, 0),
(5, 'Michael', 'Khouw', 18, 0);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `planning`
--
ALTER TABLE `planning`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_id` (`game_id`);

--
-- Indexen voor tabel `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT voor een tabel `planning`
--
ALTER TABLE `planning`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT voor een tabel `players`
--
ALTER TABLE `players`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `planning`
--
ALTER TABLE `planning`
  ADD CONSTRAINT `fk_pla_gam` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`);
--
-- Database: `rubyquest`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `animal`
--

CREATE TABLE IF NOT EXISTS `animal` (
  `id` int(11) NOT NULL,
  `type` varchar(50) NOT NULL,
  `speed` int(11) NOT NULL,
  `defense` int(11) NOT NULL,
  `loyalty` int(11) NOT NULL,
  `owner` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `animal`
--

INSERT INTO `animal` (`id`, `type`, `speed`, `defense`, `loyalty`, `owner`) VALUES
(1, 'Sheep', 3, 4, 0, 0),
(2, 'Sheep', 3, 4, 0, 0),
(3, 'Sheep', 3, 4, 0, 0),
(4, 'Sheep', 3, 4, 0, 0),
(5, 'Sheep', 3, 4, 0, 0),
(6, 'Sheep', 3, 4, 0, 0),
(7, 'Sheep', 3, 4, 1, 2),
(8, 'Sheep', 3, 4, 0, 0),
(9, 'Sheep', 3, 5, 2, 7),
(10, 'Sheep', 3, 4, 0, 0),
(11, 'Sheep', 3, 4, 0, 0),
(12, 'Sheep', 3, 4, 0, 0),
(13, 'Sheep', 3, 4, 0, 0),
(14, 'Sheep', 3, 4, 0, 0),
(15, 'Sheep', 3, 4, 0, 0),
(16, 'Sheep', 3, 4, 0, 0),
(17, 'Sheep', 3, 4, 0, 0),
(18, 'Sheep', 3, 4, 0, 0),
(19, 'Sheep', 3, 4, 0, 0),
(20, 'Sheep', 3, 4, 0, 0),
(21, 'Sheep', 3, 4, 0, 0),
(22, 'Sheep', 3, 4, 0, 0),
(23, 'Sheep', 3, 4, 0, 0),
(24, 'Wolf', 6, 5, 0, 0),
(25, 'Wolf', 6, 5, 0, 0),
(26, 'Wolf', 6, 5, 0, 0),
(27, 'Wolf', 6, 5, 0, 0),
(28, 'Wolf', 6, 5, 0, 0),
(29, 'Wolf', 6, 5, 0, 0),
(30, 'Wolf', 6, 5, 1, 10),
(31, 'Wolf', 6, 5, 0, 0),
(32, 'Wolf', 6, 5, 0, 0),
(33, 'Wolf', 6, 5, 0, 0),
(34, 'Wolf', 6, 5, 0, 0),
(35, 'Wolf', 6, 5, 0, 0),
(36, 'Wolf', 7, 6, 4, 9),
(37, 'Wolf', 6, 5, 0, 0),
(38, 'Wolf', 6, 5, 0, 0),
(39, 'Wolf', 6, 5, 0, 0),
(40, 'Bear', 5, 8, 0, 0),
(41, 'Bear', 5, 8, 0, 0),
(42, 'Bear', 5, 8, 0, 0),
(43, 'Bear', 5, 8, 0, 0),
(44, 'Bear', 5, 8, 0, 0),
(45, 'Bear', 5, 9, 3, 3),
(46, 'Bear', 5, 8, 0, 0),
(47, 'Bear', 5, 8, 0, 0),
(48, 'Bear', 5, 8, 0, 0),
(49, 'Bear', 5, 8, 0, 0),
(50, 'Bear', 5, 8, 0, 0),
(51, 'Bear', 5, 8, 0, 0),
(52, 'Bear', 5, 8, 0, 0),
(53, 'Bear', 5, 8, 0, 0),
(54, 'Eagle', 8, 2, 0, 0),
(55, 'Eagle', 8, 2, 0, 0),
(56, 'Eagle', 8, 2, 0, 0),
(57, 'Eagle', 8, 2, 0, 0),
(58, 'Eagle', 8, 2, 0, 0),
(59, 'Eagle', 9, 3, 9, 1),
(60, 'Eagle', 8, 2, 0, 0),
(61, 'Eagle', 8, 2, 0, 0),
(62, 'Eagle', 8, 2, 0, 0),
(63, 'Eagle', 8, 3, 6, 4),
(64, 'Eagle', 8, 2, 0, 0),
(65, 'Eagle', 8, 2, 0, 0),
(66, 'Eagle', 8, 2, 0, 0),
(67, 'Eagle', 8, 2, 0, 0),
(68, 'Eagle', 8, 2, 0, 0),
(69, 'Eagle', 8, 2, 0, 0),
(70, 'Eagle', 8, 2, 0, 0),
(71, 'Tiger', 9, 8, 0, 0),
(72, 'Tiger', 9, 8, 0, 0),
(73, 'Tiger', 9, 8, 0, 0),
(74, 'Tiger', 9, 8, 0, 0),
(75, 'Tiger', 9, 8, 0, 0),
(76, 'Tiger', 9, 8, 0, 0),
(77, 'Tiger', 10, 9, 3, 8),
(78, 'Sea Snake', 10, 6, 0, 0),
(79, 'Sea Snake', 10, 6, 0, 0),
(80, 'Sea Snake', 10, 6, 0, 0),
(81, 'Sea Snake', 10, 6, 0, 0),
(83, 'Sea Snake', 10, 8, 10, 2),
(84, 'Sea Snake', 10, 6, 0, 0),
(85, 'Giant Rat', 6, 6, 0, 0),
(86, 'Giant Rat', 6, 6, 0, 0),
(87, 'Giant Rat', 6, 6, 0, 0),
(88, 'Giant Rat', 6, 6, 1, 5),
(89, 'Giant Rat', 6, 6, 0, 0),
(90, 'Giant Rat', 6, 6, 0, 0),
(91, 'Giant Rat', 6, 6, 0, 0),
(92, 'Giant Rat', 6, 6, 0, 0),
(93, 'Giant Rat', 6, 6, 0, 0),
(94, 'Giant Rat', 6, 8, 3, 6),
(95, 'Giant Rat', 6, 6, 0, 0),
(96, 'Giant Rat', 6, 6, 0, 0),
(98, 'Giant Rat', 6, 6, 0, 0),
(99, 'Giant Rat', 6, 6, 0, 0),
(100, 'Giant Rat', 6, 6, 0, 0),
(101, 'Giant Rat', 6, 6, 0, 0),
(102, 'Giant Rat', 6, 6, 0, 0),
(103, 'Giant Rat', 6, 6, 0, 0),
(104, 'Giant Rat', 6, 6, 0, 0),
(105, 'Giant Rat', 6, 6, 0, 0),
(106, 'Giant Rat', 6, 6, 0, 0),
(107, 'Giant Rat', 6, 6, 0, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `armor`
--

CREATE TABLE IF NOT EXISTS `armor` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `defense` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `armor`
--

INSERT INTO `armor` (`id`, `name`, `price`, `defense`) VALUES
(1, 'Loincloth', 10, 5),
(2, 'Shirt', 15, 50),
(3, 'Skin Armor', 100, 400),
(4, 'Linothorax', 320, 900),
(5, 'Cuirass', 515, 1200),
(6, 'Leather Armor', 875, 1850),
(7, 'Chainmail', 1125, 2200),
(8, 'Plate Armor', 2100, 3100),
(9, 'Bronze Armor', 2950, 4250),
(10, 'Steel Armor', 3900, 5150),
(11, 'Golden Armor', 5000, 6300),
(12, 'Diamond Armor', 8325, 7250),
(13, 'Shiny Robe', 1250, 2575),
(14, 'Sorceress Skin', 4000, 4900),
(15, 'Invincible Cloak', 8150, 7100),
(16, 'Dragon Skull Armor', 9950, 8500),
(17, 'Dragon Skin', 9950, 8500),
(18, 'Tear of God', 15000, 9750),
(19, 'Giant Shell', 0, 400),
(20, 'Skeleton Armor', 0, 625),
(21, 'Evil Aura', 0, 1800),
(22, 'Human Skin Armor', 0, 2375),
(23, 'Apocalypse Armor', 0, 2925);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `city`
--

CREATE TABLE IF NOT EXISTS `city` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `region` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `city`
--

INSERT INTO `city` (`id`, `name`, `region`) VALUES
(1, 'Knael', 4),
(2, 'Troy', 4),
(3, 'Pacifa', 4),
(4, 'Onker', 4),
(5, 'Quiro', 4),
(6, 'Antsor', 4),
(7, 'Harbor', 3),
(8, 'Montse', 3),
(9, 'Laeks', 3),
(10, 'Vermon', 3),
(11, 'Nordberg', 3),
(12, 'Charcol', 5),
(13, 'Droins', 5),
(14, 'Mordor', 5),
(15, 'Unterdages', 5),
(16, 'Drakegor', 5),
(17, 'Xantr', 5),
(18, 'Yester', 5),
(19, 'Tomparf', 1),
(20, 'Preqeu', 1),
(21, 'Hansora', 1),
(22, 'Ismir', 1),
(23, 'Sempre City', 2),
(24, 'Nayak', 2),
(25, 'Umprivaklo', 2),
(26, 'Fjitsur', 2),
(27, 'Soyaki', 2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `creature`
--

CREATE TABLE IF NOT EXISTS `creature` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `attack` int(11) NOT NULL,
  `defense` int(11) NOT NULL,
  `max_health` int(11) NOT NULL,
  `health` int(11) NOT NULL,
  `gold` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  `spawn` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `creature`
--

INSERT INTO `creature` (`id`, `name`, `attack`, `defense`, `max_health`, `health`, `gold`, `experience`, `spawn`) VALUES
(1, 'Killer Bee', 3, 5, 10, 10, 2, 1, 1),
(2, 'Killer Bee', 3, 5, 10, 10, 2, 1, 1),
(3, 'Killer Bee', 3, 5, 10, 10, 2, 1, 1),
(4, 'Killer Bee', 3, 5, 10, 8, 2, 1, 1),
(5, 'Killer Bee', 3, 5, 10, 10, 2, 1, 1),
(6, 'Killer Bee', 3, 5, 10, 2, 2, 1, 1),
(7, 'Killer Bee', 3, 5, 10, 10, 2, 1, 1),
(8, 'Killer Bee', 3, 5, 10, 10, 2, 1, 1),
(9, 'Killer Bee', 3, 5, 10, 5, 2, 1, 1),
(10, 'Bat', 8, 10, 12, 12, 2, 5, 1),
(11, 'Bat', 8, 10, 12, 12, 2, 5, 1),
(12, 'Bat', 8, 10, 12, 12, 2, 5, 1),
(13, 'Bat', 8, 10, 12, 5, 2, 5, 1),
(14, 'Bat', 8, 10, 12, 12, 2, 5, 1),
(15, 'Bat', 8, 10, 12, 12, 2, 5, 1),
(16, 'Bat', 8, 10, 12, 12, 2, 5, 1),
(17, 'Bat', 8, 10, 12, 11, 2, 5, 1),
(18, 'Bat', 8, 10, 12, 12, 2, 5, 1),
(19, 'Bat', 8, 10, 12, 12, 2, 5, 1),
(20, 'Bat', 8, 10, 12, 12, 2, 5, 1),
(21, 'Bat', 8, 10, 12, 6, 2, 5, 1),
(22, 'Bat', 8, 10, 12, 12, 2, 5, 1),
(23, 'Imp', 4, 15, 20, 20, 5, 8, 1),
(24, 'Imp', 4, 15, 20, 19, 5, 8, 1),
(25, 'Imp', 4, 15, 20, 20, 5, 8, 1),
(26, 'Imp', 4, 15, 20, 20, 5, 8, 1),
(27, 'Imp', 4, 15, 20, 20, 5, 8, 1),
(28, 'Imp', 4, 15, 20, 20, 5, 8, 1),
(29, 'Imp', 4, 15, 20, 20, 5, 8, 1),
(30, 'Imp', 4, 15, 20, 2, 5, 8, 1),
(31, 'Imp', 4, 15, 20, 20, 5, 8, 1),
(32, 'Imp', 4, 15, 20, 20, 5, 8, 1),
(33, 'Imp', 4, 15, 20, 20, 5, 8, 1),
(34, 'Tarantula', 18, 7, 15, 15, 7, 10, 1),
(35, 'Tarantula', 18, 7, 15, 11, 7, 10, 1),
(36, 'Tarantula', 18, 7, 15, 15, 7, 10, 1),
(37, 'Tarantula', 18, 7, 15, 15, 7, 10, 1),
(38, 'Tarantula', 18, 7, 15, 15, 7, 10, 1),
(39, 'Tarantula', 18, 7, 15, 15, 7, 10, 1),
(40, 'Tarantula', 18, 7, 15, 3, 7, 10, 1),
(41, 'Tarantula', 18, 7, 15, 15, 7, 10, 1),
(42, 'Tarantula', 18, 7, 15, 15, 7, 10, 1),
(43, 'Goblin', 30, 10, 25, 25, 10, 12, 1),
(44, 'Goblin', 30, 10, 25, 25, 10, 12, 1),
(45, 'Goblin', 30, 10, 25, 12, 10, 12, 1),
(46, 'Goblin', 30, 10, 25, 25, 10, 12, 1),
(47, 'Goblin', 30, 10, 25, 25, 10, 12, 1),
(48, 'Goblin', 30, 10, 25, 25, 10, 12, 1),
(49, 'Goblin', 30, 10, 25, 25, 10, 12, 1),
(50, 'Goblin', 30, 10, 25, 5, 10, 12, 1),
(51, 'Goblin', 30, 10, 25, 25, 10, 12, 1),
(52, 'Goblin', 30, 10, 25, 25, 10, 12, 1),
(53, 'Goblin', 30, 10, 25, 25, 10, 12, 1),
(54, 'Orc', 30, 20, 30, 30, 10, 15, 1),
(55, 'Orc', 30, 20, 30, 30, 10, 15, 1),
(56, 'Orc', 30, 20, 30, 30, 10, 15, 1),
(57, 'Orc', 30, 20, 30, 23, 10, 15, 1),
(58, 'Orc', 30, 20, 30, 30, 10, 15, 1),
(59, 'Orc', 30, 20, 30, 30, 10, 15, 1),
(60, 'Orc', 30, 20, 30, 30, 10, 15, 1),
(61, 'Orc', 30, 20, 30, 30, 10, 15, 1),
(62, 'Orc', 30, 20, 30, 3, 10, 15, 1),
(63, 'Orc', 30, 20, 30, 30, 10, 15, 1),
(64, 'Orc', 30, 20, 30, 45, 10, 15, 1),
(65, 'Orc', 30, 20, 30, 30, 10, 15, 1),
(66, 'Orc', 30, 20, 30, 30, 10, 15, 1),
(67, 'Orc', 30, 20, 30, 30, 10, 15, 1),
(68, 'Orc', 30, 20, 30, 30, 10, 15, 1),
(69, 'Kobold', 30, 60, 110, 110, 25, 22, 2),
(70, 'Kobold', 30, 60, 110, 110, 25, 22, 2),
(71, 'Kobold', 30, 60, 110, 110, 25, 22, 2),
(72, 'Kobold', 30, 60, 110, 75, 25, 22, 2),
(73, 'Kobold', 30, 60, 110, 110, 25, 22, 2),
(74, 'Kobold', 30, 60, 110, 110, 25, 22, 2),
(75, 'Kobold', 30, 60, 110, 110, 25, 22, 2),
(76, 'Kobold', 30, 60, 110, 110, 25, 22, 2),
(77, 'Kobold', 30, 60, 110, 63, 25, 22, 2),
(78, 'Kobold', 30, 60, 110, 110, 25, 22, 2),
(79, 'Kobold', 30, 60, 110, 110, 25, 22, 2),
(80, 'Kobold', 30, 60, 110, 110, 25, 22, 2),
(81, 'Kobold', 30, 60, 110, 22, 25, 22, 2),
(82, 'Kobold', 30, 60, 110, 110, 25, 22, 2),
(83, 'Kobold', 30, 60, 110, 110, 25, 22, 2),
(84, 'Kobold', 30, 60, 110, 109, 25, 22, 2),
(85, 'Kobold', 30, 60, 110, 110, 25, 22, 2),
(86, 'Gargoyle', 44, 30, 90, 90, 20, 25, 2),
(87, 'Gargoyle', 44, 30, 90, 74, 20, 25, 2),
(88, 'Gargoyle', 44, 30, 90, 90, 20, 25, 2),
(89, 'Gargoyle', 44, 30, 90, 56, 20, 25, 2),
(90, 'Gargoyle', 44, 30, 90, 90, 20, 25, 2),
(91, 'Gargoyle', 44, 30, 90, 90, 20, 25, 2),
(92, 'Gargoyle', 44, 30, 90, 90, 20, 25, 2),
(93, 'Gargoyle', 44, 30, 90, 11, 20, 25, 2),
(94, 'Gargoyle', 44, 30, 90, 90, 20, 25, 2),
(95, 'Gargoyle', 44, 30, 90, 90, 20, 25, 2),
(96, 'Ghost', 40, 65, 150, 150, 0, 40, 2),
(97, 'Ghost', 40, 65, 150, 150, 0, 40, 2),
(98, 'Ghost', 40, 65, 150, 33, 0, 40, 2),
(99, 'Ghost', 40, 65, 150, 150, 0, 40, 2),
(100, 'Ghost', 40, 65, 150, 150, 0, 40, 2),
(101, 'Ghost', 40, 65, 150, 150, 0, 40, 2),
(102, 'Ghost', 40, 65, 150, 150, 0, 40, 2),
(103, 'Ghost', 40, 65, 150, 150, 0, 40, 2),
(104, 'Ghost', 40, 65, 150, 150, 0, 40, 2),
(105, 'Ghost', 40, 65, 150, 150, 0, 40, 2),
(106, 'Magog', 60, 60, 60, 60, 60, 20, 2),
(107, 'Magog', 60, 60, 60, 60, 60, 20, 2),
(108, 'Magog', 60, 60, 60, 60, 60, 20, 2),
(109, 'Magog', 60, 60, 60, 60, 60, 20, 2),
(110, 'Magog', 60, 60, 60, 60, 60, 20, 2),
(111, 'Magog', 60, 60, 60, 12, 60, 20, 2),
(112, 'Magog', 60, 60, 60, 60, 60, 20, 2),
(113, 'Magog', 60, 60, 60, 60, 60, 20, 2),
(114, 'Magog', 60, 60, 60, 60, 60, 20, 2),
(115, 'Magog', 60, 60, 60, 60, 60, 20, 2),
(116, 'Magog', 60, 60, 60, 60, 60, 20, 2),
(117, 'Magog', 60, 60, 60, 60, 60, 20, 2),
(118, 'Magog', 60, 60, 60, 60, 60, 20, 2),
(119, 'Magog', 60, 60, 60, 60, 60, 20, 2),
(120, 'Magog', 60, 60, 60, 60, 60, 20, 2),
(121, 'Magog', 60, 60, 60, 60, 60, 20, 2),
(122, 'Wraith', 75, 25, 75, 75, 20, 35, 2),
(123, 'Wraith', 75, 25, 75, 75, 20, 35, 2),
(124, 'Wraith', 75, 25, 75, 75, 20, 35, 2),
(125, 'Wraith', 75, 25, 75, 75, 20, 35, 2),
(126, 'Wraith', 75, 25, 75, 75, 20, 35, 2),
(127, 'Wraith', 75, 25, 75, 75, 20, 35, 2),
(128, 'Troll', 95, 70, 150, 150, 80, 50, 3),
(129, 'Troll', 95, 70, 150, 150, 80, 50, 3),
(130, 'Troll', 95, 70, 150, 104, 80, 50, 3),
(131, 'Troll', 95, 70, 150, 150, 80, 50, 3),
(132, 'Troll', 95, 70, 150, 150, 80, 50, 3),
(133, 'Troll', 95, 70, 150, 150, 80, 50, 3),
(134, 'Troll', 95, 70, 150, 150, 80, 50, 3),
(135, 'Troll', 95, 70, 150, 150, 80, 50, 3),
(136, 'Troll', 95, 70, 150, 150, 80, 50, 3),
(137, 'Golem', 100, 75, 135, 135, 30, 50, 3),
(138, 'Golem', 100, 75, 135, 135, 30, 50, 3),
(139, 'Golem', 100, 75, 135, 135, 30, 50, 3),
(140, 'Golem', 100, 75, 135, 135, 30, 50, 3),
(141, 'Golem', 100, 75, 135, 105, 30, 50, 3),
(142, 'Golem', 100, 75, 135, 135, 30, 50, 3),
(143, 'Golem', 100, 75, 135, 135, 30, 50, 3),
(145, 'Golem', 100, 75, 135, 132, 30, 50, 3),
(146, 'Golem', 100, 75, 135, 135, 30, 50, 3),
(147, 'Golem', 100, 75, 135, 135, 30, 50, 3),
(148, 'Golem', 100, 75, 135, 135, 30, 50, 3),
(149, 'Demon', 150, 45, 100, 100, 55, 55, 3),
(150, 'Demon', 150, 45, 100, 100, 55, 55, 3),
(151, 'Demon', 150, 45, 100, 100, 55, 55, 3),
(152, 'Demon', 150, 45, 100, 56, 55, 55, 3),
(153, 'Demon', 150, 45, 100, 100, 55, 55, 3),
(154, 'Demon', 150, 45, 100, 100, 55, 55, 3),
(155, 'Demon', 150, 45, 100, 100, 55, 55, 3),
(156, 'Troglodyte', 120, 80, 180, 180, 45, 58, 3),
(157, 'Troglodyte', 120, 80, 180, 180, 45, 58, 3),
(158, 'Troglodyte', 120, 80, 180, 180, 45, 58, 3),
(159, 'Troglodyte', 120, 80, 180, 180, 45, 58, 3),
(160, 'Troglodyte', 120, 80, 180, 180, 45, 58, 3),
(161, 'Troglodyte', 120, 80, 180, 122, 45, 58, 3),
(162, 'Troglodyte', 120, 80, 180, 180, 45, 58, 3),
(163, 'Troglodyte', 120, 80, 180, 180, 45, 58, 3),
(164, 'Troglodyte', 120, 80, 180, 180, 45, 58, 3),
(165, 'Valkyrie', 100, 110, 220, 220, 50, 60, 3),
(166, 'Valkyrie', 100, 110, 220, 220, 50, 60, 3),
(167, 'Valkyrie', 100, 110, 220, 220, 50, 60, 3),
(168, 'Valkyrie', 100, 110, 220, 220, 50, 60, 3),
(169, 'Valkyrie', 100, 110, 220, 220, 50, 60, 3),
(170, 'Valkyrie', 100, 110, 220, 220, 50, 60, 3),
(171, 'Valkyrie', 100, 110, 220, 220, 50, 60, 3),
(172, 'Valkyrie', 100, 110, 220, 198, 50, 60, 3),
(173, 'Valkyrie', 100, 110, 220, 220, 50, 60, 3),
(174, 'Valkyrie', 100, 110, 220, 220, 50, 60, 3),
(175, 'Valkyrie', 100, 110, 220, 220, 50, 60, 3),
(176, 'Valkyrie', 100, 110, 220, 220, 50, 60, 3),
(177, 'Valkyrie', 100, 110, 220, 220, 50, 60, 3),
(178, 'Valkyrie', 100, 110, 220, 220, 50, 60, 3),
(179, 'Centaur', 165, 190, 150, 150, 44, 65, 3),
(180, 'Centaur', 165, 190, 150, 150, 44, 65, 3),
(181, 'Centaur', 165, 190, 150, 150, 44, 65, 3),
(182, 'Centaur', 165, 190, 150, 150, 44, 65, 3),
(183, 'Centaur', 165, 190, 150, 150, 44, 65, 3),
(184, 'Centaur', 165, 190, 150, 150, 44, 65, 3),
(185, 'Centaur', 165, 190, 150, 150, 44, 65, 3),
(186, 'Centaur', 165, 190, 150, 150, 44, 65, 3),
(187, 'Gorgon', 185, 200, 250, 250, 60, 68, 4),
(188, 'Gorgon', 185, 200, 250, 250, 60, 68, 4),
(189, 'Gorgon', 185, 200, 250, 250, 60, 68, 4),
(190, 'Gorgon', 185, 200, 250, 219, 60, 68, 4),
(191, 'Gorgon', 185, 200, 250, 250, 60, 68, 4),
(192, 'Gorgon', 185, 200, 250, 250, 60, 68, 4),
(193, 'Gorgon', 185, 200, 250, 250, 60, 68, 4),
(194, 'Gorgon', 185, 200, 250, 250, 60, 68, 4),
(195, 'Cyclops', 240, 285, 230, 230, 40, 72, 4),
(196, 'Cyclops', 240, 285, 230, 230, 40, 72, 4),
(197, 'Cyclops', 240, 285, 230, 230, 40, 72, 4),
(198, 'Cyclops', 240, 285, 230, 230, 40, 72, 4),
(199, 'Cyclops', 240, 285, 230, 57, 40, 72, 4),
(200, 'Cyclops', 240, 285, 230, 230, 40, 72, 4),
(201, 'Cyclops', 240, 285, 230, 230, 40, 72, 4),
(202, 'Cyclops', 240, 285, 230, 230, 40, 72, 4),
(203, 'Hydra', 290, 300, 250, 250, 50, 75, 4),
(204, 'Hydra', 290, 300, 250, 250, 50, 75, 4),
(205, 'Hydra', 290, 300, 250, 250, 50, 75, 4),
(206, 'Hydra', 290, 300, 250, 250, 50, 75, 4),
(207, 'Hydra', 290, 300, 250, 250, 50, 75, 4),
(208, 'Hydra', 290, 300, 250, 202, 50, 75, 4),
(209, 'Hydra', 290, 300, 250, 250, 50, 75, 4),
(210, 'Hydra', 290, 300, 250, 250, 50, 75, 4),
(211, 'Hydra', 290, 300, 250, 250, 50, 75, 4),
(212, 'Hydra', 290, 300, 250, 48, 50, 75, 4),
(213, 'Hydra', 290, 300, 250, 250, 50, 75, 4),
(214, 'Hydra', 290, 300, 250, 250, 50, 75, 4),
(215, 'Hydra', 290, 300, 250, 250, 50, 75, 4),
(216, 'Hydra', 290, 300, 250, 1, 50, 75, 4),
(217, 'Hydra', 290, 300, 250, 250, 50, 75, 4),
(218, 'Pterodactyl', 405, 360, 200, 200, 20, 77, 4),
(219, 'Pterodactyl', 405, 360, 200, 200, 20, 77, 4),
(220, 'Pterodactyl', 405, 360, 200, 200, 20, 77, 4),
(221, 'Pterodactyl', 405, 360, 200, 200, 20, 77, 4),
(222, 'Pterodactyl', 405, 360, 200, 6, 20, 77, 4),
(223, 'Pterodactyl', 405, 360, 200, 200, 20, 77, 4),
(224, 'Pterodactyl', 405, 360, 200, 200, 20, 77, 4),
(225, 'Titan', 680, 560, 800, 800, 0, 250, 5),
(226, 'Titan', 680, 560, 800, 800, 0, 250, 5),
(227, 'Titan', 680, 560, 800, 799, 0, 250, 5),
(228, 'Titan', 680, 560, 800, 800, 0, 250, 5),
(229, 'Titan', 680, 560, 800, 800, 0, 250, 5),
(230, 'Minotaur', 520, 490, 590, 590, 120, 200, 5),
(231, 'Minotaur', 520, 490, 590, 590, 120, 200, 5),
(232, 'Minotaur', 520, 490, 590, 590, 120, 200, 5),
(233, 'Minotaur', 520, 490, 590, 590, 120, 200, 5),
(234, 'Minotaur', 520, 490, 590, 590, 120, 200, 5),
(235, 'Minotaur', 520, 490, 590, 590, 120, 200, 5),
(236, 'Minotaur', 520, 490, 590, 590, 120, 200, 5),
(237, 'Behemoth', 610, 310, 890, 890, 105, 280, 5),
(238, 'Behemoth', 610, 310, 890, 890, 105, 280, 5),
(239, 'Behemoth', 610, 310, 890, 890, 105, 280, 5),
(240, 'Behemoth', 610, 310, 890, 890, 105, 280, 5),
(241, 'Behemoth', 610, 310, 890, 890, 105, 280, 5),
(242, 'Behemoth', 610, 310, 890, 890, 105, 280, 5),
(243, 'Behemoth', 610, 310, 890, 890, 105, 280, 5),
(244, 'Behemoth', 610, 310, 890, 890, 105, 280, 5),
(245, 'Behemoth', 610, 310, 890, 890, 105, 280, 5),
(246, 'Behemoth', 610, 310, 890, 890, 105, 280, 5),
(247, 'Behemoth', 610, 310, 890, 890, 105, 280, 5),
(248, 'Wyvern', 785, 610, 725, 725, 200, 300, 5),
(249, 'Wyvern', 785, 610, 725, 725, 200, 300, 5),
(250, 'Wyvern', 785, 610, 725, 725, 200, 300, 5),
(251, 'Wyvern', 785, 610, 725, 725, 200, 300, 5),
(252, 'Wyvern', 785, 610, 725, 725, 200, 300, 5),
(253, 'Wyvern', 785, 610, 725, 725, 200, 300, 5),
(254, 'Wyvern', 785, 610, 725, 725, 200, 300, 5),
(255, 'Wyvern', 785, 610, 725, 725, 200, 300, 5),
(256, 'Red Dragon', 2500, 2500, 1000, 1000, 1500, 500, 1),
(257, 'Green Dragon', 2500, 4500, 1000, 1000, 1500, 650, 2),
(258, 'Brown Dragon', 3000, 3000, 2000, 2000, 1500, 650, 3),
(259, 'Black Dragon', 5000, 5000, 3000, 3000, 2500, 850, 4),
(260, 'White Dragon', 7500, 6000, 4000, 4000, 5000, 1000, 5);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `hero`
--

CREATE TABLE IF NOT EXISTS `hero` (
  `id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `health` int(11) NOT NULL,
  `stamina` int(11) NOT NULL,
  `intelligence` int(11) NOT NULL,
  `charisma` int(11) NOT NULL,
  `resilience` int(11) NOT NULL,
  `person` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `hero`
--

INSERT INTO `hero` (`id`, `level`, `health`, `stamina`, `intelligence`, `charisma`, `resilience`, `person`) VALUES
(1, 9, 1035, 30, 70, 80, 60, 1),
(2, 35, 3585, 50, 40, 10, 30, 2),
(3, 2, 500, 80, 30, 60, 70, 3),
(4, 16, 1760, 80, 90, 50, 60, 4),
(5, 11, 1530, 10, 30, 90, 20, 5),
(6, 3, 420, 90, 20, 80, 50, 6),
(7, 14, 1350, 60, 30, 70, 60, 7),
(8, 9, 1370, 20, 90, 60, 70, 8),
(9, 20, 2630, 90, 20, 90, 40, 9),
(10, 1, 210, 10, 80, 30, 30, 10);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `npc`
--

CREATE TABLE IF NOT EXISTS `npc` (
  `id` int(11) NOT NULL,
  `health` int(11) NOT NULL,
  `profession` varchar(100) NOT NULL,
  `city` int(11) NOT NULL,
  `person` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `npc`
--

INSERT INTO `npc` (`id`, `health`, `profession`, `city`, `person`) VALUES
(1, 10000, 'Boss', 20, 11),
(2, 22000, 'Boss', 25, 12),
(3, 28000, 'Boss', 11, 13),
(4, 35500, 'Boss', 3, 14),
(5, 50000, 'Boss', 18, 15),
(6, 250, 'Blacksmith', 1, 16),
(7, 250, 'Apothecary', 1, 17),
(8, 250, 'Tailor', 1, 18),
(9, 250, 'Innkeeper', 1, 19),
(10, 250, 'Craftsman', 1, 20),
(11, 250, 'Pet Trainer', 1, 21),
(12, 250, 'Elder', 1, 22),
(13, 250, 'Blacksmith', 2, 23),
(14, 250, 'Apothecary', 2, 24),
(15, 250, 'Tailor', 2, 25),
(16, 250, 'Innkeeper', 2, 26),
(17, 250, 'Craftsman', 2, 27),
(18, 250, 'Pet Trainer', 2, 28),
(19, 250, 'Elder', 2, 29),
(20, 250, 'Blacksmith', 3, 30),
(21, 250, 'Apothecary', 3, 31),
(22, 250, 'Tailor', 3, 32),
(23, 250, 'Innkeeper', 3, 33),
(24, 250, 'Craftsman', 3, 34),
(25, 250, 'Pet Trainer', 3, 35),
(26, 250, 'Elder', 3, 36),
(27, 250, 'Blacksmith', 4, 37),
(28, 250, 'Apothecary', 4, 38),
(29, 250, 'Tailor', 4, 39),
(30, 250, 'Innkeeper', 4, 40),
(31, 250, 'Craftsman', 4, 41),
(32, 250, 'Pet Trainer', 4, 42),
(33, 250, 'Elder', 4, 43),
(34, 250, 'Blacksmith', 5, 44),
(35, 250, 'Apothecary', 5, 45),
(36, 250, 'Tailor', 5, 46),
(37, 250, 'Innkeeper', 5, 47),
(38, 250, 'Craftsman', 5, 48),
(39, 250, 'Pet Trainer', 5, 49),
(40, 250, 'Elder', 5, 50),
(41, 250, 'Blacksmith', 6, 51),
(42, 250, 'Apothecary', 6, 52),
(43, 250, 'Tailor', 6, 53),
(44, 250, 'Innkeeper', 6, 54),
(45, 250, 'Craftsman', 6, 55),
(46, 250, 'Pet Trainer', 6, 56),
(47, 250, 'Elder', 6, 57),
(48, 250, 'Blacksmith', 7, 58),
(49, 250, 'Apothecary', 7, 59),
(50, 250, 'Tailor', 7, 60),
(51, 250, 'Innkeeper', 7, 61),
(52, 250, 'Craftsman', 7, 62),
(53, 250, 'Pet Trainer', 7, 63),
(54, 250, 'Elder', 7, 64),
(55, 250, 'Blacksmith', 8, 65),
(56, 250, 'Apothecary', 8, 66),
(57, 250, 'Tailor', 8, 67),
(58, 250, 'Innkeeper', 8, 68),
(59, 250, 'Craftsman', 8, 69),
(60, 250, 'Pet Trainer', 8, 70),
(61, 250, 'Elder', 8, 71),
(62, 250, 'Blacksmith', 9, 72),
(63, 250, 'Apothecary', 9, 73),
(64, 250, 'Tailor', 9, 74),
(65, 250, 'Innkeeper', 9, 75),
(66, 250, 'Craftsman', 9, 76),
(67, 250, 'Pet Trainer', 9, 77),
(68, 250, 'Elder', 9, 78),
(69, 250, 'Blacksmith', 10, 79),
(70, 250, 'Apothecary', 10, 80),
(71, 250, 'Tailor', 10, 81),
(72, 250, 'Innkeeper', 10, 82),
(73, 250, 'Craftsman', 10, 83),
(74, 250, 'Pet Trainer', 10, 84),
(75, 250, 'Elder', 10, 85),
(76, 250, 'Blacksmith', 11, 86),
(77, 250, 'Apothecary', 11, 87),
(78, 250, 'Tailor', 11, 88),
(79, 250, 'Innkeeper', 11, 89),
(80, 250, 'Craftsman', 11, 90),
(81, 250, 'Pet Trainer', 11, 91),
(82, 250, 'Elder', 11, 92),
(83, 250, 'Blacksmith', 12, 93),
(84, 250, 'Apothecary', 12, 94),
(85, 250, 'Tailor', 12, 95),
(86, 250, 'Innkeeper', 12, 96),
(87, 250, 'Craftsman', 12, 97),
(88, 250, 'Pet Trainer', 12, 98),
(89, 250, 'Elder', 12, 99),
(90, 250, 'Blacksmith', 13, 100),
(91, 250, 'Apothecary', 13, 101),
(92, 250, 'Tailor', 13, 102),
(93, 250, 'Innkeeper', 13, 103),
(94, 250, 'Craftsman', 13, 104),
(95, 250, 'Pet Trainer', 13, 105),
(96, 250, 'Elder', 13, 106),
(97, 250, 'Blacksmith', 14, 107),
(98, 250, 'Apothecary', 14, 108),
(99, 250, 'Tailor', 14, 109),
(100, 250, 'Innkeeper', 14, 110),
(101, 250, 'Craftsman', 14, 111),
(102, 250, 'Pet Trainer', 14, 112),
(103, 250, 'Elder', 14, 113),
(104, 250, 'Blacksmith', 15, 114),
(105, 250, 'Apothecary', 15, 115),
(106, 250, 'Tailor', 15, 116),
(107, 250, 'Innkeeper', 15, 117),
(108, 250, 'Craftsman', 15, 118),
(109, 250, 'Pet Trainer', 15, 119),
(110, 250, 'Elder', 15, 120),
(111, 250, 'Blacksmith', 16, 121),
(112, 250, 'Apothecary', 16, 122),
(113, 250, 'Tailor', 16, 123),
(114, 250, 'Innkeeper', 16, 124),
(115, 250, 'Craftsman', 16, 125),
(116, 250, 'Pet Trainer', 16, 126),
(117, 250, 'Elder', 16, 127),
(118, 250, 'Blacksmith', 17, 128),
(119, 250, 'Apothecary', 17, 129),
(120, 250, 'Tailor', 17, 130),
(121, 250, 'Innkeeper', 17, 131),
(122, 250, 'Craftsman', 17, 132),
(123, 250, 'Pet Trainer', 17, 133),
(124, 250, 'Elder', 17, 134),
(125, 250, 'Blacksmith', 18, 135),
(126, 250, 'Apothecary', 18, 136),
(127, 250, 'Tailor', 18, 137),
(128, 250, 'Innkeeper', 18, 138),
(129, 250, 'Craftsman', 18, 139),
(130, 250, 'Pet Trainer', 18, 140),
(131, 250, 'Elder', 18, 141),
(132, 250, 'Blacksmith', 19, 142),
(133, 250, 'Apothecary', 19, 143),
(134, 250, 'Tailor', 19, 144),
(135, 250, 'Innkeeper', 19, 145),
(136, 250, 'Craftsman', 19, 146),
(137, 250, 'Pet Trainer', 19, 147),
(138, 250, 'Elder', 19, 148),
(139, 250, 'Blacksmith', 20, 149),
(140, 250, 'Apothecary', 20, 150),
(141, 250, 'Tailor', 20, 151),
(142, 250, 'Innkeeper', 20, 152),
(143, 250, 'Craftsman', 20, 153),
(144, 250, 'Pet Trainer', 20, 154),
(145, 250, 'Elder', 20, 155),
(146, 250, 'Blacksmith', 21, 156),
(147, 250, 'Apothecary', 21, 157),
(148, 250, 'Tailor', 21, 158),
(149, 250, 'Innkeeper', 21, 159),
(150, 250, 'Craftsman', 21, 160),
(151, 250, 'Pet Trainer', 21, 161),
(152, 250, 'Elder', 21, 162),
(153, 250, 'Blacksmith', 22, 163),
(154, 250, 'Apothecary', 22, 164),
(155, 250, 'Tailor', 22, 165),
(156, 250, 'Innkeeper', 22, 166),
(157, 250, 'Craftsman', 22, 167),
(158, 250, 'Pet Trainer', 22, 168),
(159, 250, 'Elder', 22, 169),
(160, 250, 'Blacksmith', 23, 170),
(161, 250, 'Apothecary', 23, 171),
(162, 250, 'Tailor', 23, 172),
(163, 250, 'Innkeeper', 23, 173),
(164, 250, 'Craftsman', 23, 174),
(165, 250, 'Pet Trainer', 23, 175),
(166, 250, 'Elder', 23, 176),
(167, 250, 'Blacksmith', 24, 177),
(168, 250, 'Apothecary', 24, 178),
(169, 250, 'Tailor', 24, 179),
(170, 250, 'Innkeeper', 24, 180),
(171, 250, 'Craftsman', 24, 181),
(172, 250, 'Pet Trainer', 24, 182),
(173, 250, 'Elder', 24, 183),
(174, 250, 'Blacksmith', 25, 184),
(175, 250, 'Apothecary', 25, 185),
(176, 250, 'Tailor', 25, 186),
(177, 250, 'Innkeeper', 25, 187),
(178, 250, 'Craftsman', 25, 188),
(179, 250, 'Pet Trainer', 25, 189),
(180, 250, 'Elder', 25, 190),
(181, 250, 'Blacksmith', 26, 191),
(182, 250, 'Apothecary', 26, 192),
(183, 250, 'Tailor', 26, 193),
(184, 250, 'Innkeeper', 26, 194),
(185, 250, 'Craftsman', 26, 195),
(186, 250, 'Pet Trainer', 26, 196),
(187, 250, 'Elder', 26, 197),
(188, 250, 'Blacksmith', 27, 198),
(189, 250, 'Apothecary', 27, 199),
(190, 250, 'Tailor', 27, 200),
(191, 250, 'Innkeeper', 27, 201),
(192, 250, 'Craftsman', 27, 202),
(193, 250, 'Pet Trainer', 27, 203),
(194, 250, 'Elder', 27, 204);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `sex` char(1) NOT NULL,
  `max_health` int(11) NOT NULL,
  `attack` int(11) NOT NULL,
  `defense` int(11) NOT NULL,
  `agility` int(11) NOT NULL,
  `experience` int(11) NOT NULL,
  `gold` int(11) NOT NULL,
  `weapon` int(11) NOT NULL,
  `armor` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `person`
--

INSERT INTO `person` (`id`, `name`, `sex`, `max_health`, `attack`, `defense`, `agility`, `experience`, `gold`, `weapon`, `armor`) VALUES
(1, 'Konan', 'm', 1235, 120, 85, 50, 3652, 1850, 22, 4),
(2, 'Captain America', 'm', 3585, 700, 165, 183, 4979965, 1800, 36, 17),
(3, 'Mega Mindy', 'f', 500, 40, 60, 15, 540, 110, 46, 8),
(4, 'Catwoman', 'f', 1760, 60, 100, 80, 25700, 1030, 47, 2),
(5, 'Buzz Lightyear', 'm', 1530, 185, 160, 60, 6380, 1345, 6, 11),
(6, 'Mario', 'm', 420, 24, 28, 27, 697, 160, 16, 7),
(7, 'Shrek', 'm', 1360, 70, 68, 30, 14720, 467, 29, 4),
(8, 'Dante', 'm', 1370, 93, 74, 112, 3702, 305, 11, 5),
(9, 'Zelda', 'f', 2630, 339, 512, 109, 77443, 1925, 30, 15),
(10, 'Super MeatBoy', 'm', 250, 5, 8, 2, 205, 32, 26, 1),
(11, 'Bowser', 'm', 10000, 400, 100, 80, 500000, 10000, 48, 19),
(12, 'Ser Cauthrien', 'f', 22000, 800, 270, 120, 800000, 14000, 49, 20),
(13, 'Magician Faust', 'm', 28000, 1500, 325, 100, 1500000, 20000, 50, 21),
(14, 'Beelzebub', 'm', 40000, 2500, 610, 40, 2700000, 25000, 51, 22),
(15, 'The Demi-Fiend', 'm', 50000, 3800, 800, 100, 5200000, 40000, 52, 23),
(16, 'Ryn''den', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(17, 'Ghas', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(18, 'Torhin', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(19, 'Sliseror', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(20, 'En''war', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(21, 'Usttaia', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(22, 'Polran', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(23, 'Issrak', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(24, 'Tredrakel', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(25, 'Phoaughough', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(26, 'Urnlor', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(27, 'Ioma', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(28, 'Er-rothon', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(29, 'Samgha', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(30, 'Oldoight', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(31, 'Oughattonosy', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(32, 'Radardtan', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(33, 'Ir''ech', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(34, 'Ashzos', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(35, 'Nyswhon', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(36, 'Perer', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(37, 'Tonpryn', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(38, 'Chrorad', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(39, 'Deemtor', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(40, 'Ingurn', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(41, 'Luzslor', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(42, 'Burkelem', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(43, 'Chel', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(44, 'Drainatin', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(45, 'Mossay', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(46, 'Nyetlor', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(47, 'Therton', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(48, 'Kotaj', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(49, 'Nimani', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(50, 'Isuske', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(51, 'Ens', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(52, 'Chaquean', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(53, 'Vamlye', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(54, 'Gum', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(55, 'Ris''ran', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(56, 'Peroust', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(57, 'Enys', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(58, 'Echuf', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(59, 'Liyese', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(60, 'Ach''ran', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(61, 'Essold', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(62, 'Uema', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(63, 'Xilent', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(64, 'Nallyeo', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(65, 'Undald', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(66, 'Athemis', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(67, 'Awas', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(68, 'Rodskel', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(69, 'Rainadan', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(70, 'Ightalever', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(71, 'Shyz', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(72, 'Entorm', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(73, 'Ina''vor''oph', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(74, 'Vernn', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(75, 'Tedar', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(76, 'Umedyn', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(77, 'Nahuz', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(78, 'Andril', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(79, 'Kalskel', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(80, 'Sulthin', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(81, 'Tais', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(82, 'Tidtan', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(83, 'Uinea', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(84, 'Schehin', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(85, 'Roth''gha', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(86, 'Hatck', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(87, 'Errhat', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(88, 'Onck', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(89, 'Awoldo', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(90, 'Yidini', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(91, 'Lyerak', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(92, 'Boek', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(93, 'Ildsul', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(94, 'Blen', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(95, 'Emm', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(96, 'Samran', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(97, 'Sulightust', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(98, 'Banor', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(99, 'Ineust', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(100, 'Ad''hat', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(101, 'Tassul', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(102, 'Eltasi', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(103, 'Lorrodque', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(104, 'Peus', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(105, 'Seel', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(106, 'Riltur', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(107, 'Eldtur', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(108, 'Enth''ati', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(109, 'Cheiahon', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(110, 'Hatackvesackos', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(111, 'Shyvor', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(112, 'Slias', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(113, 'Hiy', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(114, 'Ackurn', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(115, 'Dared-ild', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(116, 'Mukovo', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(117, 'As''ingy', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(118, 'L''mosler', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(119, 'Kinunt', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(120, 'Oira', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(121, 'Cer''ing', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(122, 'Ightyril', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(123, 'Stusmor', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(124, 'Aseyt', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(125, 'Anyso', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(126, 'Tic', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(127, 'Belbel', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(128, 'Rodkal', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(129, 'Iatas', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(130, 'Emhata', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(131, 'Raks', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(132, 'Eseise', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(133, 'Raninasam', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(134, 'It''lyea', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(135, 'Ittinat', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(136, 'Omath', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(137, 'Enjunt', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(138, 'Thitwar', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(139, 'Sniqua', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(140, 'Kellye', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(141, 'Sayul', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(142, 'Vorlersam', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(143, 'Sam''alei', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(144, 'Rak''om''ead', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(145, 'Skel''quea', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(146, 'Seysash', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(147, 'Zodovo', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(148, 'Unddarash', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(149, 'Zhap', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(150, 'Cerrad', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(151, 'Hiemkim', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(152, 'Nalelm', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(153, 'Y''taiough', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(154, 'Ealea', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(155, 'Etk', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(156, 'Cheal', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(157, 'Estina', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(158, 'Gyves', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(159, 'Kelbur', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(160, 'E''naliss', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(161, 'Oeny', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(162, 'Modraris', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(163, 'Elmuk', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(164, 'Myf', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(165, 'Lobih', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(166, 'Estuos', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(167, 'Bexym', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(168, 'Awpage', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(169, 'Yineu', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(170, 'Ler''rake', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(171, 'Ton''any', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(172, 'Rynz', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(173, 'Detinine', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(174, 'Beleia', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(175, 'Mirotug', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(176, 'Streyt', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(177, 'Lomada', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(178, 'Ineald', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(179, 'Wor''pero', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(180, 'Zeskel', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(181, 'Naeg', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(182, 'Irchee', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(183, 'Whuik', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(184, 'Rois', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(185, 'Omeng', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(186, 'Xosuny', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(187, 'Polrd', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(188, 'Bofege', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(189, 'Rillcha', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(190, 'Enad', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(191, 'Ormny', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(192, 'Athikim', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(193, 'Aldion', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(194, 'Perqueash', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(195, 'Therengwar', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(196, 'Athen', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(197, 'Fytas', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(198, 'Skel''um', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(199, 'Ryimtan', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(200, 'Ustur', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(201, 'Ranexi', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(202, 'Quigh', 'm', 250, 10, 10, 10, 0, 0, 1, 1),
(203, 'Vesest', 'f', 250, 10, 10, 10, 0, 0, 1, 1),
(204, 'Snalko', 'm', 250, 10, 10, 10, 0, 0, 1, 1);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `quest`
--

CREATE TABLE IF NOT EXISTS `quest` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `experience` int(11) NOT NULL,
  `gold` int(11) NOT NULL,
  `publisher` int(11) NOT NULL,
  `holder` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `quest`
--

INSERT INTO `quest` (`id`, `title`, `experience`, `gold`, `publisher`, `holder`) VALUES
(1, 'Find my shoe!', 300, 20, 132, 0),
(2, 'Sheepie number 9', 420, 10, 134, 0),
(3, 'Materials for a wheelchair', 350, 40, 137, 0),
(4, 'Prove your strength!', 500, 50, 138, 0),
(5, 'Find the Imp who stole my sword', 490, 30, 139, 0),
(6, 'Free the chicken', 290, 15, 142, 0),
(7, 'Football with a severed head', 510, 22, 143, 0),
(8, 'Worm eating contest', 480, 100, 144, 0),
(9, 'Kill my mother in law', 350, 150, 146, 0),
(10, 'Collect food for my brother', 450, 30, 147, 0),
(11, 'Where did he go?', 800, 65, 149, 0),
(12, 'Walking dead', 720, 43, 151, 0),
(13, 'My love for him...', 550, 80, 152, 0),
(14, 'The wise old Turtle', 970, 120, 154, 0),
(15, 'Collect the diamonds', 1100, 60, 158, 0),
(16, 'Travel to Sempre City in Sempre', 965, 86, 159, 0),
(17, 'Kotaj is missing', 960, 180, 162, 0),
(18, 'Get your ride', 480, 60, 165, 0),
(19, 'He has a mustache, kill him!', 1500, 250, 167, 0),
(20, 'Do you like appels?', 1220, 170, 169, 0),
(21, 'So you are alone?', 1125, 230, 171, 0),
(22, 'It''s a joke', 680, 270, 172, 0),
(23, 'His wolf must die!', 1600, 325, 175, 0),
(24, 'Destroy the tower', 1700, 400, 177, 2),
(25, 'Go to Fjitsur', 725, 200, 179, 0),
(26, 'Find the smurfs!', 1300, 500, 181, 0),
(27, 'Kill the Green Dragon', 2500, 1000, 187, 0),
(28, 'Kill the Queen!', 2500, 1000, 194, 0),
(29, 'There he goes', 1875, 700, 49, 0),
(30, 'Another godless man', 1620, 620, 51, 0),
(31, 'Fix the boat', 1235, 545, 53, 0),
(32, 'You find my wallet?', 950, 615, 54, 0),
(33, 'The golden hammer', 1940, 230, 55, 0),
(34, 'Me love shinies!', 1745, 450, 58, 0),
(35, 'Give me his eyes', 1460, 385, 60, 0),
(36, 'Away with the peace', 3000, 1200, 68, 0),
(37, 'He''s shitting on my porch', 2200, 400, 70, 5),
(38, 'Delicious soup', 1950, 300, 72, 0),
(39, 'More, more, more!', 1500, 750, 73, 0),
(40, 'Total carnage', 2650, 975, 75, 0),
(41, 'Annihilate that sucker!', 3500, 2000, 82, 0),
(42, 'So, you think you can dance?', 950, 750, 11, 0),
(43, 'The voice of Knael', 950, 750, 12, 0),
(44, 'The dark pit', 2250, 820, 14, 0),
(45, 'Where is the sun?', 2300, 780, 16, 0),
(46, 'My neighbour likes other women', 1800, 900, 18, 0),
(47, 'How much is not the question', 500, 2500, 21, 0),
(48, 'I saw it all', 1950, 450, 24, 0),
(49, 'Kill that wrench', 1850, 1500, 24, 0),
(50, 'Hail the paper boy!', 1250, 800, 28, 0),
(51, 'So I did', 1600, 700, 34, 0),
(52, 'I want chocolate!', 2100, 800, 36, 0),
(53, 'He has forest weed', 2350, 950, 38, 0),
(54, 'The paper boy is back', 2200, 1200, 40, 0),
(55, 'That fat sucker is gone', 2350, 1200, 45, 0),
(56, 'Found him, kill him!', 4500, 2500, 47, 0),
(57, 'The lost search', 2590, 0, 84, 0),
(58, 'Turtle killer', 3500, 750, 88, 0),
(59, 'Why? Because!', 3200, 450, 91, 0),
(60, 'For all the evil', 3100, 1650, 94, 0),
(61, 'My last meal', 2850, 1975, 96, 0),
(62, 'Yo mama!', 3650, 2130, 98, 0),
(63, 'Yo daddy!', 3650, 2130, 102, 0),
(64, 'I was born too early', 3475, 2540, 104, 0),
(65, 'The cave is destroyed', 3280, 1480, 105, 0),
(66, 'It was a Behemoth!', 3640, 2450, 105, 0),
(67, 'Damn this region!', 3850, 1850, 109, 0),
(68, 'One more strike', 4000, 3000, 117, 0),
(69, 'A dark land', 3950, 1200, 118, 0),
(70, 'The Demi-Fiend is the boss here', 3500, 1350, 120, 0),
(71, 'Screaming from Yester', 1250, 500, 123, 0),
(72, 'Persue the villagers', 4000, 2500, 130, 0),
(73, 'Be the hero!', 8000, 5000, 131, 0);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `region`
--

CREATE TABLE IF NOT EXISTS `region` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `holder` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `region`
--

INSERT INTO `region` (`id`, `name`, `holder`) VALUES
(1, 'Gursoy Island', 14),
(2, 'Sempre', 13),
(3, 'South Groval', 15),
(4, 'North Groval', 11),
(5, 'Breach', 12);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `weapon`
--

CREATE TABLE IF NOT EXISTS `weapon` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(11) NOT NULL,
  `attack` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `weapon`
--

INSERT INTO `weapon` (`id`, `name`, `price`, `attack`) VALUES
(1, 'Dirk', 10, 100),
(2, 'Poniard', 15, 150),
(3, 'Rondel', 28, 200),
(4, 'Dagger', 50, 250),
(5, 'Anelace', 70, 300),
(6, 'Baselard', 110, 425),
(7, 'Cinquedea', 130, 450),
(8, 'Stiletto', 150, 500),
(9, 'Machete', 300, 725),
(10, 'Katara', 550, 925),
(11, 'Shortsword', 300, 700),
(12, 'Falchion', 320, 755),
(13, 'Flamberge', 430, 875),
(14, 'Cutlass', 620, 1180),
(15, 'Spatha', 735, 1400),
(16, 'Rapier', 965, 1770),
(17, 'Claymore', 1000, 1950),
(18, 'Sabre', 1175, 2115),
(19, 'Broadsword', 1345, 2545),
(20, 'Scimitar', 1600, 2865),
(21, 'Katana', 1830, 3040),
(22, 'Longsword', 2200, 3200),
(23, 'Quarterstaff', 12, 125),
(24, 'Club', 200, 515),
(25, 'Mace', 520, 1075),
(26, 'War Hammer', 700, 1580),
(27, 'Flail', 1200, 2050),
(28, 'Morning Star', 1730, 2450),
(29, 'Maul', 2005, 2900),
(30, 'Pike', 100, 325),
(31, 'Pitchfork', 150, 400),
(32, 'Lance', 500, 1000),
(33, 'Swordstaff', 575, 1100),
(34, 'Glaive', 780, 1505),
(35, 'Partisan', 945, 1800),
(36, 'Guisarme', 1400, 2200),
(37, 'scythe', 1700, 2770),
(38, 'Voulge', 1920, 2925),
(39, 'ranseur', 2520, 3100),
(40, 'Halberd', 2850, 3500),
(41, 'Tomahawk', 210, 225),
(42, 'Ono', 310, 750),
(43, 'Battle Axe', 1685, 2800),
(44, 'Sling', 15, 115),
(45, 'bow', 525, 900),
(46, 'Longbow', 780, 1500),
(47, 'Crossbow', 1300, 2500),
(48, 'Shell Chain', 0, 1000),
(49, 'Soul Sword', 0, 2200),
(50, 'Obsidian Staff', 0, 3500),
(51, 'Knock-Down Hammer', 0, 4850),
(52, 'Axe of Terror', 0, 6200);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `animal`
--
ALTER TABLE `animal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexen voor tabel `armor`
--
ALTER TABLE `armor`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexen voor tabel `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `region` (`region`);

--
-- Indexen voor tabel `creature`
--
ALTER TABLE `creature`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `spawn` (`spawn`);

--
-- Indexen voor tabel `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `person` (`person`);

--
-- Indexen voor tabel `npc`
--
ALTER TABLE `npc`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `person` (`person`),
  ADD KEY `city` (`city`);

--
-- Indexen voor tabel `person`
--
ALTER TABLE `person`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `weapon` (`weapon`),
  ADD KEY `armor` (`armor`);

--
-- Indexen voor tabel `quest`
--
ALTER TABLE `quest`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `publisher` (`publisher`);

--
-- Indexen voor tabel `region`
--
ALTER TABLE `region`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `holder` (`holder`);

--
-- Indexen voor tabel `weapon`
--
ALTER TABLE `weapon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `animal`
--
ALTER TABLE `animal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=108;
--
-- AUTO_INCREMENT voor een tabel `armor`
--
ALTER TABLE `armor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT voor een tabel `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT voor een tabel `creature`
--
ALTER TABLE `creature`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=261;
--
-- AUTO_INCREMENT voor een tabel `hero`
--
ALTER TABLE `hero`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT voor een tabel `npc`
--
ALTER TABLE `npc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=195;
--
-- AUTO_INCREMENT voor een tabel `person`
--
ALTER TABLE `person`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=205;
--
-- AUTO_INCREMENT voor een tabel `quest`
--
ALTER TABLE `quest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT voor een tabel `region`
--
ALTER TABLE `region`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT voor een tabel `weapon`
--
ALTER TABLE `weapon`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- Beperkingen voor geëxporteerde tabellen
--

--
-- Beperkingen voor tabel `city`
--
ALTER TABLE `city`
  ADD CONSTRAINT `city_ibfk_1` FOREIGN KEY (`region`) REFERENCES `region` (`id`);

--
-- Beperkingen voor tabel `creature`
--
ALTER TABLE `creature`
  ADD CONSTRAINT `creature_ibfk_1` FOREIGN KEY (`spawn`) REFERENCES `region` (`id`);

--
-- Beperkingen voor tabel `hero`
--
ALTER TABLE `hero`
  ADD CONSTRAINT `hero_ibfk_1` FOREIGN KEY (`person`) REFERENCES `person` (`id`);

--
-- Beperkingen voor tabel `npc`
--
ALTER TABLE `npc`
  ADD CONSTRAINT `npc_ibfk_1` FOREIGN KEY (`person`) REFERENCES `person` (`id`),
  ADD CONSTRAINT `npc_ibfk_2` FOREIGN KEY (`city`) REFERENCES `city` (`id`);

--
-- Beperkingen voor tabel `person`
--
ALTER TABLE `person`
  ADD CONSTRAINT `person_ibfk_1` FOREIGN KEY (`weapon`) REFERENCES `weapon` (`id`),
  ADD CONSTRAINT `person_ibfk_2` FOREIGN KEY (`armor`) REFERENCES `armor` (`id`);

--
-- Beperkingen voor tabel `quest`
--
ALTER TABLE `quest`
  ADD CONSTRAINT `quest_ibfk_1` FOREIGN KEY (`publisher`) REFERENCES `npc` (`id`);

--
-- Beperkingen voor tabel `region`
--
ALTER TABLE `region`
  ADD CONSTRAINT `region_ibfk_1` FOREIGN KEY (`holder`) REFERENCES `person` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
