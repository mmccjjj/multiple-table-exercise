-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Jul 22, 2024 at 02:30 PM
-- Server version: 9.0.0
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` int NOT NULL,
  `question_id` int NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_correct` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer`, `is_correct`) VALUES
(1, 1, 'Prince', 0),
(2, 1, 'Elvis Presley', 0),
(3, 1, 'Michael Jackson', 1),
(4, 2, '1960er', 0),
(5, 2, '1970er', 1),
(6, 2, '1980er', 0),
(7, 3, 'Klavier', 0),
(8, 3, 'Flöte', 1),
(9, 3, 'Geige', 0),
(10, 4, 'Freddie Mercury', 1),
(11, 4, 'Mick Jagger', 0),
(12, 4, 'David Bowie', 0),
(13, 5, 'Rock', 0),
(14, 5, 'Jazz', 1),
(15, 5, 'Hip-Hop', 0),
(16, 6, 'Michael Jackson - \"Thriller\"', 0),
(17, 6, 'The Rolling Stones - \"Sticky Fingers\"', 0),
(18, 6, 'Billy Joel - \"52nd Street\"', 1),
(19, 7, 'Hip-Hop', 1),
(20, 7, 'Country', 0),
(21, 7, 'Reggae', 0),
(22, 8, 'Jimmy Page (Led Zeppelin)', 0),
(23, 8, 'Jimi Hendrix', 0),
(24, 8, 'Ritchie Blackmore (Deep Purple)', 1),
(25, 9, 'Die Zauberflöte', 0),
(26, 9, 'La Traviata', 1),
(27, 9, 'Die Meistersinger von Nürnberg', 0),
(28, 10, 'Klarinette', 1),
(29, 10, 'Trompete', 0),
(30, 10, 'Geige', 0),
(31, 11, 'Quentin Tarantino', 0),
(32, 11, 'Steven Spielberg', 1),
(33, 11, 'Martin Scorsese', 0),
(34, 12, 'The Dark Knight', 1),
(35, 12, 'Inception', 0),
(36, 12, 'Brokeback Mountain', 0),
(37, 13, 'Joker', 0),
(38, 13, '1917', 0),
(39, 13, 'Parasite', 1),
(40, 14, 'Titanic', 1),
(41, 14, 'Avatar', 0),
(42, 14, 'Terminator 2: Judgment Day', 0),
(43, 15, 'Chris Evans', 0),
(44, 15, 'Chris Hemsworth', 0),
(45, 15, 'Robert Downey Jr.', 1),
(46, 16, 'Bruce', 1),
(47, 16, 'Jaws', 0),
(48, 16, 'Moby', 0),
(49, 17, 'Orlando Bloom', 0),
(50, 17, 'Elijah Wood', 1),
(51, 17, 'Sean Connery', 0),
(52, 18, 'Reservoir Dogs', 1),
(53, 18, 'Pulp Fiction', 0),
(54, 18, 'Jackie Brown', 0),
(55, 19, '1977', 1),
(56, 19, '1983', 0),
(57, 19, '1990', 0),
(58, 20, 'Christopher Nolan', 1),
(59, 20, 'David Fincher', 0),
(60, 20, 'Ridley Scott', 0);

-- --------------------------------------------------------

--
-- Table structure for table `answers_new`
--

CREATE TABLE `answers_new` (
  `id` int NOT NULL,
  `question_id` int NOT NULL,
  `answer` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_correct` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `topic`) VALUES
