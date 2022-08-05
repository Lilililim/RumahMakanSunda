-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2022 at 07:05 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lspcrud`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id_kursus` int(5) NOT NULL,
  `nm_kursus` varchar(50) NOT NULL,
  `ket_kursus` text NOT NULL,
  `lama_kursus` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id_kursus`, `nm_kursus`, `ket_kursus`, `lama_kursus`) VALUES
(3, 'Java', 'Deskripsi Kursus Java', 6),
(5, 'C#', 'Deskripsi Kursus C#', 6),
(11, 'Unity', 'Deskripsi Unity', 12);

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(5) NOT NULL,
  `id_kursus` int(5) NOT NULL,
  `waktu_kursus` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_kursus`, `waktu_kursus`) VALUES
(5, 3, '2022-08-22'),
(11, 11, '2022-08-16'),
(12, 5, '2022-08-03');

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `id_laporan` int(5) NOT NULL,
  `id_pelajar` int(5) NOT NULL,
  `id_jadwal` int(5) NOT NULL,
  `krs_pelajar` text NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `laporan`
--

INSERT INTO `laporan` (`id_laporan`, `id_pelajar`, `id_jadwal`, `krs_pelajar`, `status`) VALUES
(58, 3, 5, '0', '1'),
(67, 4, 5, '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `pelajar`
--

CREATE TABLE `pelajar` (
  `id_pelajar` int(5) NOT NULL,
  `nm_pelajar` varchar(50) NOT NULL,
  `kls_pelajar` varchar(6) NOT NULL,
  `nim_pelajar` varchar(40) NOT NULL,
  `role` varchar(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pelajar`
--

INSERT INTO `pelajar` (`id_pelajar`, `nm_pelajar`, `kls_pelajar`, `nim_pelajar`, `role`) VALUES
(2, 'admin', '', 'admin', 'admin'),
(3, 'Andri', '4IA02', '123321', 'pelajar'),
(4, 'Agus', 'gulag', '456', 'pelajar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id_kursus`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD UNIQUE KEY `id_kursus` (`id_kursus`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`id_laporan`),
  ADD KEY `id_pelajar` (`id_pelajar`),
  ADD KEY `id_jadwal` (`id_jadwal`);

--
-- Indexes for table `pelajar`
--
ALTER TABLE `pelajar`
  ADD PRIMARY KEY (`id_pelajar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id_kursus` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `laporan`
--
ALTER TABLE `laporan`
  MODIFY `id_laporan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `pelajar`
--
ALTER TABLE `pelajar`
  MODIFY `id_pelajar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`id_kursus`) REFERENCES `course` (`id_kursus`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `laporan`
--
ALTER TABLE `laporan`
  ADD CONSTRAINT `laporan_ibfk_1` FOREIGN KEY (`id_pelajar`) REFERENCES `pelajar` (`id_pelajar`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `laporan_ibfk_2` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id_jadwal`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
