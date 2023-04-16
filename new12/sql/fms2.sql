-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2023 at 05:28 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fms2`
--

-- --------------------------------------------------------

--
-- Table structure for table `faculty_credentials`
--

CREATE TABLE `faculty_credentials` (
  `uname` varchar(244) NOT NULL,
  `pass` varchar(244) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_credentials`
--

INSERT INTO `faculty_credentials` (`uname`, `pass`) VALUES
('aditta', '1234'),
('pritam', '1234'),
('radia', '1234'),
('riju', '1234'),
('saman', '1234'),
('tanusree', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_information`
--

CREATE TABLE `faculty_information` (
  `id` varchar(244) NOT NULL,
  `name` varchar(244) NOT NULL,
  `initial` varchar(244) NOT NULL,
  `des` varchar(244) NOT NULL,
  `room` varchar(244) NOT NULL,
  `dep` varchar(244) NOT NULL,
  `scholar` varchar(244) NOT NULL,
  `phone` varchar(244) NOT NULL,
  `research` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty_information`
--

INSERT INTO `faculty_information` (`id`, `name`, `initial`, `des`, `room`, `dep`, `scholar`, `phone`, `research`) VALUES
('aditta', 'Aditta Barua', 'ADB', 'Lecturer', 'UB80505', 'CSE', 'www.adb34.com', '01678345756', 'NLP'),
('pritam', 'Pritam Barua', 'PRA', 'Associate Professor', 'UB70712', 'CSE', 'www.pra1.com', '01987234536', 'Networking'),
('radia', 'Radia Aman', 'RDA', 'Assistant Professor', 'UB70501', 'CSE', 'www.ggp.com', '01892354678', 'NLP'),
('riju', 'Tanjim Islam Riju', 'TJR', 'Assistant Professor', 'UB80111', 'CSE', 'www.trj.com', '01784345678', 'ML'),
('saman', 'Saman Sarker Joy', 'SSJ', 'Senior Lecturer', 'Ub021901', 'CSE', 'www.sm.com', '01712345645', 'ML'),
('tanusree', 'Tanusree Das', 'TRD', 'Senior Lecturer', 'UB201772', 'CSE', 'www.anrr.com', '01781234567', 'DL');

-- --------------------------------------------------------

--
-- Table structure for table `student_credentials`
--

CREATE TABLE `student_credentials` (
  `uname` varchar(244) NOT NULL,
  `pass` varchar(244) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_credentials`
--

INSERT INTO `student_credentials` (`uname`, `pass`) VALUES
('ariyan', '123'),
('ayon', '123'),
('farhan', '123'),
('lopa', '123'),
('mahi', '123'),
('raisa', '123'),
('sadman', '123'),
('tahia', '123');

-- --------------------------------------------------------

--
-- Table structure for table `student_information`
--

CREATE TABLE `student_information` (
  `id` varchar(244) NOT NULL,
  `name` varchar(244) NOT NULL,
  `student_id` varchar(244) NOT NULL,
  `credits` varchar(244) NOT NULL,
  `dep` varchar(244) NOT NULL,
  `cgpa` varchar(244) NOT NULL,
  `dob` date NOT NULL,
  `supervisor` varchar(255) DEFAULT NULL,
  `thesis_status` varchar(255) DEFAULT NULL,
  `interest` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_information`
--

INSERT INTO `student_information` (`id`, `name`, `student_id`, `credits`, `dep`, `cgpa`, `dob`, `supervisor`, `thesis_status`, `interest`) VALUES
('ariyan', 'Ariyan Hossain', '20101111', '90', 'CSE', '4.00', '1999-08-11', 'Aditta Barua', 'yes', 'NLP'),
('ayon', 'Ayon Saha', '20101123', '78', 'CSE', '3.80', '2000-10-04', 'Saman Sarker Joy', 'yes', 'ML'),
('farhan', 'Farhan Ahmed', '20101250', '78', 'CSE', '3.91', '1999-12-18', NULL, NULL, NULL),
('lopa', 'Lopa Ghosh', '20101213', '93', 'CSE', '3.87', '1999-05-13', NULL, NULL, NULL),
('mahi', 'Mahi Rahman', '20101345', '81', 'CSE', '3.78', '2000-11-09', 'Tanusree Das', 'Yes', 'DL'),
('raisa', 'Raisa Sadia', '20101270', '87', 'CSE', '3.83', '1999-06-01', NULL, NULL, NULL),
('sadman', 'Sadman Ahmed ', '20101212', '93', 'CSE', '3.65', '2000-03-20', NULL, NULL, NULL),
('tahia', 'Tahia Binta Abdullah', '20101243', '90', 'CSE', '3.88', '2000-09-20', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `faculty_credentials`
--
ALTER TABLE `faculty_credentials`
  ADD PRIMARY KEY (`uname`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- Indexes for table `faculty_information`
--
ALTER TABLE `faculty_information`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_credentials`
--
ALTER TABLE `student_credentials`
  ADD PRIMARY KEY (`uname`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- Indexes for table `student_information`
--
ALTER TABLE `student_information`
  ADD UNIQUE KEY `id` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
