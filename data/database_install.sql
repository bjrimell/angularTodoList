-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 30, 2016 at 01:00 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `TodoList`
--

-- --------------------------------------------------------

--
-- Table structure for table `Task`
--

CREATE TABLE `Task` (
  `Id` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `DateSet` datetime NOT NULL,
  `DateDue` datetime NOT NULL,
  `DateCompleted` datetime NOT NULL,
  `Completed` tinyint(1) NOT NULL,
  `Notes` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Task`
--

INSERT INTO `Task` (`Id`, `Title`, `DateSet`, `DateDue`, `DateCompleted`, `Completed`, `Notes`) VALUES
(1, 'This is the first item from DB', '2016-04-29 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'This is a test. Only Title and DateSet (plus this field) have been populated. The others should be null or default (i.e. Completed should be false).'),
(2, 'This is the second test item - marked as deleted', '2016-04-29 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'Second test item. This time'),
(3, 'This is the third test item', '2016-04-27 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'A bog standard non-completed task.'),
(4, 'Hard Coded', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, ''),
(5, 'Testing', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, ''),
(6, 'added from app', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, ''),
(7, 'this should persist', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, ''),
(8, 'this should persist', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, ''),
(9, 'this is stored in the DB!', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Task`
--
ALTER TABLE `Task`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Task`
--
ALTER TABLE `Task`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
