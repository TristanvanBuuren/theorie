-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 30, 2024 at 10:27 AM
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
(1, 2, 1, '2d_009.png', 'Hoe lang is de ‘groene’ verzekeringskaart geldig?', 'Een verzekering sluit je af voor 1 jaar, de groene kaart is daarom ook 1 jaar geldig.', '1 jaar', '2 jaar', '5 jaar'),
(2, 2, 2, '186.png', 'Een gehandicapt persoon rijdt in een brommobiel. Mag deze nu op het trottoir parkeren?\r\n', 'Een brommobiel moet altijd de regels voor een brommobiel blijven volgen, welke de regels van de auto volgt, ongeacht wie er zich in de brommobiel bevindt. Ook wanneer de bestuurder gehandicapt is, dan wordt dit voertuig niet automatisch een gehandicaptenvoertuig.', 'NEE', 'JA', ''),
(3, 2, 2, '185.png', 'Wanneer valt een gehandicaptenvoertuig onder de regels van een voetganger?', 'Wanneer een gehandicaptenvoertuig gebruik maakt van de stoep of het voetpad, dan moet deze de regels volgen van een voetganger. \r\n', 'Wanneer deze zich op de stoep of voetpad bevindt', 'Wanneer deze zich op de weg bevindt', ''),
(4, 2, 1, 'ef_317.jpg', 'Je wilt een aanhangwagen vervoeren die zwaarder is dan het lediggewicht van jouw auto. Welk rijbewijs heb je hiervoor nodig?', 'Om een aanhangwagen te mogen vervoeren die zwaarder is dan het trekkende voertuig, heb je rijbewijs BE of B+ nodig.', 'Rijbewijs BE of B+', 'Rijbewijs C1', 'Rijbewijs B'),
(5, 2, 1, '128.jpg', 'Vanaf welke leeftijd kun je je rijbewijs B behalen?', 'Je kunt je praktijkexamen behalen zodra je 17 jaar bent.', '17 jaar', '18 jaar', '16,5 jaar'),
(6, 2, 1, 'A01-80.png', 'Beginnende automobilisten kunnen het beginnersrijbewijs, naast  de bestaande straf en/of boete, kwijtraken als zij met meer dan ........ km per uur de toegestane maximumsnelheid overschrijden.', 'Als bestuurders met een beginnersrijbewijs meer dan 50 km/u te hard rijden, kunnen ze hun rijbewijs kwijtraken.', '50', '40', '60'),
(7, 2, 1, '2d_010a.png', 'Wat is de geldigheidsduur van het rijbewijs?', 'Wanneer je jonger dan 65 jaar bent, dan is het rijbewijs 10 jaar geldig.\r\n', '10 jaar', '5 jaar', '1 jaar'),
(8, 2, 2, '2d_007.png', 'Mag je aan de politie een kopie laten zien van jouw rijbewijs of kentekencard?\r\n', 'Kopieën van je rijbewijs of kentekencard zijn niet toegestaan. Je wordt geacht de originele papieren bij je te hebben.', 'NEE', 'JA', ''),
(9, 2, 1, '204.png', 'Hoelang is je rijbewijs nog geldig als je 70 jaar bent?', 'Na je 75ste verjaardag heb je jaarlijks een medische keuring nodig om je rijbewijs te verlengen.', '5 jaar', '10 jaar', '1 jaar'),
(10, 2, 1, '2d_010a.png', 'Hoelang is het theoriecertificaat geldig?', 'Het theoriecertificaat is 1,5 jaar geldig. Binnen deze tijd moet je jouw praktijk examen gedaan hebben, anders vervalt het certificaat.', '1,5 jaar', '1 jaar', '2 jaar'),
(11, 2, 2, '002.png', 'Mag je al beginnen aan rijlessen zonder dat je het theoriecertificaat hebt?', 'Voor de auto mag je al beginnen met rijlessen zonder theoriecertificaat, deze heb je pas nodig bij de tussentijdse toets. Het is wel verstandig om al enige kennis van de theorie te hebben.', 'JA', 'NEE', ''),
(12, 2, 1, '002.png', 'Vanaf welke leeftijd mag je het theorie-examen afleggen?', 'Je mag vanaf 16 jaar het theorie-examen doen voor het rijbewijs.', '16 jaar', '15 jaar', '18 jaar'),
(13, 2, 2, '2d_002.png', 'Je hebt je rijbewijs gehaald op je 17e en wilt gaan rijden met een vriend die ook 17 is. Hij heeft ook al het rijbewijs B. Mag je zo gaan rijden?', 'Wanneer je jonger dan 18 jaar bent, mag je alleen rijden met een begeleider/ coach naast je. Deze moet o.a. ouder dan 27 jaar zijn.', 'NEE', 'JA', ''),
(14, 2, 2, '2d_010b.png', 'Mag je met een rijbewijs voor een schakelauto ook in een automaat rijden?', 'Het rijbewijs voor de schakelauto is ook geldig voor de automaat. Andersom is dit niet het geval.', 'JA', 'NEE', ''),
(15, 2, 2, '131b.jpg', 'Je hebt je rijbewijs B. Mag je een aanhangwagen van 1750 kg vervoeren met een auto die 2000 kg weegt?', 'Met een rijbewijs B mag de combinatie van het trekkende voertuig met de aanhanger maximaal 3500 kg zijn. In het geval hierboven is het totaal 3750 kg, dat is dus te veel.\r\n', 'NEE', 'JA', ''),
(16, 2, 1, '7.jpg', 'Hoeveel is de toegestane maximum massa van een auto en aanhanger die je met het rijbewijs B mag besturen?', 'Met het rijbewijs B is het toegestaan om een aanhanger te vervoeren die zwaarder is dan 750 kg, maar daarbij mag het leeggewicht en het laadvermogen van de aanhanger en de auto samen niet meer dan 3500 kg zijn. De aanhangwagen mag tevens niet zwaarder zijn dan het trekkende motorvoertuig.', '3500 kg', '1500 kg', '5000 kg'),
(17, 2, 1, '2d_003.png', 'Welke voertuigen hebben dit bord op de achterkant?', 'Land- en bosbouwtrekkers (inclusief hun aanhangwagens) moeten een  ‘rode retroreflector in de vorm van een driehoek’ op de achterzijde van het voertuig plaatsen.\n', 'Landbouwvoertuigen', 'Gehandicaptenvoertuigen', 'Bussen'),
(18, 2, 1, '119.png', 'Hoeveel personen mag je vervoeren met rijbewijs B?', 'Met het rijbewijs B mag je maximaal 8 personen vervoeren in een busje die hiervoor ingericht is (exclusief bestuurder). Is het busje ingericht voor het vervoer van meer dan 8 personen, dan moet je rijbewijs D hebben.', '8 personen', '12 personen', '4 personen'),
(19, 2, 1, '186.png', 'Welk rijbewijs heb je minimaal nodig om een brommobiel te mogen besturen?', 'Rijbewijs AM heb je nodig om in een brommobiel te mogen rijden. Echter mag je je ook een brommobiel rijden met rijbewijs A en B.', 'Rijbewijs AM', 'Rijbewijs A', 'Rijbewijs B'),
(20, 2, 2, '2d_010b.png', 'Mag je met rijbewijs B een snorfiets, bromfiets of scootmobiel besturen?', 'Wanneer je in het bezit bent van rijbewijs B mag je een snorfiets en bromfiets besturen. Heb je deze niet, dan heb je het rijbewijs AM nodig. \r\n', 'JA', 'NEE', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vragen`
--
ALTER TABLE `vragen`
  ADD PRIMARY KEY (`vragen_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vragen`
--
ALTER TABLE `vragen`
  MODIFY `vragen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=647;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
