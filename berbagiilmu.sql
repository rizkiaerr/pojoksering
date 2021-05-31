-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2021 at 07:54 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `berbagiilmu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` smallint(3) NOT NULL,
  `admin_nama` varchar(20) DEFAULT NULL,
  `admin_jk` varchar(1) DEFAULT NULL,
  `admin_ttl` varchar(20) DEFAULT NULL,
  `admin_tglahir` date DEFAULT NULL,
  `admin_alamat` varchar(50) DEFAULT NULL,
  `admin_tlp` decimal(13,0) DEFAULT NULL,
  `admin_username` varchar(20) DEFAULT NULL,
  `admin_email` varchar(40) DEFAULT NULL,
  `admin_password` varchar(20) DEFAULT NULL,
  `admin_foto` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_nama`, `admin_jk`, `admin_ttl`, `admin_tglahir`, `admin_alamat`, `admin_tlp`, `admin_username`, `admin_email`, `admin_password`, `admin_foto`) VALUES
(1, 'Adira', 'L', 'Bandung', '0000-00-00', 'Jl Kramatjati No 32 Bandung', '89695686313', 'admin', 'fleqsy_afc@yahoo.com', 'admin_coi11', '1.png');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `buku_id` smallint(3) NOT NULL,
  `buku_judul` varchar(50) DEFAULT NULL,
  `buku_author` smallint(3) DEFAULT NULL,
  `buku_kategori` varchar(10) DEFAULT NULL,
  `tanggal_upload` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buku_admin`
--

CREATE TABLE `buku_admin` (
  `buku_id` varchar(5) NOT NULL,
  `buku_judul` varchar(50) DEFAULT NULL,
  `buku_penulis` varchar(50) DEFAULT NULL,
  `buku_author` smallint(3) DEFAULT NULL,
  `buku_kategori` varchar(10) DEFAULT NULL,
  `buku_bahasa` varchar(10) DEFAULT NULL,
  `tanggal_upload` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku_admin`
--

INSERT INTO `buku_admin` (`buku_id`, `buku_judul`, `buku_penulis`, `buku_author`, `buku_kategori`, `buku_bahasa`, `tanggal_upload`) VALUES
('1', 'Isu Aktual', 'Yedy Nurdiansyah', 1, '01', 'Teknis Sub', '2021-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` varchar(10) NOT NULL,
  `kategori_jenis` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_jenis`) VALUES
('01', 'Administrasi Keamanan dan Ketertiban'),
('02', 'Kegiatan Kerja'),
('03', 'Kepegawaian dan Keuangan'),
('04', 'Kesatuan Pengamanan Lembaga Pemasyarakatan'),
('05', 'Materi Diklat BPSDM'),
('06', 'Perawatan Narapidana / Anak Didik'),
('07', 'Registrasi dan Bimbingan Kemasyarakatan'),
('08', 'Urusan Umum');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `member_id` smallint(3) NOT NULL,
  `member_nama` varchar(20) DEFAULT NULL,
  `member_jk` varchar(1) DEFAULT NULL,
  `member_ttl` varchar(20) DEFAULT NULL,
  `member_tglahir` date DEFAULT NULL,
  `member_alamat` varchar(50) DEFAULT NULL,
  `member_tlp` decimal(13,0) DEFAULT NULL,
  `member_username` varchar(20) DEFAULT NULL,
  `member_email` varchar(40) DEFAULT NULL,
  `member_password` varchar(40) DEFAULT NULL,
  `member_foto` varchar(40) DEFAULT 'default.png'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_id`, `member_nama`, `member_jk`, `member_ttl`, `member_tglahir`, `member_alamat`, `member_tlp`, `member_username`, `member_email`, `member_password`, `member_foto`) VALUES
(12, 'Feki', 'L', 'Bandung', '1990-12-20', 'Jalan Dago 99', '89695686313', 'Aircraft', 'fekipangestu@yahoo.com', 'faf1818b0a5febc6eb37f90ada0e3d29', 'default.png'),
(16, 'Moch. Rizkia Hidayat', 'L', 'Sumedang', '1996-04-23', 'Sumedang', '89661203309', 'myname.kia', 'rizkiaerr@gmail.com', '4651aec0dc668888cdc995fdde5d8aa1', 'default.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`buku_id`),
  ADD KEY `fk_member` (`buku_author`),
  ADD KEY `fk_kategori_member` (`buku_kategori`);

--
-- Indexes for table `buku_admin`
--
ALTER TABLE `buku_admin`
  ADD PRIMARY KEY (`buku_id`),
  ADD KEY `fk_author` (`buku_author`),
  ADD KEY `fk_kategori` (`buku_kategori`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `buku_id` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_id` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `buku`
--
ALTER TABLE `buku`
  ADD CONSTRAINT `fk_kategori_member` FOREIGN KEY (`buku_kategori`) REFERENCES `kategori` (`kategori_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_member` FOREIGN KEY (`buku_author`) REFERENCES `member` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `buku_admin`
--
ALTER TABLE `buku_admin`
  ADD CONSTRAINT `fk_author` FOREIGN KEY (`buku_author`) REFERENCES `admin` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_kategori` FOREIGN KEY (`buku_kategori`) REFERENCES `kategori` (`kategori_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
