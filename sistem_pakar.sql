-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 19, 2024 at 05:06 PM
-- Server version: 10.6.16-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_pakar`
--

-- --------------------------------------------------------

--
-- Table structure for table `basis_aturan`
--

CREATE TABLE `basis_aturan` (
  `id_aturan` int(11) NOT NULL,
  `id_penyakit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `basis_aturan`
--

INSERT INTO `basis_aturan` (`id_aturan`, `id_penyakit`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

-- --------------------------------------------------------

--
-- Table structure for table `detail_basis_aturan`
--

CREATE TABLE `detail_basis_aturan` (
  `id_aturan` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_basis_aturan`
--

INSERT INTO `detail_basis_aturan` (`id_aturan`, `id_gejala`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 7),
(2, 8),
(2, 9),
(2, 10),
(3, 1),
(3, 11),
(3, 12),
(3, 13),
(3, 14),
(3, 15),
(3, 16),
(4, 17),
(4, 18),
(4, 19),
(4, 20),
(4, 21),
(5, 1),
(5, 22),
(5, 23),
(5, 24),
(5, 5),
(5, 25),
(5, 26),
(5, 27),
(5, 28),
(6, 29),
(6, 30),
(6, 31),
(6, 32),
(6, 33),
(6, 34),
(7, 1),
(7, 23),
(7, 24),
(7, 5),
(7, 25),
(7, 27),
(7, 28),
(7, 35),
(7, 36),
(8, 37),
(8, 38),
(8, 39),
(8, 40);

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id_gejala` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id_gejala`, `nama`) VALUES
(1, 'Bau mulut'),
(2, 'Gusi bengkak, merah dan berdarah'),
(3, 'Gingival berkaratin, gaung luka diantara gigi dan gusi'),
(4, 'Pembesaran limfoid di kepala, leher, atau rahang'),
(5, 'Demam'),
(6, 'Nyeri gusi'),
(7, 'Sakit gigi'),
(8, 'Nyeri ringan hingga tajam saat mengonsumsi makanan manis'),
(9, 'Noda berwarna cokelat, hitam atau putih pada permukaan gigi'),
(10, 'Nyeri saat mengigit makanan'),
(11, 'Gusi berdarah dan kemerahan'),
(12, 'Gusi membengkak dan atau bernanah'),
(13, 'Gusi melorot atau gigi tampak menjadi panjang'),
(14, 'Gigi goyang dan sensitive'),
(15, 'Gigi menjadi meregang (timbul celah-celah diantara gigi)'),
(16, 'Gigi menjadi linu padahal tidak ada yang berlubang'),
(17, 'Hilangnya nafsu makan'),
(18, 'Terdapat luka yang cukup besar dimulut'),
(19, 'Luka biasanya terjadi beberapa kali pada area yang sama'),
(20, 'Luka menyebar ke bagian luar bibir'),
(21, 'Tidak dapat makan dan minum'),
(22, 'Rasa pahit dimulut'),
(23, 'Gelisah'),
(24, 'Kelelahan'),
(25, 'Gusi mudah berdarah'),
(26, 'Terdapat kantung manah yang seperti benjolan dengan warna kuning'),
(27, 'Kelenjar getah bening di bawah rahang membengkak'),
(28, 'Mengunyah dan menelan makanan menyebabkan rasa nyeri'),
(29, 'Pecah-pecah dan kemerahan pada sudut mulut'),
(30, 'Muncul bintik-bintik kuning, putih atau krem di dalam mulut'),
(31, 'Sedikit pendarahan apabila lesi tergores'),
(32, 'Lesi menyerupai keju'),
(33, 'Di dalam mulut seperti kapas'),
(34, 'Kehilangan selera makan'),
(35, 'Mengunyah dan menelan makanan menyebabkan rasa nyeri'),
(36, 'Ujung-ujung gusi yang terletak diantara dua gigi mengalami pengikisan'),
(37, 'Rasa sakit dan tidak nyaman pada mulut saat makan makanan manis atau asam'),
(38, 'Rasa tidak nyaman pada saat cuaca dingin'),
(39, 'Sakit pada saat menyikat gigi'),
(40, 'Gusi menurun');

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(11) NOT NULL,
  `nama` varchar(128) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `solusi` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id`, `nama`, `keterangan`, `solusi`) VALUES
(1, 'Gingivitis (Radang gusi)', NULL, NULL),
(2, 'Karies Gigi (Gigi berlubang)', NULL, NULL),
(3, 'Karang Gigi', NULL, NULL),
(4, 'Stomatitis', NULL, NULL),
(5, 'Abses Periodenta', NULL, NULL),
(6, 'Candidas Oral', NULL, NULL),
(7, 'Trench Mouth', NULL, NULL),
(8, 'Gigi Sensitif', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basis_aturan`
--
ALTER TABLE `basis_aturan`
  ADD PRIMARY KEY (`id_aturan`),
  ADD KEY `id_penyakit` (`id_penyakit`);

--
-- Indexes for table `detail_basis_aturan`
--
ALTER TABLE `detail_basis_aturan`
  ADD KEY `id_aturan` (`id_aturan`),
  ADD KEY `id_gejala` (`id_gejala`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id_gejala`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `basis_aturan`
--
ALTER TABLE `basis_aturan`
  MODIFY `id_aturan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id_gejala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `basis_aturan`
--
ALTER TABLE `basis_aturan`
  ADD CONSTRAINT `basis_aturan_ibfk_1` FOREIGN KEY (`id_penyakit`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `detail_basis_aturan`
--
ALTER TABLE `detail_basis_aturan`
  ADD CONSTRAINT `detail_basis_aturan_ibfk_1` FOREIGN KEY (`id_aturan`) REFERENCES `basis_aturan` (`id_aturan`),
  ADD CONSTRAINT `detail_basis_aturan_ibfk_2` FOREIGN KEY (`id_gejala`) REFERENCES `gejala` (`id_gejala`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
