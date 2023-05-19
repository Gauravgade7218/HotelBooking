-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2023 at 11:53 AM
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
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `contactform`
--

CREATE TABLE `contactform` (
  `custID` int(11) NOT NULL,
  `custName` varchar(100) NOT NULL,
  `custEmail` varchar(100) NOT NULL,
  `custPhone` varchar(15) NOT NULL,
  `custMessage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contactform`
--

INSERT INTO `contactform` (`custID`, `custName`, `custEmail`, `custPhone`, `custMessage`) VALUES
(1, 'dggfghf', 'gfghfgf', 'hfghfghf', 'ggfghfghf'),
(2, 'darshan', 'vnSM ', '15265', 'djkaa'),
(3, 'harshal', 'hasrsgah@45678', '1893721894', 'jausbja');

-- --------------------------------------------------------

--
-- Table structure for table `hotelform`
--

CREATE TABLE `hotelform` (
  `custID` int(11) NOT NULL,
  `Firstname` varchar(200) NOT NULL,
  `Phonenumber` varchar(15) NOT NULL,
  `DepartureDate` date NOT NULL,
  `Guests` varchar(10) NOT NULL,
  `Lastname` varchar(200) NOT NULL,
  `Email` varchar(200) NOT NULL,
  `ArrivalDate` date NOT NULL,
  `RoomType` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotelform`
--

INSERT INTO `hotelform` (`custID`, `Firstname`, `Phonenumber`, `DepartureDate`, `Guests`, `Lastname`, `Email`, `ArrivalDate`, `RoomType`) VALUES
(1, 'darshan', '1234567890', '2023-05-01', 'LessThan5', 'Naik', 'bhikari@gmail.com', '2023-05-05', 'AC'),
(2, 'darshan', '01234560', '2023-05-29', 'LessThan5', 'bhadva', 'asjhj@gmail.com', '2023-07-05', 'AC');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contactform`
--
ALTER TABLE `contactform`
  ADD PRIMARY KEY (`custID`);

--
-- Indexes for table `hotelform`
--
ALTER TABLE `hotelform`
  ADD PRIMARY KEY (`custID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contactform`
--
ALTER TABLE `contactform`
  MODIFY `custID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hotelform`
--
ALTER TABLE `hotelform`
  MODIFY `custID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
