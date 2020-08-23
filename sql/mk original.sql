-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2020 at 07:02 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `perkuliahan`
--

-- --------------------------------------------------------

--
-- Table structure for table `mk`
--

CREATE TABLE `mk` (
  `id` int(11) NOT NULL,
  `dosen1` int(11) NOT NULL,
  `dosen2` int(11) DEFAULT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `sks` int(1) NOT NULL,
  `kelas` int(11) NOT NULL,
  `kode_mk` varchar(15) NOT NULL,
  `lokasi` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mk`
--

INSERT INTO `mk` (`id`, `dosen1`, `dosen2`, `nama_mk`, `sks`, `kelas`, `kode_mk`, `lokasi`) VALUES
(1, 23, 25, 'AKUNTANSI DASAR', 2, 3, 'FSI23117', 0),
(2, 23, 27, 'AKUNTANSI DASAR', 2, 4, 'FSI23117', 0),
(6, 23, 25, 'AKUNTANSI DASAR', 2, 17, 'FSI23117', 1),
(7, 23, 27, 'AKUNTANSI DASAR', 2, 18, 'FSI23117', 1),
(8, 23, 28, 'AKUNTANSI DASAR', 2, 19, 'FSI23117', 1),
(9, 24, 30, 'ALGORITMA DAN PEMROGRAMAN II', 3, 3, 'FSI16117', 0),
(10, 12, 30, 'ALGORITMA DAN PEMROGRAMAN II', 3, 4, 'FSI16117', 0),
(11, 18, 30, 'ALGORITMA DAN PEMROGRAMAN II', 3, 17, 'FSI16117', 1),
(14, 12, NULL, 'ALGORITMA DAN PEMROGRAMAN II', 3, 18, 'FSI16117', 1),
(15, 18, 24, 'ALGORITMA DAN PEMROGRAMAN II', 3, 19, 'FSI16117', 1),
(16, 10, 21, 'ANALISIS DAN PERANCANGAN SISTEM INFORMASI II', 3, 7, 'FSI18217', 0),
(17, 10, 21, 'ANALISIS DAN PERANCANGAN SISTEM INFORMASI II', 3, 8, 'FSI18217', 0),
(18, 10, 21, 'ANALISIS DAN PERANCANGAN SISTEM INFORMASI II', 3, 23, 'FSI18217', 1),
(19, 10, 21, 'ANALISIS DAN PERANCANGAN SISTEM INFORMASI II', 3, 24, 'FSI18217', 1),
(20, 12, 30, 'AUDIT SISTEM INFORMASI', 3, 13, 'FSI38217', 0),
(21, 12, 30, 'AUDIT SISTEM INFORMASI', 3, 32, 'FSI38217', 1),
(22, 1, 26, 'BASIS DATA II', 3, 7, 'FSI19217', 0),
(23, 1, 14, 'BASIS DATA II', 3, 8, 'FSI19217', 0),
(24, 1, 14, 'BASIS DATA II', 3, 23, 'FSI19217', 1),
(25, 1, 26, 'BASIS DATA II', 3, 24, 'FSI19217', 1),
(26, 6, 5, 'E-GOVERNMENT', 3, 13, 'FSI34217', 0),
(27, 6, 5, 'E-GOVERNMENT', 3, 32, 'FSI34217', 1),
(28, 1, 16, 'ENTERPRISE RESOURCE PLANNING', 3, 11, 'FSI110317', 0),
(29, 1, 16, 'ENTERPRISE RESOURCE PLANNING', 3, 12, 'FSI110317', 0),
(30, 1, 16, 'ENTERPRISE RESOURCE PLANNING', 3, 29, 'FSI110317', 1),
(31, 1, 16, 'ENTERPRISE RESOURCE PLANNING', 3, 30, 'FSI110317', 1),
(32, 29, NULL, 'INFRASTRUKTUR TI', 3, 13, 'FSI37217', 0),
(33, 29, NULL, 'INFRASTRUKTUR TI', 3, 32, 'FSI37217', 1),
(34, 19, NULL, 'KECERDASAN BISNIS', 3, 13, 'FSI31217', 0),
(35, 1, 19, 'KECERDASAN BISNIS', 3, 32, 'FSI31217', 1),
(36, 15, NULL, 'KEWIRAUSAHAAN', 2, 11, 'FIK007317', 0),
(37, 15, NULL, 'KEWIRAUSAHAAN', 2, 12, 'FIK007317', 0),
(38, 15, NULL, 'KEWIRAUSAHAAN', 2, 29, 'FIK007317', 1),
(39, 15, NULL, 'KEWIRAUSAHAAN', 2, 30, 'FIK007317', 1),
(40, 11, 17, 'KOMUNIKASI DATA DAN JARINGAN KOMPUTER', 3, 7, 'FSI17217', 0),
(41, 11, 17, 'KOMUNIKASI DATA DAN JARINGAN KOMPUTER', 3, 8, 'FSI17217', 0),
(42, 11, 17, 'KOMUNIKASI DATA DAN JARINGAN KOMPUTER', 3, 23, 'FSI17217', 1),
(43, 11, 17, 'KOMUNIKASI DATA DAN JARINGAN KOMPUTER', 3, 24, 'FSI17217', 1),
(44, 4, 14, 'KONSEP SISTEM INFORMASI', 3, 3, 'FSI18117', 0),
(45, 4, 5, 'KONSEP SISTEM INFORMASI', 3, 4, 'FSI18117', 0),
(46, 4, 14, 'KONSEP SISTEM INFORMASI', 3, 17, 'FSI18117', 1),
(47, 12, 5, 'KONSEP SISTEM INFORMASI', 3, 18, 'FSI18117', 1),
(48, 4, 14, 'KONSEP SISTEM INFORMASI', 3, 19, 'FSI18117', 1),
(49, 31, NULL, 'MANAJEMEN PENGETAHUAN', 3, 13, 'FSI32217', 0),
(50, 19, NULL, 'MANAJEMEN PENGETAHUAN', 3, 32, 'FSI32217', 1),
(51, 2, NULL, 'MANAJEMEN SISTEM INFORMASI', 3, 13, 'FSI35217', 0),
(52, 2, 5, 'MANAJEMEN SISTEM INFORMASI', 3, 32, 'FSI35217', 1),
(53, 20, NULL, 'METODOLOGI PENELITIAN', 2, 11, 'FIK002317', 0),
(54, 2, NULL, 'METODOLOGI PENELITIAN', 2, 12, 'FIK002317', 0),
(55, 2, 18, 'METODOLOGI PENELITIAN', 2, 29, 'FIK002317', 1),
(56, 2, 18, 'METODOLOGI PENELITIAN', 2, 30, 'FIK002317', 1),
(57, 17, 29, 'MULTIMEDIA', 3, 11, 'FSI19317', 0),
(58, 17, 29, 'MULTIMEDIA', 3, 12, 'FSI19317', 0),
(59, 17, 29, 'MULTIMEDIA', 3, 29, 'FSI19317', 1),
(60, 17, 29, 'MULTIMEDIA', 3, 30, 'FSI19317', 1),
(61, 9, 12, 'PEMROGRAMAN BERORIENTASI OBJEK', 3, 7, 'FSI112217', 0),
(62, 9, 26, 'PEMROGRAMAN BERORIENTASI OBJEK', 3, 8, 'FSI112217', 0),
(63, 12, 30, 'PEMROGRAMAN BERORIENTASI OBJEK', 3, 23, 'FSI112217', 1),
(64, 30, 26, 'PEMROGRAMAN BERORIENTASI OBJEK', 3, 24, 'FSI112217', 1),
(65, 19, 31, 'PEMROGRAMAN WEB II', 3, 3, 'FSI19117', 0),
(66, 19, NULL, 'PEMROGRAMAN WEB II', 3, 4, 'FSI19117', 0),
(67, 31, NULL, 'PEMROGRAMAN WEB II', 3, 17, 'FSI19117', 1),
(68, 31, NULL, 'PEMROGRAMAN WEB II', 3, 18, 'FSI19117', 1),
(69, 19, NULL, 'PEMROGRAMAN WEB II', 3, 19, 'FSI19117', 1),
(70, 20, NULL, 'PENGEMBANGAN DAN PEMASARAN PRODUK', 3, 32, 'FSI39217', 1),
(71, 23, 25, 'PRAKTIKUM AKUNTANSI DASAR', 1, 3, 'FSI24117', 0),
(72, 23, 27, 'PRAKTIKUM AKUNTANSI DASAR', 1, 4, 'FSI24117', 0),
(73, 23, 25, 'PRAKTIKUM AKUNTANSI DASAR', 1, 17, 'FSI24117', 1),
(74, 23, 27, 'PRAKTIKUM AKUNTANSI DASAR', 1, 18, 'FSI24117', 1),
(75, 23, 28, 'PRAKTIKUM AKUNTANSI DASAR', 1, 19, 'FSI24117', 1),
(76, 7, NULL, 'PRAKTIKUM ALGORITMA DAN PEMROGRAMAN II', 1, 3, 'FSI17117', 0),
(77, 30, NULL, 'PRAKTIKUM ALGORITMA DAN PEMROGRAMAN II', 1, 4, 'FSI17117', 0),
(78, 10, NULL, 'PRAKTIKUM ALGORITMA DAN PEMROGRAMAN II', 1, 17, 'FSI17117', 1),
(79, 10, NULL, 'PRAKTIKUM ALGORITMA DAN PEMROGRAMAN II', 1, 18, 'FSI17117', 1),
(80, 7, NULL, 'PRAKTIKUM ALGORITMA DAN PEMROGRAMAN II', 1, 19, 'FSI17117', 1),
(81, 8, NULL, 'PRAKTIKUM BASIS DATA II', 1, 7, 'FSI110217', 0),
(82, 7, 8, 'PRAKTIKUM BASIS DATA II', 1, 8, 'FSI110217', 0),
(83, 7, 8, 'PRAKTIKUM BASIS DATA II', 1, 23, 'FSI110217', 1),
(84, 8, NULL, 'PRAKTIKUM BASIS DATA II', 1, 24, 'FSI110217', 1),
(85, 9, NULL, 'PRAKTIKUM PEMROGRAMAN BERORIENTASI OBJEK', 1, 7, 'FSI113217', 0),
(86, 9, NULL, 'PRAKTIKUM PEMROGRAMAN BERORIENTASI OBJEK', 1, 8, 'FSI113217', 0),
(87, 30, NULL, 'PRAKTIKUM PEMROGRAMAN BERORIENTASI OBJEK', 1, 23, 'FSI113217', 1),
(88, 30, NULL, 'PRAKTIKUM PEMROGRAMAN BERORIENTASI OBJEK', 1, 24, 'FSI113217', 1),
(89, 7, NULL, 'PRAKTIKUM PEMROGRAMAN WEB II', 1, 3, 'FSI110117', 0),
(90, 32, NULL, 'PRAKTIKUM PEMROGRAMAN WEB II', 1, 4, 'FSI110117', 0),
(91, 7, NULL, 'PRAKTIKUM PEMROGRAMAN WEB II', 1, 17, 'FSI110117', 1),
(92, 7, NULL, 'PRAKTIKUM PEMROGRAMAN WEB II', 1, 18, 'FSI110117', 1),
(93, 32, NULL, 'PRAKTIKUM PEMROGRAMAN WEB II', 1, 19, 'FSI110117', 1),
(94, 4, 32, 'PRAKTIKUM STATISTIKA', 1, 7, 'FSI25217', 0),
(95, 4, 32, 'PRAKTIKUM STATISTIKA', 1, 8, 'FSI25217', 0),
(96, 20, NULL, 'PRAKTIKUM STATISTIKA', 1, 23, 'FSI25217', 1),
(97, 4, 32, 'PRAKTIKUM STATISTIKA', 1, 24, 'FSI25217', 1),
(98, 24, 9, 'REKAYASA PERANGKAT LUNAK', 3, 7, 'FSI111217', 0),
(99, 24, 9, 'REKAYASA PERANGKAT LUNAK', 3, 8, 'FSI111217', 0),
(100, 13, 17, 'REKAYASA PERANGKAT LUNAK', 3, 23, 'FSI111217', 1),
(101, 13, 17, 'REKAYASA PERANGKAT LUNAK', 3, 24, 'FSI111217', 1),
(102, 2, 4, 'SISTEM PENDUKUNG KEPUTUSAN', 3, 13, 'FSI33217', 0),
(103, 4, 14, 'SISTEM PENDUKUNG KEPUTUSAN', 3, 32, 'FSI33217', 1),
(104, 4, 32, 'STATISTIKA', 2, 7, 'FSI24217', 0),
(105, 4, 32, 'STATISTIKA', 2, 8, 'FSI24217', 0),
(106, 20, NULL, 'STATISTIKA', 2, 23, 'FSI24217', 1),
(107, 4, 32, 'STATISTIKA', 2, 24, 'FSI24217', 1),
(108, 2, 8, 'TEKNOLOGI BERGERAK', 3, 13, 'FSI36217', 0),
(109, 31, NULL, 'TEKNOLOGI BERGERAK', 3, 32, 'FSI36217', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mk`
--
ALTER TABLE `mk`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dosen1` (`dosen1`),
  ADD KEY `kelas` (`kelas`),
  ADD KEY `mk_ibfk_2` (`dosen2`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mk`
--
ALTER TABLE `mk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mk`
--
ALTER TABLE `mk`
  ADD CONSTRAINT `mk_ibfk_1` FOREIGN KEY (`dosen1`) REFERENCES `dosen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mk_ibfk_2` FOREIGN KEY (`dosen2`) REFERENCES `dosen` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `mk_ibfk_3` FOREIGN KEY (`kelas`) REFERENCES `kelas` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
