-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2020 at 03:50 PM
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
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `nama`, `nip`) VALUES
(1, 'ALI BARDADI', ''),
(2, 'ALI IBRAHIM', ''),
(4, 'ALLSELLA MEIRIZA, M.T', ''),
(5, 'ARI WEDHASMARA', ''),
(6, 'APRIANSYAH PUTRA', ''),
(7, 'BAYU WIJAYA PUTRA', ''),
(8, 'DEDI KURNIAWAN', ''),
(9, 'DINDA LESTARINI', ''),
(10, 'DINNA YUNIKA, M.T', ''),
(11, 'DERIS STIAWAN', ''),
(12, 'DWI ROSA INDAH, M.T', ''),
(13, 'ERMATITA', ''),
(14, 'ENDANG LESTARI RUSKAN', ''),
(15, 'ERMANOVIDA', ''),
(16, 'FATHONI', ''),
(17, 'IMAN SALADDIN, MMSI', ''),
(18, 'JAIDAN JAUHARI, M.T', ''),
(19, 'KEN DITHA TANIA', ''),
(20, 'M. IKHSAN JAMBAK', ''),
(21, 'MGS. AFRIYAN FIRDAUS', ''),
(22, 'MPK', ''),
(23, 'MUHAMMAD HIDAYAT, M.SI.AK,CA', ''),
(24, 'NABILA RIZKY OKTADINI', ''),
(25, 'NUR KHAMISAH, S.E', ''),
(26, 'YADI UTAMA', ''),
(27, 'SRI MARYATI, S.E., MSC', ''),
(28, 'TRI SARTIKA PRATIWI', ''),
(29, 'PACU PUTRA', ''),
(30, 'PUTRI EKA SEVTIYUNI', ''),
(31, 'RAHMAT IZWAN', ''),
(32, 'RUDI SANJAYA', ''),
(33, 'YUNITA', ''),
(35, 'ASD', '');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `semester` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id`, `tahun`, `semester`) VALUES
(2, '2016', 'GENAP');

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id`, `nama_kelas`) VALUES
(1, 'BIL1A'),
(2, 'BIL1B'),
(3, 'BIL2A'),
(4, 'BIL2B'),
(5, 'BIL3A'),
(6, 'BIL3B'),
(7, 'BIL4A'),
(8, 'BIL4B'),
(9, 'BIL5A'),
(10, 'BIL5B'),
(11, 'BIL6A'),
(12, 'BIL6B'),
(13, 'BILPIL'),
(14, 'REG1A'),
(15, 'REG1B'),
(16, 'REG1C'),
(17, 'REG2A'),
(18, 'REG2B'),
(19, 'REG2C'),
(20, 'REG3A'),
(21, 'REG3B'),
(22, 'REG3C'),
(23, 'REG4A'),
(24, 'REG4B'),
(25, 'REG4C'),
(26, 'REG5A'),
(27, 'REG5B'),
(28, 'REG5C'),
(29, 'REG6A'),
(30, 'REG6B'),
(31, 'REG6C'),
(32, 'REGPIL');

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
(1, 23, NULL, 'AKUNTANSI DASAR', 2, 3, 'FSI23117', 0),
(2, 23, NULL, 'AKUNTANSI DASAR', 2, 4, 'FSI23117', 0),
(6, 25, NULL, 'AKUNTANSI DASAR', 2, 17, 'FSI23117', 1),
(7, 27, NULL, 'AKUNTANSI DASAR', 2, 18, 'FSI23117', 1),
(8, 28, NULL, 'AKUNTANSI DASAR', 2, 19, 'FSI23117', 1),
(9, 24, NULL, 'ALGORITMA DAN PEMROGRAMAN II', 3, 3, 'FSI16117', 0),
(10, 30, NULL, 'ALGORITMA DAN PEMROGRAMAN II', 3, 4, 'FSI16117', 0),
(11, 18, NULL, 'ALGORITMA DAN PEMROGRAMAN II', 3, 17, 'FSI16117', 1),
(14, 12, NULL, 'ALGORITMA DAN PEMROGRAMAN II', 3, 18, 'FSI16117', 1),
(15, 18, NULL, 'ALGORITMA DAN PEMROGRAMAN II', 3, 19, 'FSI16117', 1),
(16, 10, NULL, 'ANALISIS DAN PERANCANGAN SISTEM INFORMASI II', 3, 7, 'FSI18217', 0),
(17, 10, NULL, 'ANALISIS DAN PERANCANGAN SISTEM INFORMASI II', 3, 8, 'FSI18217', 0),
(18, 21, NULL, 'ANALISIS DAN PERANCANGAN SISTEM INFORMASI II', 3, 23, 'FSI18217', 1),
(19, 21, NULL, 'ANALISIS DAN PERANCANGAN SISTEM INFORMASI II', 3, 24, 'FSI18217', 1),
(20, 12, NULL, 'AUDIT SISTEM INFORMASI', 3, 13, 'FSI38217', 0),
(21, 30, NULL, 'AUDIT SISTEM INFORMASI', 3, 32, 'FSI38217', 1),
(22, 26, NULL, 'BASIS DATA II', 3, 7, 'FSI19217', 0),
(23, 14, NULL, 'BASIS DATA II', 3, 8, 'FSI19217', 0),
(24, 1, NULL, 'BASIS DATA II', 3, 23, 'FSI19217', 1),
(25, 1, NULL, 'BASIS DATA II', 3, 24, 'FSI19217', 1),
(26, 6, NULL, 'E-GOVERNMENT', 3, 13, 'FSI34217', 0),
(27, 5, NULL, 'E-GOVERNMENT', 3, 32, 'FSI34217', 1),
(28, 1, NULL, 'ENTERPRISE RESOURCE PLANNING', 3, 11, 'FSI110317', 0),
(29, 1, NULL, 'ENTERPRISE RESOURCE PLANNING', 3, 12, 'FSI110317', 0),
(30, 16, NULL, 'ENTERPRISE RESOURCE PLANNING', 3, 29, 'FSI110317', 1),
(31, 16, NULL, 'ENTERPRISE RESOURCE PLANNING', 3, 30, 'FSI110317', 1),
(32, 29, NULL, 'INFRASTRUKTUR TI', 3, 13, 'FSI37217', 0),
(33, 29, NULL, 'INFRASTRUKTUR TI', 3, 32, 'FSI37217', 1),
(34, 19, NULL, 'KECERDASAN BISNIS', 3, 13, 'FSI31217', 0),
(35, 1, NULL, 'KECERDASAN BISNIS', 3, 32, 'FSI31217', 1),
(36, 15, NULL, 'KEWIRAUSAHAAN', 2, 11, 'FIK007317', 0),
(37, 15, NULL, 'KEWIRAUSAHAAN', 2, 12, 'FIK007317', 0),
(38, 15, NULL, 'KEWIRAUSAHAAN', 2, 29, 'FIK007317', 1),
(39, 15, NULL, 'KEWIRAUSAHAAN', 2, 30, 'FIK007317', 1),
(40, 11, NULL, 'KOMUNIKASI DATA DAN JARINGAN KOMPUTER', 3, 7, 'FSI17217', 0),
(41, 11, NULL, 'KOMUNIKASI DATA DAN JARINGAN KOMPUTER', 3, 8, 'FSI17217', 0),
(42, 17, NULL, 'KOMUNIKASI DATA DAN JARINGAN KOMPUTER', 3, 23, 'FSI17217', 1),
(43, 17, NULL, 'KOMUNIKASI DATA DAN JARINGAN KOMPUTER', 3, 24, 'FSI17217', 1),
(44, 14, NULL, 'KONSEP SISTEM INFORMASI', 3, 3, 'FSI18117', 0),
(45, 5, NULL, 'KONSEP SISTEM INFORMASI', 3, 4, 'FSI18117', 0),
(46, 14, NULL, 'KONSEP SISTEM INFORMASI', 3, 17, 'FSI18117', 1),
(47, 12, NULL, 'KONSEP SISTEM INFORMASI', 3, 18, 'FSI18117', 1),
(48, 4, NULL, 'KONSEP SISTEM INFORMASI', 3, 19, 'FSI18117', 1),
(49, 31, NULL, 'MANAJEMEN PENGETAHUAN', 3, 13, 'FSI32217', 0),
(50, 19, NULL, 'MANAJEMEN PENGETAHUAN', 3, 32, 'FSI32217', 1),
(51, 2, NULL, 'MANAJEMEN SISTEM INFORMASI', 3, 13, 'FSI35217', 0),
(52, 5, NULL, 'MANAJEMEN SISTEM INFORMASI', 3, 32, 'FSI35217', 1),
(53, 20, NULL, 'METODOLOGI PENELITIAN', 2, 11, 'FIK002317', 0),
(54, 2, NULL, 'METODOLOGI PENELITIAN', 2, 12, 'FIK002317', 0),
(55, 18, NULL, 'METODOLOGI PENELITIAN', 2, 29, 'FIK002317', 1),
(56, 18, NULL, 'METODOLOGI PENELITIAN', 2, 30, 'FIK002317', 1),
(57, 17, NULL, 'MULTIMEDIA', 3, 11, 'FSI19317', 0),
(58, 17, NULL, 'MULTIMEDIA', 3, 12, 'FSI19317', 0),
(59, 29, NULL, 'MULTIMEDIA', 3, 29, 'FSI19317', 1),
(60, 29, NULL, 'MULTIMEDIA', 3, 30, 'FSI19317', 1),
(61, 9, NULL, 'PEMROGRAMAN BERORIENTASI OBJEK', 3, 7, 'FSI112217', 0),
(62, 9, NULL, 'PEMROGRAMAN BERORIENTASI OBJEK', 3, 8, 'FSI112217', 0),
(63, 12, NULL, 'PEMROGRAMAN BERORIENTASI OBJEK', 3, 23, 'FSI112217', 1),
(64, 30, NULL, 'PEMROGRAMAN BERORIENTASI OBJEK', 3, 24, 'FSI112217', 1),
(65, 19, NULL, 'PEMROGRAMAN WEB II', 3, 3, 'FSI19117', 0),
(66, 19, NULL, 'PEMROGRAMAN WEB II', 3, 4, 'FSI19117', 0),
(67, 31, NULL, 'PEMROGRAMAN WEB II', 3, 17, 'FSI19117', 1),
(68, 31, NULL, 'PEMROGRAMAN WEB II', 3, 18, 'FSI19117', 1),
(69, 31, NULL, 'PEMROGRAMAN WEB II', 3, 19, 'FSI19117', 1),
(70, 20, NULL, 'PENGEMBANGAN DAN PEMASARAN PRODUK', 3, 32, 'FSI39217', 1),
(71, 23, NULL, 'PRAKTIKUM AKUNTANSI DASAR', 1, 3, 'FSI24117', 0),
(72, 23, NULL, 'PRAKTIKUM AKUNTANSI DASAR', 1, 4, 'FSI24117', 0),
(73, 25, NULL, 'PRAKTIKUM AKUNTANSI DASAR', 1, 17, 'FSI24117', 1),
(74, 27, NULL, 'PRAKTIKUM AKUNTANSI DASAR', 1, 18, 'FSI24117', 1),
(75, 28, NULL, 'PRAKTIKUM AKUNTANSI DASAR', 1, 19, 'FSI24117', 1),
(76, 7, NULL, 'PRAKTIKUM ALGORITMA DAN PEMROGRAMAN II', 1, 3, 'FSI17117', 0),
(77, 30, NULL, 'PRAKTIKUM ALGORITMA DAN PEMROGRAMAN II', 1, 4, 'FSI17117', 0),
(78, 10, NULL, 'PRAKTIKUM ALGORITMA DAN PEMROGRAMAN II', 1, 17, 'FSI17117', 1),
(79, 10, NULL, 'PRAKTIKUM ALGORITMA DAN PEMROGRAMAN II', 1, 18, 'FSI17117', 1),
(80, 7, NULL, 'PRAKTIKUM ALGORITMA DAN PEMROGRAMAN II', 1, 19, 'FSI17117', 1),
(81, 8, NULL, 'PRAKTIKUM BASIS DATA II', 1, 7, 'FSI110217', 0),
(82, 7, NULL, 'PRAKTIKUM BASIS DATA II', 1, 8, 'FSI110217', 0),
(83, 8, NULL, 'PRAKTIKUM BASIS DATA II', 1, 23, 'FSI110217', 1),
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
(94, 4, NULL, 'PRAKTIKUM STATISTIKA', 1, 7, 'FSI25217', 0),
(95, 4, NULL, 'PRAKTIKUM STATISTIKA', 1, 8, 'FSI25217', 0),
(96, 20, NULL, 'PRAKTIKUM STATISTIKA', 1, 23, 'FSI25217', 1),
(97, 32, NULL, 'PRAKTIKUM STATISTIKA', 1, 24, 'FSI25217', 1),
(98, 24, NULL, 'REKAYASA PERANGKAT LUNAK', 3, 7, 'FSI111217', 0),
(99, 9, NULL, 'REKAYASA PERANGKAT LUNAK', 3, 8, 'FSI111217', 0),
(100, 13, NULL, 'REKAYASA PERANGKAT LUNAK', 3, 23, 'FSI111217', 1),
(101, 17, NULL, 'REKAYASA PERANGKAT LUNAK', 3, 24, 'FSI111217', 1),
(102, 2, NULL, 'SISTEM PENDUKUNG KEPUTUSAN', 3, 13, 'FSI33217', 0),
(103, 4, NULL, 'SISTEM PENDUKUNG KEPUTUSAN', 3, 32, 'FSI33217', 1),
(104, 4, NULL, 'STATISTIKA', 2, 7, 'FSI24217', 0),
(105, 4, NULL, 'STATISTIKA', 2, 8, 'FSI24217', 0),
(106, 20, NULL, 'STATISTIKA', 2, 23, 'FSI24217', 1),
(107, 32, NULL, 'STATISTIKA', 2, 24, 'FSI24217', 1),
(108, 2, NULL, 'TEKNOLOGI BERGERAK', 3, 13, 'FSI36217', 0),
(109, 31, NULL, 'TEKNOLOGI BERGERAK', 3, 32, 'FSI36217', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

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
