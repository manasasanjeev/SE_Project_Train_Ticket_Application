-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2021 at 02:24 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `se_projec_tdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `ticket table`
--

CREATE TABLE `ticket table` (
  `ticket no` int(20) NOT NULL,
  `train no` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `id card` enum('aadhar card','pan card','voter id','') NOT NULL,
  `gender` enum('male','female','','') NOT NULL,
  `age` int(10) NOT NULL,
  `status` enum('confirmed','waiting list','','') NOT NULL,
  `seat no` varchar(20) NOT NULL,
  `preferences` enum('old','proffession','','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket table`
--

INSERT INTO `ticket table` (`ticket no`, `train no`, `name`, `id card`, `gender`, `age`, `status`, `seat no`, `preferences`) VALUES
(220354466, 14218, 'Rajisha vijayan', 'aadhar card', 'female', 25, 'confirmed', 'S3 45', 'proffession'),
(220354476, 14326, 'pruthviraj', 'aadhar card', 'male', 37, 'waiting list', 'B4 34', 'proffession'),
(220354478, 14238, 'pruthviraj', 'aadhar card', 'male', 38, 'waiting list', 'B3 45', 'proffession');

-- --------------------------------------------------------

--
-- Table structure for table `train table`
--

CREATE TABLE `train table` (
  `train no` int(20) NOT NULL,
  `train name` varchar(50) NOT NULL,
  `source` varchar(20) NOT NULL,
  `destination` varchar(20) NOT NULL,
  `date` varchar(10) NOT NULL,
  `time` varchar(10) NOT NULL,
  `no.of passengers` int(255) NOT NULL,
  `distance` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `train table`
--

INSERT INTO `train table` (`train no`, `train name`, `source`, `destination`, `date`, `time`, `no.of passengers`, `distance`) VALUES
(14218, 'vishaka express ', 'kolkata', 'vizag', '11-02-2021', '4:00 pm', 600, 800),
(14326, 'godavari express', 'hyderabad', 'kakinada', '20-06-2021', '2:45 pm', 788, 745);

-- --------------------------------------------------------

--
-- Table structure for table `usertable`
--

CREATE TABLE `usertable` (
  `name` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `user id` varchar(15) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `address` varchar(100) NOT NULL,
  `id proof` varchar(100) NOT NULL,
  `phone no` bigint(50) NOT NULL,
  `email id` varchar(40) NOT NULL,
  `preferences` enum('old','public','private-public','private') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usertable`
--

INSERT INTO `usertable` (`name`, `password`, `user id`, `dob`, `address`, `id proof`, `phone no`, `email id`, `preferences`) VALUES
('pruthviraj', 'chitti12', 'pruthvi123', '12-06-1965', 'H.No:3-65,gandhinagar,hyderabad.', '', 8536243624, 'pruthvia@gmail.com', 'old'),
('Rajisha vijayan', 'chitti', 'rajish123', '06-06-1995', 'H.No:7-34,kanakavinayaka street,bangalore.', '', 9676557534, 'rajisha@gmail.com', 'old');

-- --------------------------------------------------------

--
-- Table structure for table `wallet table`
--

CREATE TABLE `wallet table` (
  `wallet id` varchar(20) NOT NULL,
  `bank name` varchar(20) NOT NULL,
  `balance` varchar(20) NOT NULL,
  `wpassword` varchar(15) NOT NULL,
  `src of fund` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wallet table`
--

INSERT INTO `wallet table` (`wallet id`, `bank name`, `balance`, `wpassword`, `src of fund`) VALUES
('ger2345', 'Union bank of india', '20k', 'pruth345', ''),
('pa2345', 'State bank of india', '30k', 'raj12', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ticket table`
--
ALTER TABLE `ticket table`
  ADD PRIMARY KEY (`ticket no`);

--
-- Indexes for table `train table`
--
ALTER TABLE `train table`
  ADD PRIMARY KEY (`train no`);

--
-- Indexes for table `usertable`
--
ALTER TABLE `usertable`
  ADD PRIMARY KEY (`user id`);

--
-- Indexes for table `wallet table`
--
ALTER TABLE `wallet table`
  ADD PRIMARY KEY (`wallet id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
