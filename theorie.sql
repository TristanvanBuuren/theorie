-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2024 at 08:47 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `theorie`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `admin_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`id`, `username`, `admin_password`) VALUES
(1, 'Jesse', 'admin'),
(2, 'Tristan', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_letter` tinytext NOT NULL,
  `chapter` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_letter`, `chapter`) VALUES
(1, 'A', 'Algemene bepalingen verkeerswetgeving'),
(2, 'B', 'Rijbevoegdheid en rijbewijzen'),
(3, 'C', 'Inrichting, belading en slepen van voertuigen'),
(4, 'D', 'Techniek, onderhoud en controle van voertuigen'),
(5, 'E', 'Gebruik gordels en helmen; zitplaats voor passagiers'),
(6, 'F', 'Milieubewust en energiezuinig rijden'),
(7, 'G', 'Risico\\u2019s in verband met toestand bestuurder'),
(8, 'H', 'Risico\\u2019s in verband met eigenschappen en toestand voertuig'),
(9, 'I', 'Verkeerssituaties'),
(10, 'J', 'Risico\\u2019s in verband met aanwezigheid en gedrag ander verkeer'),
(11, 'K', 'Risico\'s in verband met weg-, zicht- en weersomstandigheden'),
(12, 'L', 'Handelen bij ongevallen en pech onderweg'),
(13, 'M', 'Voor laten gaan op kruispunten [voorrang]'),
(14, 'N', 'Voor laten gaan bij het afslaan'),
(15, 'O', 'Voor laten gaan van blinden, gehandicapten en voetgangers'),
(16, 'P', 'Voor laten gaan van voorrangsvoertuigen, mil. colonnes en trams'),
(17, 'Q', 'Uitvoeren van \\/ voor laten gaan bij bijzondere manoeuvres'),
(18, 'R', 'Plaats op de weg en voorsorteren'),
(19, 'S', 'Inhalen'),
(20, 'T', 'Snelheid'),
(21, 'U', 'Stilstaan en parkeren'),
(22, 'V', 'Geven van tekens en signalen'),
(23, 'W', 'Gebruik van lichten'),
(24, 'X', 'Verkeersborden'),
(25, 'Y', 'Verkeerslichten en aanwijzingen'),
(26, 'Z', 'Verkeerstekens op het wegdek');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`) VALUES
(1, 'jesse', '$2y$10$YaVlEXHQZmbL/wslI5v.Oes8V8TZPaRye/6duvZLWX6c.MiwWnh26'),
(2, 'awddaw', '$2y$10$gr3emuCkvKbuIV.4D4R8I.8aWHgM7O6yGFvguqrN85rIGWYStIfZm'),
(3, 'awddaw', '$2y$10$yAjDRXvOcvlMGiXxqjsQjOlcuaysYebR8/o1qP1ea0koauhvPr9oO'),
(4, 'jesse', '$2y$10$RvHTKgLbPmuF4s7liFDdXePlrYIvbrmfcecEupj8lpg7.TmQz6zCi'),
(5, 'd', '$2y$10$/A2Ds82UmTZHhPxlRmfwR.mylaIZTwCFbHnHQg6JZddYSlAXsJ4KC'),
(6, 'd', '$2y$10$kWUF9o9rERx4wAqgcsGU/u7rwepvpvqj8uUihVqsDCO6Y13MwmWEa'),
(7, 'awdddd', '$2y$10$MRZtECroWPOMsBWKJ0d8buw/x9nMXLB/zZ55hqu2CrJzFdbnmFu0S'),
(8, 'IKEBNJESSE', '$2y$10$JjiseSuOddxDu85cJLbvM.UkJS6qH6TRysEba2GgcXQc/I.bI8BLO'),
(9, 'jesse', '$2y$10$ucqITRbHFpeRuOG4vBWirO0KajacbkcdcJFnCmPpMMpXpTAbQO7kq'),
(10, 'jesse', '$2y$10$9E5RiVmhRZXSPSNoo4SwruKqF3IycrYkq7e924Do0YxMDK3VUPHGC'),
(11, 'dddd', '$2y$10$JMzTtoTm8T0.G8V8Xlqd/OOl6BLKeNqp2P4KCBOx6FSrw59IUf2Qu');