(1, 'Welcher dieser Künstler ist als \"King of Pop\" bekannt?', 'MUSIC'),
(2, 'In welchem Jahrzehnt erlebte die Disco-Musik ihre Blütezeit?', 'MUSIC'),
(3, 'Welches Instrument spielt der Protagonist in der berühmten Mozart-Oper \"Die Zauberflöte\"?', 'MUSIC'),
(4, 'Wer ist der Leadsänger der Band \"Queen\"?', 'MUSIC'),
(5, 'Welches Genre ist mit Künstlern wie John Coltrane und Miles Davis verbunden?', 'MUSIC'),
(6, 'Welches Album wurde als erstes auf CD veröffentlicht?', 'MUSIC'),
(7, 'Welche Musikrichtung ist eng mit dem New Yorker Stadtteil Bronx verbunden?', 'MUSIC'),
(8, 'Wer ist für das berühmte Gitarrenriff in \"Smoke on the Water\" verantwortlich?', 'MUSIC'),
(9, 'Welche Oper wurde von Giuseppe Verdi komponiert?', 'MUSIC'),
(10, 'Welches dieser Musikinstrumente gehört zur Familie der Holzblasinstrumente?', 'MUSIC'),
(11, 'Wer führte Regie bei \"Forrest Gump\"?', 'MOVIES'),
(12, 'In welchem Film spielte Heath Ledger die ikonische Rolle des Jokers?', 'MOVIES'),
(13, 'Welcher Film gewann den Oscar für den besten Film im Jahr 2020?', 'MOVIES'),
(14, 'In welchem James Cameron Film spielt Leonardo DiCaprio die Hauptrolle?', 'MOVIES'),
(15, 'Welcher Schauspieler porträtiert den Charakter Iron Man im Marvel Cinematic Universe?', 'MOVIES'),
(16, 'Was ist der Name des weißen Hais im Film \"Der Weiße Hai\"?', 'MOVIES'),
(17, 'Wer spielte die Hauptrolle in der Trilogie \"Der Herr der Ringe\"?', 'MOVIES'),
(18, 'Welcher Film wurde von Quentin Tarantino inszeniert und handelt von einer Gruppe von Verbrechern, die einen Diamantenraub planen?', 'MOVIES'),
(19, 'In welchem Jahr wurde der erste Star Wars Film veröffentlicht?', 'MOVIES'),
(20, 'Wer ist der Regisseur des Films \"Inception\"?', 'MOVIES'),
(21, 'Welches Tier lebt am längsten', 'Animals'),
(22, 'Was ist die Hauptstadt von Italien', 'Geography');

-- --------------------------------------------------------

--
-- Table structure for table `questionsAlt`
--

