-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2016 at 11:14 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `studenthealth`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `privy` int(11) NOT NULL,
  `codename` varchar(20) NOT NULL,
  `role` enum('guest','user','admin') NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `team_id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `username`, `password`, `privy`, `codename`, `role`, `firstname`, `lastname`, `agent_id`, `phone`, `team_id`, `email`) VALUES
(1, 'zeoharlem@yahoo.co.uk', '$2a$08$eUAwhfJe8E9spBynZk2Nj.WaXE1wXiVJJFqVbxumVW3ggILMRKIN2', 5, '1234567890', 'admin', 'theophilus', 'alamu', 17769, '+2348098513161', 9896, 'zeoharlem@yahoo.co.uk');

-- --------------------------------------------------------

--
-- Table structure for table `jambnumbers`
--

CREATE TABLE IF NOT EXISTS `jambnumbers` (
  `jamb_numbers_id` int(11) NOT NULL AUTO_INCREMENT,
  `jamb_registration_number` varchar(100) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`jamb_numbers_id`),
  UNIQUE KEY `jamb_registration_number` (`jamb_registration_number`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jambnumbers`
--

INSERT INTO `jambnumbers` (`jamb_numbers_id`, `jamb_registration_number`, `status`) VALUES
(1, '1234567AB', 0);

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE IF NOT EXISTS `register` (
  `register_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phonenumber` varchar(30) NOT NULL,
  `address` mediumtext NOT NULL,
  `password` varchar(200) NOT NULL,
  `codename` int(11) NOT NULL,
  `role` enum('guest','user','admin') NOT NULL DEFAULT 'guest',
  `date_of_registration` datetime NOT NULL,
  PRIMARY KEY (`register_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`register_id`, `firstname`, `lastname`, `email`, `phonenumber`, `address`, `password`, `codename`, `role`, `date_of_registration`) VALUES
(1, 'theophilus', 'alamu', 'zeoharlem@yahoo.co.uk', '08098513161', 'goshen house papa apete ibadan nigerai', '$2y$08$ckU15EszSG7amQa6g4435O9sWFFzCaiRvoqswasIN14DpcwUVxW9y', 2147483647, 'user', '0000-00-00 00:00:00'),
(2, 'olufunto', 'abiola alamu', 'afuntybabe@yahoo.com', '08186982508', 'no 31, raimi alabi street, sitaga, eleyel ibadan', '$2y$08$2FNz80ZbLELC9NxpuGt9UOrbt2klJkRf81mEP.2uAYHVNRYyAR2Am', 2147483647, 'user', '0000-00-00 00:00:00'),
(4, 'ifeoluwa', 'solomon', 'hifey@pepperedrice.com', '08012334455', 'no 12, gonjo house, ashi bodija, ibadan', '$2y$08$Tq2qajJXjbhh7Mms4A5NN.R/hoYVVmZ3F7662knaE/NBenFOiFf0O', 22680123, 'user', '0000-00-00 00:00:00');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
