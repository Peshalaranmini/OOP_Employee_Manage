-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2022 at 12:22 PM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `employeeregister`
--

-- --------------------------------------------------------

--
-- Table structure for table `empmanage`
--

CREATE TABLE IF NOT EXISTS `empmanage` (
  `empID` int(6) NOT NULL AUTO_INCREMENT,
  `empName` varchar(200) NOT NULL,
  `empEmail` varchar(200) NOT NULL,
  `empNIC` varchar(40) NOT NULL,
  `empDate` varchar(50) NOT NULL,
  PRIMARY KEY (`empID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `empmanage`
--

INSERT INTO `empmanage` (`empID`, `empName`, `empEmail`, `empNIC`, `empDate`) VALUES
(2, 'etgwerwewe', 'dimuthu.ilankoon.d@gmail.com', 'rtg', '2022-05-02');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
