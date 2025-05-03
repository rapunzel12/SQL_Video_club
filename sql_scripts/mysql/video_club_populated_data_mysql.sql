-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2025 at 01:45 PM
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
-- Database: `video_club`
--

-- --------------------------------------------------------

--
-- Table structure for table `borrowed`
--

CREATE TABLE `borrowed` (
  `idBorrowed` int(11) NOT NULL,
  `idVideoTape` int(11) DEFAULT NULL,
  `idMovie` int(11) DEFAULT NULL,
  `NumberOfDays` int(11) DEFAULT NULL,
  `idMember` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrowed`
--

INSERT INTO `borrowed` (`idBorrowed`, `idVideoTape`, `idMovie`, `NumberOfDays`, `idMember`) VALUES
(1, 1, 2, 15, 12),
(2, 8, 2, 12, 11),
(3, 6, 9, 10, 10),
(4, 7, 16, 7, 9),
(5, 11, 4, 5, 8),
(6, 5, 3, 14, 7),
(7, 1, 2, 15, 6),
(8, 4, 3, 13, 5),
(9, 3, 3, 7, 4),
(10, 2, 1, 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `contains`
--

CREATE TABLE `contains` (
  `idVideoTape` int(11) NOT NULL,
  `idMovie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contains`
--

INSERT INTO `contains` (`idVideoTape`, `idMovie`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(2, 3),
(2, 4),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(4, 3),
(4, 5),
(4, 6),
(4, 7),
(5, 1),
(5, 3),
(5, 5),
(5, 6),
(6, 8),
(6, 9),
(6, 10),
(6, 15),
(7, 2),
(7, 16),
(7, 17),
(7, 18),
(8, 2),
(8, 12),
(8, 13),
(8, 15),
(11, 4),
(11, 6),
(11, 9),
(11, 10);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `idGenre` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`idGenre`, `Name`) VALUES
(1, 'Drama'),
(2, 'Thriller'),
(3, 'Comedy'),
(4, 'Action'),
(5, 'Science fiction'),
(6, 'Western'),
(7, 'Romance');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `idMember` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`idMember`, `Name`) VALUES
(1, 'Ivan'),
(2, 'Janko'),
(3, 'Mile'),
(4, 'Zika'),
(5, 'Pera'),
(6, 'Zeka'),
(7, 'Ivana'),
(8, 'Ivo'),
(9, 'Laza'),
(10, 'Vlada'),
(11, 'Marija'),
(12, 'Jovana');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `idMovie` int(11) NOT NULL,
  `Title` varchar(45) DEFAULT NULL,
  `Duration` int(11) DEFAULT NULL,
  `Grade` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `idGenre` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`idMovie`, `Title`, `Duration`, `Grade`, `price`, `idGenre`) VALUES
(1, 'Film_01', 60, 5, 10.5, 4),
(2, 'Film_02', 45, 7, 43.5, 7),
(3, 'Film_03', 32, 10, 10.5, 4),
(4, 'Film_04', 92, 7, 43.5, 3),
(5, 'Film_05', 75, 5, 10.5, 4),
(6, 'Film_06', 45, 7, 43.5, 4),
(7, 'Film_07', 80, 5, 10.5, 5),
(8, 'Film_08', 55, 6, 50.5, 7),
(9, 'Film_09', 60, 4, 75.5, 1),
(10, 'Film_10', 45, 8, 78.5, 2),
(11, 'Film_11', 87, 5, 87.5, 1),
(12, 'Film_12', 105, 9, 42.5, 2),
(13, 'Film_04', 92, 5, 10.5, 3),
(14, 'Film_05', 75, 7, 43.5, 4),
(15, 'Film_06', 45, 5, 10.5, 4),
(16, 'Film_07', 80, 7, 43.5, 5),
(17, 'Film_13', 60, 4, 73.5, 5),
(18, 'Film_14', 45, 3, 92.5, 7);

-- --------------------------------------------------------

--
-- Table structure for table `videotape`
--

CREATE TABLE `videotape` (
  `idVideoTape` int(11) NOT NULL,
  `Duration` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videotape`
--

INSERT INTO `videotape` (`idVideoTape`, `Duration`) VALUES
(1, 300),
(2, 300),
(3, 350),
(4, 350),
(5, 400),
(6, 400),
(7, 450),
(8, 450),
(9, 200),
(10, 200),
(11, 250),
(12, 250),
(13, 230),
(14, 230);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `borrowed`
--
ALTER TABLE `borrowed`
  ADD PRIMARY KEY (`idBorrowed`),
  ADD KEY `fk_table1_VideoTape1_idx` (`idVideoTape`),
  ADD KEY `fk_table1_Movie1_idx` (`idMovie`),
  ADD KEY `fk_Borrowed_Member1_idx` (`idMember`);

--
-- Indexes for table `contains`
--
ALTER TABLE `contains`
  ADD PRIMARY KEY (`idVideoTape`,`idMovie`),
  ADD KEY `fk_VideoTape_has_Movie_Movie1_idx` (`idMovie`),
  ADD KEY `fk_VideoTape_has_Movie_VideoTape1_idx` (`idVideoTape`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`idGenre`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`idMember`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`idMovie`),
  ADD KEY `fk_Movie_Genre1_idx` (`idGenre`);

--
-- Indexes for table `videotape`
--
ALTER TABLE `videotape`
  ADD PRIMARY KEY (`idVideoTape`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `idGenre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `idMember` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `idMovie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `videotape`
--
ALTER TABLE `videotape`
  MODIFY `idVideoTape` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrowed`
--
ALTER TABLE `borrowed`
  ADD CONSTRAINT `fk_Borrowed_Member1` FOREIGN KEY (`idMember`) REFERENCES `member` (`idMember`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_table1_Movie1` FOREIGN KEY (`idMovie`) REFERENCES `movie` (`idMovie`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_table1_VideoTape1` FOREIGN KEY (`idVideoTape`) REFERENCES `videotape` (`idVideoTape`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `contains`
--
ALTER TABLE `contains`
  ADD CONSTRAINT `fk_VideoTape_has_Movie_Movie1` FOREIGN KEY (`idMovie`) REFERENCES `movie` (`idMovie`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_VideoTape_has_Movie_VideoTape1` FOREIGN KEY (`idVideoTape`) REFERENCES `videotape` (`idVideoTape`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `movie`
--
ALTER TABLE `movie`
  ADD CONSTRAINT `fk_Movie_Genre1` FOREIGN KEY (`idGenre`) REFERENCES `genre` (`idGenre`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
