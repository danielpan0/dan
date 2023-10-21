-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 21, 2023 at 09:56 PM
-- Server version: 10.5.22-MariaDB-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tkjj1964_pandie`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(25) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `tgl_lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `alamat`, `tgl_lahir`) VALUES
('', '', '', '0000-00-00'),
('2123637505', 'ELDOARDO', 'PENFUI', '2003-10-26');

-- --------------------------------------------------------

--
-- Table structure for table `tb_biologi`
--

CREATE TABLE `tb_biologi` (
  `id_pustakawan` int(50) NOT NULL,
  `anrologi` varchar(250) NOT NULL,
  `agronomi` varchar(250) NOT NULL,
  `anatomi` varchar(250) NOT NULL,
  `bakteriologi` varchar(250) NOT NULL,
  `bioinformatika` varchar(250) NOT NULL,
  `bioevolusioner` varchar(250) NOT NULL,
  `biomolekuler` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_biologi`
--

INSERT INTO `tb_biologi` (`id_pustakawan`, `anrologi`, `agronomi`, `anatomi`, `bakteriologi`, `bioinformatika`, `bioevolusioner`, `biomolekuler`) VALUES
(2355, 'isjdjs', 'hsjajjd', 'Ifjjsb', 'go jajdh', 'hfjajjd', 'hfjajbd', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ekonomi`
--

CREATE TABLE `tb_ekonomi` (
  `id_pustakawan` int(50) NOT NULL,
  `ekonomi_terapan` varchar(250) NOT NULL,
  `ekonomi_deskriptif` varchar(250) NOT NULL,
  `ekonomi_makro` varchar(250) NOT NULL,
  `ekonomi_mikro` varchar(250) NOT NULL,
  `ekonomi_public` varchar(250) NOT NULL,
  `ekonomi_moneter` varchar(250) NOT NULL,
  `ekonomi_internasional` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_filsafat`
--

CREATE TABLE `tb_filsafat` (
  `id_pustakawan` int(50) NOT NULL,
  `filsafat_analitik` varchar(250) NOT NULL,
  `filsafat_postrukturalisme` varchar(250) NOT NULL,
  `filsafat_dekontruksionisme` varchar(250) NOT NULL,
  `filsafat_strukturalisme` varchar(250) NOT NULL,
  `filsafat_prakmatisme` varchar(250) NOT NULL,
  `filsafat_tomisme` varchar(250) NOT NULL,
  `filsafat_institutionalisme` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_fisika`
--

CREATE TABLE `tb_fisika` (
  `id_pustakawan` int(50) NOT NULL,
  `mekanika` varchar(250) NOT NULL,
  `termodinamika` varchar(250) NOT NULL,
  `elektronika` varchar(250) NOT NULL,
  `optikageometri` varchar(250) NOT NULL,
  `fisikakuantum` varchar(250) NOT NULL,
  `biofisika` varchar(250) NOT NULL,
  `geofisika` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_sejarah`
--

CREATE TABLE `tb_sejarah` (
  `id_pustakawan` int(50) NOT NULL,
  `sejarah_indonesia` varchar(250) NOT NULL,
  `sejarah_inggris` varchar(250) NOT NULL,
  `sejarah_jepang` varchar(250) NOT NULL,
  `sejarah_korea` varchar(250) NOT NULL,
  `sejarah_belanda` varchar(250) NOT NULL,
  `sejarah_portugis` varchar(250) NOT NULL,
  `sejarah_mongolia` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `tb_biologi`
--
ALTER TABLE `tb_biologi`
  ADD PRIMARY KEY (`id_pustakawan`);

--
-- Indexes for table `tb_ekonomi`
--
ALTER TABLE `tb_ekonomi`
  ADD PRIMARY KEY (`id_pustakawan`);

--
-- Indexes for table `tb_filsafat`
--
ALTER TABLE `tb_filsafat`
  ADD PRIMARY KEY (`id_pustakawan`);

--
-- Indexes for table `tb_fisika`
--
ALTER TABLE `tb_fisika`
  ADD PRIMARY KEY (`id_pustakawan`);

--
-- Indexes for table `tb_sejarah`
--
ALTER TABLE `tb_sejarah`
  ADD PRIMARY KEY (`id_pustakawan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_biologi`
--
ALTER TABLE `tb_biologi`
  MODIFY `id_pustakawan` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2373;

--
-- AUTO_INCREMENT for table `tb_ekonomi`
--
ALTER TABLE `tb_ekonomi`
  MODIFY `id_pustakawan` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_filsafat`
--
ALTER TABLE `tb_filsafat`
  MODIFY `id_pustakawan` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_fisika`
--
ALTER TABLE `tb_fisika`
  MODIFY `id_pustakawan` int(50) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_sejarah`
--
ALTER TABLE `tb_sejarah`
  MODIFY `id_pustakawan` int(50) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