CREATE TABLE `questionsAlt` (
  `id` int NOT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_a` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_b` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_c` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_d` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct_answer` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questionsAlt`
--

INSERT INTO `questionsAlt` (`id`, `question`, `type`, `answer_a`, `answer_b`, `answer_c`, `answer_d`, `correct_answer`) VALUES
(1, 'Wie heißt die Hauptstadt der Slowakei?', 'geography', 'Sofia', 'Prag', 'Bratislava', 'Ljubljan', 'c'),
(2, 'Wie heißt die Hauptstadt von Äthiopien?', 'geography', 'Nairobi', 'Mogadischu', 'Harare', 'Addis Abeba', 'd'),
(3, 'Teneriffa, Gran Canaria und Fuerteventura gehören zu den…?', 'geography', 'Kanarischen Inseln', 'Balearen', 'Karibischen Inseln', 'Azoren', 'a'),
(4, 'In welchem Meer liegt die Insel Hawaii?', 'geography', 'Atlantischer Ozean', 'Indischer Ozean', 'Karibisches Meer', 'Pazifischer Ozean', 'd'),
(5, 'Was ist die größte Insel der Welt?', 'geography', 'Australien', 'Neuguinea', 'Grönland', 'Borneo', 'c'),
(6, 'Wie heißt die Hauptstadt von Australien?', 'geography', 'Canberra', 'Melbourne', 'Perth', 'Sydney', 'a'),
(7, 'Welches deutsche Bundesland ist flächenmäßig das größte?', 'geography', 'Bayern', 'Nordrhein-Westfalen', 'Niedersachsen', 'Baden-Würtemberg', 'a'),
(8, 'Wie tief ist der Marianengraben?', 'geography', '7.000 Meter', '9.000 Meter', '11.000 Meter', '13.000 Meter', 'c'),
(9, 'Wie lang ist die Chinesische Mauer (gerundet)?', 'geography', '12.000 Kilometer', '15.000 Kilometer', '18.000 Kilometer', '21.000 Kilometer', 'd'),
(10, 'Zu welchem Land gehört Grönland politisch?', 'geography', 'Norwegen', 'USA', 'Island', 'Dänemark', 'd'),
(11, 'Wo befindet sich der größte Vulkan der Erde?', 'geography', 'Hawaii', 'Indonesien', 'Chile', 'Island', 'a'),
(12, 'Wie heißt das kleinste Land der Welt?', 'geography', 'Monaco', 'Die Vatikanstadt', 'San Marino', 'Nauru', 'b'),
(13, 'Wie heißt der längste Fluss der welt?', 'geography', 'Nil', 'Amazonas', 'Jangtsekiang', 'Missouri', 'a'),
(14, 'Was ist der flächenmäßig größte US-Bundesstaat?', 'geography', 'Kalifornien', 'Texas', 'Alaska', 'Montana', 'c'),
(15, 'Zu welchem ​​Land gehören die Kanarischen Inseln?', 'geography', 'Portugal', 'Frankreich', 'Spanien', 'Italien', 'c'),
(16, 'Wie heißt der zweithöchste Berg der Welt?', 'geography', 'Mount Everest', 'K2', 'Lhotse', 'Kangchenjunga', 'b'),
(17, 'In welchem ​​Land befindet sich der Mount Everest?', 'geography', 'China', 'Nepal', 'Indien', 'Bhutan', 'b'),
(18, 'In welchem ​​Land verlaufen die Nazca-Linien?', 'geography', 'Peru', 'Brasilien', 'Mexiko', 'Chile', 'a'),
(19, 'Der Preikestolen ist ein erstaunlicher Anblick, über den Fjorden welchen Landes?', 'geography', 'Norwegen', 'Schweden', 'Island', 'Finnland', 'a'),
(20, 'Wenn ich auf den Trevi-Brunnen schaue, in welcher Stadt befinde ich mich?', 'geography', 'Venedig', 'Florenz', 'Mailand', 'Rom', 'd'),
(100, 'Wer war der erste Präsident der Vereinigten Staaten?', 'history', 'Thomas Jefferson', 'George Washington', 'Abraham Lincoln', 'John Adams', 'b'),
(101, 'In welchem Jahr endete der Zweite Weltkrieg?', 'history', '1943', '1944', '1945', '1946', 'c'),
(102, 'Wer malte die Mona Lisa?', 'history', 'Vincent van Gogh', 'Pablo Picasso', 'Leonardo da Vinci', 'Michelangelo', 'c'),
(103, 'Welches antike Weltwunder steht noch heute?', 'history', 'Koloss von Rhodos', 'Hängende Gärten von Babylon', 'Leuchtturm von Alexandria', 'Pyramiden von Gizeh', 'd'),
(104, 'Wer war die erste Frau im Weltall?', 'history', 'Sally Ride', 'Valentina Tereschkowa', 'Mae Jemison', 'Eileen Collins', 'b'),
(105, 'In welchem Jahr fiel die Berliner Mauer?', 'history', '1987', '1989', '1991', '1993', 'b'),
(106, 'Wer war der erste Mensch auf dem Mond?', 'history', 'Buzz Aldrin', 'Yuri Gagarin', 'Neil Armstrong', 'John Glenn', 'c'),
(107, 'Welches Land verschenkte die Freiheitsstatue an die USA?', 'history', 'England', 'Deutschland', 'Italien', 'Frankreich', 'd'),
(108, 'Wer schrieb \"Romeo und Julia\"?', 'history', 'Charles Dickens', 'William Shakespeare', 'Jane Austen', 'Mark Twain', 'b'),
(109, 'In welchem Jahr wurde Amerika von Christoph Kolumbus entdeckt?', 'history', '1492', '1500', '1510', '1520', 'a'),
(110, 'Wer war der erste römische Kaiser?', 'history', 'Julius Caesar', 'Augustus', 'Nero', 'Claudius', 'b'),
(111, 'Welches Jahr gilt als Beginn der Französischen Revolution?', 'history', '1776', '1789', '1804', '1812', 'b'),
(112, 'Wer erfand den Buchdruck mit beweglichen Lettern in Europa?', 'history', 'Gutenberg', 'Da Vinci', 'Galileo', 'Newton', 'a'),
(113, 'Welche alte Zivilisation baute die Pyramiden in Ägypten?', 'history', 'Griechen', 'Römer', 'Perser', 'Ägypter', 'd'),
(114, 'Wer war die letzte Königin von Frankreich vor der Revolution?', 'history', 'Elisabeth I.', 'Katharina die Große', 'Marie Antoinette', 'Victoria', 'c'),
(115, 'In welchem Jahr begann der Erste Weltkrieg?', 'history', '1905', '1914', '1918', '1925', 'b'),
(116, 'Wer war der Anführer der Unabhängigkeitsbewegung in Indien?', 'history', 'Jawaharlal Nehru', 'Mahatma Gandhi', 'Subhas Chandra Bose', 'Sardar Patel', 'b'),
(117, 'Welches Ereignis markiert den Beginn der Renaissance?', 'history', 'Der Fall Konstantinopels', 'Die Entdeckung Amerikas', 'Die Erfindung des Buchdrucks', 'Das Ende des Hundertjährigen Krieges', 'c'),
(118, 'Wer war der erste Mensch, der die Erde umsegelte?', 'history', 'Christoph Kolumbus', 'Ferdinand Magellan', 'James Cook', 'Marco Polo', 'b'),
(119, 'In welchem Jahr wurde die Unabhängigkeitserklärung der USA unterzeichnet?', 'history', '1770', '1773', '1776', '1781', 'c'),
(200, 'Welches Tier ist das größte lebende Landtier?', 'animals', 'Elefant', 'Nashorn', 'Giraffe', 'Nilpferd', 'a'),
(201, 'Welches Tier kann am längsten ohne Wasser überleben?\r\n\r\n', 'animals', 'Kamel', 'Giraffe', 'Wüstenspringmaus', 'Känguru', 'a'),
(203, 'Welche Vogelart kann nicht fliegen?\r\n\r\n', 'animals', 'Strauß', 'Adler', 'Papagei', 'Albatros', 'a'),
(204, 'Welches Tier hat den stärksten Biss in Relation zur Körpergröße?\r\n\r\n', 'animals', 'Krokodil', 'Löwe', 'Ameise', 'Hai', 'c'),
(205, 'Welches Tier ist das schnellste an Land?\r\n\r\n', 'animals', 'Löwe', 'Gepard', 'Antilope', 'Pferd', 'b'),
(206, 'Welches Tier schläft am längsten pro Tag?\r\n\r\n', 'animals', 'Löwe', 'Katze', 'Koala', 'Fledermaus', 'c'),
(207, 'Welches Tier ist das größte Säugetier im Wasser?\r\n\r\n', 'animals', 'Hai', 'Delfin', 'Blauwal', 'Seehund', 'c'),
(208, 'Welches Tier kann seine Farbe ändern, um sich zu tarnen?', 'animals', 'Tintenfisch', 'Chamäleon', 'Frosch', 'Eidechse', 'b'),
(209, 'Welches Tier hat drei Herzen?', 'animals', 'Oktopus', 'Elefant', 'Hai', 'Delfin', 'a'),
(210, 'Welches Tier legt Eier und ist trotzdem ein Säugetier?', 'animals', 'Känguru', 'Schnabeltier', 'Wal', 'Seekuh', 'b'),
(211, 'Welches Tier hat das größte Gehirn im Verhältnis zu seiner Körpergröße?', 'animals', 'Mensch', 'Elefant', 'Delfin', 'Ameise', 'd'),
(212, 'Welches Tier ist für seine Fähigkeit bekannt, Werkzeuge zu verwenden?', 'animals', 'Hund', 'Katze', 'Schimpanse', 'Pferd', 'c'),
(213, 'Welches Tier ist das schwerste Insekt?', 'animals', 'Grashüpfer', 'Käfer', 'Goliathkäfer', 'Ameise', 'c'),
(214, 'Welches Tier ist das kleinste Säugetier der Welt?', 'animals', 'Spitzmaus', 'Maus', 'Hamster', 'Fledermaus', 'a'),
(215, 'Welches Tier ist bekannt für seine langsamen Bewegungen und hängt meist kopfüber an Bäumen?', 'animals', 'Faultier', 'Koala', 'Panda', 'Lemur', 'a'),
(216, 'Welches Tier ist bekannt für seine Fähigkeit, sich einzurollen und einen Panzer zu bilden?\r\n\r\n', 'animals', 'Schildkröte', 'Schnecke', 'Gürteltier', 'Igel', 'c'),
(217, 'Welches Tier hat den längsten Hals?', 'animals', 'Elefant', 'Giraffe', 'Strauß', 'Kamel', 'b'),
(218, 'Welches Tier ist für seine Fähigkeit bekannt, Elektrizität zu erzeugen?', 'animals', 'Zitterrochen', 'Delfin', 'Seepferdchen', 'Aal', 'a'),
(219, 'Welches Tier lebt in Australien und trägt seine Jungen in einem Beutel?', 'animals', 'Koala', 'Panda', 'Löwe', 'Tiger', 'a'),
(220, 'Welches Tier lebt in Kolonien und hat eine Königin?', 'animals', 'Biene', 'Spinne', 'Vogel', 'Schildkröte', 'a'),
(300, 'Wer war der Trainer der Schweizer Nationalmannschaft während der FIFA-Weltmeisterschaft 1994?', 'Fussball', 'Georg Bregy', 'Köbi Kuhn', 'Roy Hodgson', 'Ottmar Hitzfeld', 'c'),
(301, 'Welcher Schweizer Spieler erzielte das erste Tor der Mannschaft bei der UEFA Euro 1996?', 'Fussball', 'Alex Frei', 'Kubilay Türkyilmaz', 'Stephan Chapuisat', 'Georg Bregy', 'b'),
(302, 'In welchem Jahr qualifizierte sich die Schweiz zum ersten Mal nach einer langen Pause wieder für die FIFA-Weltmeisterschaft?', 'Fussball', '1986', '1990', '1994', '1998', 'c'),
(303, 'Wie weit kam die Schweizer Nationalmannschaft bei der UEFA Euro 2008, die in der Schweiz und Österreich stattfand?', 'Fussball', 'Gar nicht an die EM', 'Gruppenphase', 'Viertelfinale', 'Finale', 'b'),
(304, 'Welcher Spieler erzielte den entscheidenden Treffer gegen Spanien in der Gruppenphase der FIFA-Weltmeisterschaft 2010?', 'Fussball', 'Gelson Fernandes', 'Admir Mehmedi', 'Alex Frei', 'Mauro Lustrinelli', 'a'),
(305, 'In welchem Jahr erreichte die Schweizer Nationalmannschaft erstmals das Achtelfinale einer FIFA-Weltmeisterschaft?', 'Fussball', '1986', '1990', '1994', '1998', 'c'),
(306, 'Welcher Schweizer Spieler wurde bei der FIFA-Weltmeisterschaft 2018 ins All-Star-Team gewählt?', 'Fussball', 'Keiner ', '1', '2', '3', 'a'),
(307, 'Wie viele Tore erzielte die Schweiz in ihrem höchsten Sieg bei einer FIFA-Weltmeisterschaft?', 'Fussball', '3', '4', '5', '6', 'b'),
(308, 'Wer war der Trainer der Schweizer Nationalmannschaft während der UEFA Euro 2016?', 'Fussball', 'Kübi Kuhn', 'Jürgen Klopp', 'Ottmar Hitzfeld', 'Vladimir Petković', 'd'),
(309, 'Welcher Schweizer Spieler erzielte das entscheidende Tor im Elfmeterschießen gegen Frankreich bei der UEFA Euro 2020?', 'Fussball', 'Granit Xhaka', 'Ruben Vargas', 'Haris Seferović', 'Admir Mehmedi', 'b'),
(310, 'In welchem Jahr gewann die Schweiz die FIFA U-17-Weltmeisterschaft?', 'Fussball', '2005', '2009', '2013', '2017', 'b'),
(311, 'Wer erzielte das entscheidende Tor für die Schweiz im Playoff-Spiel gegen Nordirland, das ihnen die Qualifikation für die FIFA-Weltmeisterschaft 2018 sicherte?', 'Fussball', 'Ricardo Rodriguez (Elfmeter)', 'Xherdan Shaqiri (Elfmeter)', 'Haris Seferović (Elfmeter)', 'Manuel Akanji (Elfmeter)', 'a'),
(312, 'Wie viele Tore erzielte Haris Seferovic bei der UEFA Nations League 2018/19?', 'Fussball', '3', '4', '5', '6', 'c'),
(313, 'Welcher Schweizer Torhüter hielt den entscheidenden Elfmeter im Spiel gegen Frankreich bei der UEFA Euro 2020?', 'Fussball', 'Diego Benaglio', 'Uwe Still', 'Gregor Kobel', 'Yann Sommer', 'd'),
(314, 'Wie viele Male hat die Schweiz in den letzten 30 Jahren die Gruppenphase einer FIFA-Weltmeisterschaft überstanden?', 'Fussball', '1 Mal', '2 Mal', '3 Mal', '4 Mal', 'd'),
(315, 'Welcher Schweizer Trainer führte die Mannschaft zur FIFA-Weltmeisterschaft 2018?', 'Fussball', 'Vladimir Petković', 'Ottmar Hitzfeld', 'Kübi Kuhn', 'Murat Yakin', 'a'),
(316, 'Wer erzielte das erste Tor der Schweiz bei der UEFA Euro 2020?', 'Fussball', 'Granit Xhaka', 'Breel Embolo', 'Mario Gavranovic', 'Remo Freuler', 'b'),
(317, 'Gegen welche Mannschaft verlor die Schweiz im Viertelfinale der UEFA Euro 2020, nachdem das Spiel nach 120 Minuten 1:1 endete und im Elfmeterschießen entschieden wurde?', 'Fussball', 'Spanien', 'Italien', 'England', 'Deutschland', 'a'),
(318, 'Gegen welche Mannschaft verlor die Schweiz im Achtelfinale der FIFA Weltmeisterschaft 2006 in Deutschland?', 'Fussball', 'Deutschland', 'Ukraine', 'Holland', 'Frankreich', 'b'),
(319, 'Wer ist der aktuelle Trainer der Schweizer Nationalmannschaft?', 'Fussball', 'Hakan Yakin', 'Murat Yakin', 'Gökan Yakin', 'Türklimatz Yakin', 'b');

-- --------------------------------------------------------

--
-- Table structure for table `question_new`
--

CREATE TABLE `question_new` (
  `id` int NOT NULL,
  `question` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `answers_new`
--
ALTER TABLE `answers_new`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionsAlt`
--
ALTER TABLE `questionsAlt`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_new`
--
ALTER TABLE `question_new`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `answers_new`
--
ALTER TABLE `answers_new`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `questionsAlt`
--
ALTER TABLE `questionsAlt`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=320;

--
-- AUTO_INCREMENT for table `question_new`
--
ALTER TABLE `question_new`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `answers_new`
--
ALTER TABLE `answers_new`
  ADD CONSTRAINT `answers_new_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question_new` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;