-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2014 at 05:07 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vote`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE IF NOT EXISTS `author` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `userid` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `sex` varchar(7) NOT NULL,
  `country` varchar(15) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `area` varchar(30) NOT NULL,
  `about` text NOT NULL,
  `pic` text NOT NULL,
  `createdon` datetime NOT NULL,
  `updateon` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employeeid` (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`id`, `fname`, `lname`, `userid`, `email`, `pass`, `dob`, `sex`, `country`, `mobile`, `area`, `about`, `pic`, `createdon`, `updateon`) VALUES
(1, 'sumit', 'singh', '1084760', 's@gmkail.com', '', '2009-01-01', 'male', 'india', '803467', 'tokyo', 'me', 'nb', '2009-03-01 00:00:00', '2009-11-01 00:00:00'),
(2, 'sumit', 'singh', 'summmmit', 'sumit@gmail.com', '', '2010-02-02', 'male', 'india', '8786', 'tokyo', 'none', 'none', '2017-10-10 00:00:00', '2017-10-18 00:00:00'),
(3, 'shivi', 'singh', 'shivi', 'sh@gmail.com', '', '2012-01-30', 'male', 'india', '8758', 'tokyo', 'none', 'none', '2018-11-18 00:00:00', '2017-09-18 00:00:00'),
(4, 'none', 'none', 'none', 'none', '', '2009-01-01', 'm', 'none', '54', 'none', 'none', 'none', '2019-11-18 00:00:00', '2018-11-18 00:00:00'),
(5, 'helo', 'helo', 'helo', 'helo', '', '2009-02-02', 'no', 'no', '57788', 'no', 'na', 'no', '2009-02-02 00:00:00', '2009-02-02 00:00:00'),
(6, 'hello sumit', 'sumi', 'ss', 'ss', '', '2009-02-02', 'asd', 'ad', 'asdasdag', 'adsg', 'nonw', 'nonw', '2017-11-18 16:16:00', '2019-11-18 17:16:00'),
(7, 'nahi', 'nahi', 'nahi', 'nahi', '', '2009-01-01', 'dak', 'no', 'no', 'no', 'no', 'non', '2017-03-02 20:20:00', '2018-11-02 23:17:00'),
(8, 'deepa', 'negi', 'deepa', 'd@negi.com', '', '2009-01-01', 'f', 'm', 'm', 'm', 'm', 'm', '2009-01-01 00:00:00', '2009-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE IF NOT EXISTS `options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `options` text NOT NULL,
  `createdon` datetime NOT NULL,
  `updatedon` datetime NOT NULL,
  `queid` int(11) NOT NULL,
  `authorid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `queid` (`queid`),
  KEY `authorid` (`authorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` text NOT NULL,
  `createdon` datetime NOT NULL,
  `updatedon` datetime NOT NULL,
  `authorid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `authorid` (`authorid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `options`
--
ALTER TABLE `options`
  ADD CONSTRAINT `options_ibfk_2` FOREIGN KEY (`authorid`) REFERENCES `author` (`id`),
  ADD CONSTRAINT `options_ibfk_1` FOREIGN KEY (`queid`) REFERENCES `question` (`id`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`authorid`) REFERENCES `author` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
