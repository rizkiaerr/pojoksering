-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2021 at 01:05 PM
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
(1, 'Adira', 'L', 'Bandung', '0000-00-00', 'Jl Kramatjati No 32 Bandung', '89695686313', 'admin', 'fleqsy_afc@yahoo.com', 'admin_coi11', '1.png'),
(2, 'Moch. Rizkia HIdayat', 'L', 'Sumedang', '1996-04-23', 'Purwakarta', '89661203309', 'Rizkia_administrator', 'rizkiaerr@gmail.com', 'admin', '2.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` smallint(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