-- --------------------------------------------------------

--
-- Table structure for table `vragen`
--

CREATE TABLE `vragen` (
  `vragen_id` int(11) NOT NULL,
  `vragen_category_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `question` text NOT NULL,
  `feedback` text NOT NULL,
  `option_1` varchar(255) NOT NULL,
  `option_2` varchar(255) NOT NULL,
  `option_3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vragen`
--

INSERT INTO `vragen` (`vragen_id`, `vragen_category_id`, `type`, `image`, `question`, `feedback`, `option_1`, `option_2`, `option_3`) VALUES
(621, 2, 1, '2d_009.png', 'Hoe lang is de ‘groene’ verzekeringskaart geldig?', 'Een verzekering sluit je af voor 1 jaar, de groene kaart is daarom ook 1 jaar geldig.', '1 jaar', '2 jaar', '5 jaar'),
(624, 2, 2, '186.png', 'Een gehandicapt persoon rijdt in een brommobiel. Mag deze nu op het trottoir parkeren?\r\n', 'Een brommobiel moet altijd de regels voor een brommobiel blijven volgen, welke de regels van de auto volgt, ongeacht wie er zich in de brommobiel bevindt. Ook wanneer de bestuurder gehandicapt is, dan wordt dit voertuig niet automatisch een gehandicaptenvoertuig.', 'NEE', 'JA', ''),
(626, 2, 2, '185.png', 'Wanneer valt een gehandicaptenvoertuig onder de regels van een voetganger?', 'Wanneer een gehandicaptenvoertuig gebruik maakt van de stoep of het voetpad, dan moet deze de regels volgen van een voetganger. \r\n', 'Wanneer deze zich op de stoep of voetpad bevindt', 'Wanneer deze zich op de weg bevindt', ''),
(628, 2, 1, 'ef_317.jpg', 'Je wilt een aanhangwagen vervoeren die zwaarder is dan het lediggewicht van jouw auto. Welk rijbewijs heb je hiervoor nodig?', 'Om een aanhangwagen te mogen vervoeren die zwaarder is dan het trekkende voertuig, heb je rijbewijs BE of B+ nodig.', 'Rijbewijs BE of B+', 'Rijbewijs C1', 'Rijbewijs B'),
(629, 2, 1, '128.jpg', 'Vanaf welke leeftijd kun je je rijbewijs B behalen?', 'Je kunt je praktijkexamen behalen zodra je 17 jaar bent.', '17 jaar', '18 jaar', '16,5 jaar'),
(631, 2, 1, 'A01-80.png', 'Beginnende automobilisten kunnen het beginnersrijbewijs, naast  de bestaande straf en/of boete, kwijtraken als zij met meer dan ........ km per uur de toegestane maximumsnelheid overschrijden.', 'Als bestuurders met een beginnersrijbewijs meer dan 50 km/u te hard rijden, kunnen ze hun rijbewijs kwijtraken.', '50', '40', '60'),
(632, 2, 1, '2d_010a.png', 'Wat is de geldigheidsduur van het rijbewijs?', 'Wanneer je jonger dan 65 jaar bent, dan is het rijbewijs 10 jaar geldig.\r\n', '10 jaar', '5 jaar', '1 jaar'),
(633, 2, 2, '2d_007.png', 'Mag je aan de politie een kopie laten zien van jouw rijbewijs of kentekencard?\r\n', 'Kopieën van je rijbewijs of kentekencard zijn niet toegestaan. Je wordt geacht de originele papieren bij je te hebben.', 'NEE', 'JA', ''),
(634, 2, 1, '204.png', 'Hoelang is je rijbewijs nog geldig als je 70 jaar bent?', 'Na je 75ste verjaardag heb je jaarlijks een medische keuring nodig om je rijbewijs te verlengen.', '5 jaar', '10 jaar', '1 jaar'),
(635, 2, 1, '2d_010a.png', 'Hoelang is het theoriecertificaat geldig?', 'Het theoriecertificaat is 1,5 jaar geldig. Binnen deze tijd moet je jouw praktijk examen gedaan hebben, anders vervalt het certificaat.', '1,5 jaar', '1 jaar', '2 jaar'),
(636, 2, 2, '002.png', 'Mag je al beginnen aan rijlessen zonder dat je het theoriecertificaat hebt?', 'Voor de auto mag je al beginnen met rijlessen zonder theoriecertificaat, deze heb je pas nodig bij de tussentijdse toets. Het is wel verstandig om al enige kennis van de theorie te hebben.', 'JA', 'NEE', ''),
(637, 2, 1, '002.png', 'Vanaf welke leeftijd mag je het theorie-examen afleggen?', 'Je mag vanaf 16 jaar het theorie-examen doen voor het rijbewijs.', '16 jaar', '15 jaar', '18 jaar'),
(638, 2, 2, '2d_002.png', 'Je hebt je rijbewijs gehaald op je 17e en wilt gaan rijden met een vriend die ook 17 is. Hij heeft ook al het rijbewijs B. Mag je zo gaan rijden?', 'Wanneer je jonger dan 18 jaar bent, mag je alleen rijden met een begeleider/ coach naast je. Deze moet o.a. ouder dan 27 jaar zijn.', 'NEE', 'JA', ''),
(640, 2, 2, '2d_010b.png', 'Mag je met een rijbewijs voor een schakelauto ook in een automaat rijden?', 'Het rijbewijs voor de schakelauto is ook geldig voor de automaat. Andersom is dit niet het geval.', 'JA', 'NEE', ''),
(641, 2, 2, '131b.jpg', 'Je hebt je rijbewijs B. Mag je een aanhangwagen van 1750 kg vervoeren met een auto die 2000 kg weegt?', 'Met een rijbewijs B mag de combinatie van het trekkende voertuig met de aanhanger maximaal 3500 kg zijn. In het geval hierboven is het totaal 3750 kg, dat is dus te veel.\r\n', 'NEE', 'JA', ''),
(642, 2, 1, '7.jpg', 'Hoeveel is de toegestane maximum massa van een auto en aanhanger die je met het rijbewijs B mag besturen?', 'Met het rijbewijs B is het toegestaan om een aanhanger te vervoeren die zwaarder is dan 750 kg, maar daarbij mag het leeggewicht en het laadvermogen van de aanhanger en de auto samen niet meer dan 3500 kg zijn. De aanhangwagen mag tevens niet zwaarder zijn dan het trekkende motorvoertuig.', '3500 kg', '1500 kg', '5000 kg'),
(643, 2, 1, '2d_003.png', 'Welke voertuigen hebben dit bord op de achterkant?', 'Land- en bosbouwtrekkers (inclusief hun aanhangwagens) moeten een  ‘rode retroreflector in de vorm van een driehoek’ op de achterzijde van het voertuig plaatsen.\n', 'Landbouwvoertuigen', 'Gehandicaptenvoertuigen', 'Bussen'),
(644, 2, 1, '119.png', 'Hoeveel personen mag je vervoeren met rijbewijs B?', 'Met het rijbewijs B mag je maximaal 8 personen vervoeren in een busje die hiervoor ingericht is (exclusief bestuurder). Is het busje ingericht voor het vervoer van meer dan 8 personen, dan moet je rijbewijs D hebben.', '8 personen', '12 personen', '4 personen'),
(645, 2, 1, '186.png', 'Welk rijbewijs heb je minimaal nodig om een brommobiel te mogen besturen?', 'Rijbewijs AM heb je nodig om in een brommobiel te mogen rijden. Echter mag je je ook een brommobiel rijden met rijbewijs A en B.', 'Rijbewijs AM', 'Rijbewijs A', 'Rijbewijs B'),
(646, 2, 2, '2d_010b.png', 'Mag je met rijbewijs B een snorfiets, bromfiets of scootmobiel besturen?', 'Wanneer je in het bezit bent van rijbewijs B mag je een snorfiets en bromfiets besturen. Heb je deze niet, dan heb je het rijbewijs AM nodig. \r\n', 'JA', 'NEE', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
