-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2024 at 08:24 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `matematycy`
--
CREATE DATABASE IF NOT EXISTS `matematycy` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `matematycy`;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `matematycy`
--

DROP TABLE IF EXISTS `matematycy`;
CREATE TABLE `matematycy` (
  `Matematycy_id` int(11) NOT NULL,
  `imie` varchar(255) NOT NULL,
  `nazwisko` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matematycy`
--

INSERT INTO `matematycy` (`Matematycy_id`, `imie`, `nazwisko`) VALUES
(1, 'Carl', ' Gauss'),
(2, 'Stefan', 'Banach');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `publikacje`
--

DROP TABLE IF EXISTS `publikacje`;
CREATE TABLE `publikacje` (
  `Tytul` varchar(255) NOT NULL,
  `rokWydania` int(11) NOT NULL,
  `idAutora` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `publikacje`
--

INSERT INTO `publikacje` (`Tytul`, `rokWydania`, `idAutora`) VALUES
('Badania arytmetyczne', 1801, 1),
('Rachunek różniczkowy i całkowity', 1929, 2),
('Teoria operacji', 1931, 2);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `matematycy`
--
ALTER TABLE `matematycy`
  ADD PRIMARY KEY (`Matematycy_id`);

--
-- Indeksy dla tabeli `publikacje`
--
ALTER TABLE `publikacje`
  ADD PRIMARY KEY (`Tytul`),
  ADD KEY `idAutora` (`idAutora`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `matematycy`
--
ALTER TABLE `matematycy`
  MODIFY `Matematycy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `publikacje`
--
ALTER TABLE `publikacje`
  ADD CONSTRAINT `publikacje_ibfk_1` FOREIGN KEY (`idAutora`) REFERENCES `matematycy` (`Matematycy_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
