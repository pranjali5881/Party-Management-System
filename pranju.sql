-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2019 at 05:10 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pranju`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `user` varchar(30) NOT NULL,
  `pass` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`user`, `pass`) VALUES
('admin', 'root');

-- --------------------------------------------------------

--
-- Table structure for table `cetring`
--

CREATE TABLE `cetring` (
  `id` int(30) NOT NULL,
  `name` varchar(60) NOT NULL,
  `veg` varchar(50) NOT NULL,
  `non` varchar(65) NOT NULL,
  `starter` varchar(60) NOT NULL,
  `user` varchar(30) NOT NULL,
  `pass` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cetring`
--

INSERT INTO `cetring` (`id`, `name`, `veg`, `non`, `starter`, `user`, `pass`) VALUES
(1, 'purohit', '60', '70', '30', 'admin', 'root'),
(2, 'kshirsagar', '40', '50', '35', 'admin', 'root'),
(3, 'balaji', '40', '30', '60', 'ajay', 'ajay1234');

-- --------------------------------------------------------

--
-- Table structure for table `decoration`
--

CREATE TABLE `decoration` (
  `id` int(30) NOT NULL,
  `name` varchar(60) NOT NULL,
  `ballon` varchar(100) NOT NULL,
  `flower` varchar(65) NOT NULL,
  `wooden` varchar(60) NOT NULL,
  `user` varchar(30) NOT NULL,
  `pass` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `decoration`
--

INSERT INTO `decoration` (`id`, `name`, `ballon`, `flower`, `wooden`, `user`, `pass`) VALUES
(1, 'samrath', '200', '300', '400', 'admin', 'root'),
(2, 'rutuja', '30', '50', '80', 'mahi', '1234'),
(3, 'saurabh', '500', '700', '800', 'user', 'user1234');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(30) NOT NULL,
  `mob` varchar(60) NOT NULL,
  `user` varchar(30) NOT NULL,
  `pass` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user1`
--

CREATE TABLE `user1` (
  `id` int(30) NOT NULL,
  `name` varchar(60) NOT NULL,
  `cet` int(50) NOT NULL,
  `deco` int(50) NOT NULL,
  `cid` int(60) NOT NULL,
  `did` int(255) NOT NULL,
  `hall` int(78) NOT NULL,
  `date` varchar(80) NOT NULL,
  `fbill` int(56) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user1`
--

INSERT INTO `user1` (`id`, `name`, `cet`, `deco`, `cid`, `did`, `hall`, `date`, `fbill`) VALUES
(1, 'pradeep', 3300, 60, 1, 1, 3000, '12/10/2019', 11260),
(1, 'pradeep', 4350, 60, 1, 1, 4000, '05/10/2019', 11260),
(1, 'pranjali', 4200, 60, 3, 1, 7000, '19/10/2019', 11260),
(2, 'abhijeet', 4700, 60, 1, 1, 7000, '04/10/2019', 0);

-- --------------------------------------------------------

--
-- Table structure for table `userd`
--

CREATE TABLE `userd` (
  `name` varchar(30) NOT NULL,
  `mob` varchar(60) NOT NULL,
  `user` varchar(50) NOT NULL,
  `pass` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userd`
--

INSERT INTO `userd` (`name`, `mob`, `user`, `pass`) VALUES
('pradeep', '919028502807', 'admin', 'admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
