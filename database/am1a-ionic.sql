-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Gegenereerd op: 11 jun 2018 om 09:23
-- Serverversie: 5.7.19
-- PHP-versie: 7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `am1a-ionic`
--
CREATE DATABASE IF NOT EXISTS `am1a-ionic` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `am1a-ionic`;

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(200) NOT NULL,
  `infix` varchar(20) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `residence` varchar(300) NOT NULL,
  `absence` varchar(10) NOT NULL,
  `birthday` date NOT NULL,
  `photoPath` varchar(400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `firstname`, `infix`, `lastname`, `residence`, `absence`, `birthday`, `photoPath`) VALUES
(1, 'Donald', '', 'Duck', 'Duckstad', '635/635', '1990-08-01', './assets/imgs/dagobertduck.jpg'),
(2, 'Zwarte', '', 'Magica', 'Rotterdam', '645/500', '1980-08-02', './assets/imgs/magica.png'),
(3, 'Kwik', 'Kwek', 'Kwak', 'Zeewolde', '650/300', '1970-09-02', './assets/imgs/kwikkwekkwak.png');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
