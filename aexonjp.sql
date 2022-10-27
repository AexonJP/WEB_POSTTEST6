-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 27, 2022 at 12:26 AM
-- Server version: 10.5.16-MariaDB
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id19647994_aexonjp`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priv` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `username`, `password`, `priv`) VALUES
(1, 'user', '$2y$10$zFd.493a/.1rrheMopkPZeswkRG55MJL7cfTNaRe.wBoys890V1p.', 'user'),
(3, 'aexon', '$2y$10$53Xq3/A649QYId59oNy/2OEjoJ4MXFTzYgHI1b7KGd.AJHps/MkH.', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `completed`
--

CREATE TABLE `completed` (
  `id` int(11) NOT NULL,
  `judul` varchar(1000) NOT NULL,
  `gambar` varchar(1000) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `completed`
--

INSERT INTO `completed` (`id`, `judul`, `gambar`, `waktu`) VALUES
(1, 'Isekai-Meikyuu-de-Harem-wo', 'Isekai-Meikyuu-de-Harem-wo-640x360.jpg.webp', '2022-10-27 04:20:52'),
(2, 'Jashin-chan-Dropkick-S3', 'Jashin-chan-Dropkick-S3-640x360.jpg.webp', '2022-10-27 04:21:01'),
(3, 'Kinsou-no-Vermeil', 'Kinsou-no-Vermeil-640x360.png.webp', '2022-10-27 04:21:11'),
(4, 'Mamahaha-no-Tsurego-ga-Motokano-datta', 'Mamahaha-no-Tsurego-ga-Motokano-datta-640x360.png.webp', '2022-10-27 04:21:18'),
(5, 'Pacar-Sewaan-S2', 'Pacar-Sewaan-S2-640x360.png.webp', '2022-10-27 04:21:25'),
(6, 'Tokyo-Mew-Mew-New', 'Tokyo-Mew-Mew-New-640x360.png.webp', '2022-10-27 04:21:32'),
(7, 'KAGUYA SAMA LOVE IS WAR', '634f53f392360.images (1) (1).jpeg', '2022-10-27 04:21:39');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id` int(11) NOT NULL,
  `judul` varchar(1000) NOT NULL,
  `gambar` varchar(1000) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id`, `judul`, `gambar`, `waktu`) VALUES
(1, 'Ame-wo-Tsugeru-Hyouryuu-Danchi', 'Ame-wo-Tsugeru-Hyouryuu-Danchi-640x360.jpg.webp', '2022-10-27 04:14:51'),
(2, 'Blue-Thermal', 'Blue-Thermal-640x360.jpg.webp', '2022-10-27 04:15:16'),
(3, 'Bubble', 'Bubble-640x360.jpg.webp', '2022-10-27 04:15:28'),
(4, 'Jujutsu-Kaisen-0', 'Jujutsu-Kaisen-0-640x360.jpg.webp', '2022-10-27 04:15:50'),
(5, 'Kiniro-Mosaic-Thank-You', 'Kiniro-Mosaic-Thank-You-640x360.jpg.webp', '2022-10-27 04:16:05'),
(12, 'Sword-Art-Online-the-Movie-Progressive-Aria-of-a-Starless-Night', '634e4655a32f7.Sword-Art-Online-the-Movie-Progressive-Aria-of-a-Starless-Night-640x360.png.webp', '2022-10-27 04:16:12');

-- --------------------------------------------------------

--
-- Table structure for table `ongoing`
--

CREATE TABLE `ongoing` (
  `id` int(11) NOT NULL,
  `judul` varchar(1000) NOT NULL,
  `gambar` varchar(1000) NOT NULL,
  `waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ongoing`
--

INSERT INTO `ongoing` (`id`, `judul`, `gambar`, `waktu`) VALUES
(6, 'Bucchigire', 'Bucchigire-640x360.jpg.webp', '2022-10-27 04:17:54'),
(7, 'Love-All-Play', 'Love-All-Play-640x360.jpg.webp', '2022-10-27 04:18:06'),
(8, 'Luminous-Witches', 'Luminous-Witches-640x360.jpg.webp', '2022-10-27 04:18:20'),
(9, 'Prima-Doll', 'Prima-Doll-640x360.png.webp', '2022-10-27 04:18:29'),
(10, 'Teppen', 'Teppen-640x360.jpg.webp', '2022-10-27 04:18:36'),
(12, 'Ao-Ashi', 'Ao-Ashi-640x360.jpg.webp', '2022-10-27 04:18:42'),
(21, 'Michigan', '634f99dc989bb.FALLING WITH YOU.jpg', '2022-10-27 04:18:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQUE` (`username`);

--
-- Indexes for table `completed`
--
ALTER TABLE `completed`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ongoing`
--
ALTER TABLE `ongoing`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `completed`
--
ALTER TABLE `completed`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ongoing`
--
ALTER TABLE `ongoing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
