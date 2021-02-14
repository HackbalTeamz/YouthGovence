-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 03, 2020 at 08:20 AM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dancestudio1`
--

-- --------------------------------------------------------

--
-- Table structure for table `choreoreg`
--

CREATE TABLE IF NOT EXISTS `choreoreg` (
  `name` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `phone` bigint(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `specialization` varchar(25) NOT NULL,
  `longitude` varchar(30) NOT NULL,
  `latitude` varchar(30) NOT NULL,
  `fee` int(25) NOT NULL,
  `username` varchar(50) NOT NULL,
  `image` varchar(5000) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `choreoreg`
--

INSERT INTO `choreoreg` (`name`, `address`, `phone`, `email`, `specialization`, `longitude`, `latitude`, `fee`, `username`, `image`) VALUES
('Suresh Mukund', 'SS Villah,New Delhi', 9874558878, 'suresh123@gmail.com', 'break', ' 8.8123', '76.7589', 10000, 'suresh123@gmail.com', 'suresh-mukund.jpg'),
('Dharmesh ', 'Ds,Trivandrum', 8889994777, 'dharmesh123@gmail.com', 'hiphop', '8.4909', '76.9527', 10000, 'dharmesh123@gmail.com', 'Dharmesh _ Image.jpg'),
('Raghav Bavlecha', 'raghav ,kallambalam', 8899776655, 'raghav123@gmail.com', 'jazz', '8.7629', '76.7914', 10000, 'raghav123@gmail.com', 'raghav.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` int(10) NOT NULL,
  `vid` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `comment` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `vid`, `username`, `comment`) VALUES
(3, 'v90', 'suresh123@gmail.com', 'good performance'),
(1, 'v90', 'sreya123@gmail.com', 'nice'),
(2, 'v90', 'sreeshmasree24@gmail.com', 'good');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `type` varchar(15) NOT NULL,
  `status` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `type`, `status`) VALUES
('suresh123@gmail.com', 'suresh123', 'choreographer', 1),
('admin', 'admin', 'admin', 1),
('sreeshmasree24@gmail.com', 'sree123', 'student', 1),
('advik123@gmail.com', 'advik123', 'student', 1),
('dharmesh123@gmail.com', 'dharmesh123', 'choreographer', 1),
('raghav123@gmail.com', 'raghav123', 'choreographer', 0),
('dhruv123@gmail.com', 'dhruv123', 'student', 0),
('devukasatheesh@gmail.com', 'devukasatheesh', 'student', 0),
('shihana123@gmail.com', 'shihana123', 'student', 0),
('sumeeshs@gmail.com', 'sumeeshs', 'student', 0),
('swathy123@gmail.com', 'swathy123', 'student', 0),
('nailashaheed@gmail.com', 'nailashaheed', 'student', 0),
('rahul123@gmail.com', 'rahul123', 'student', 0);

-- --------------------------------------------------------

--
-- Table structure for table `prediction`
--

CREATE TABLE IF NOT EXISTS `prediction` (
  `pid` varchar(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `vid` varchar(10) NOT NULL,
  `date` date NOT NULL,
  `flexibility` varchar(20) NOT NULL,
  `facial_exp` varchar(20) NOT NULL,
  `no_of_moves` varchar(20) NOT NULL,
  `stage-interaction` varchar(20) NOT NULL,
  `appearance` varchar(20) NOT NULL,
  `hand_move` varchar(20) NOT NULL,
  `leg_move` varchar(20) NOT NULL,
  `hip_move` varchar(20) NOT NULL,
  `innovation` varchar(20) NOT NULL,
  `prediction_value` varchar(20) NOT NULL,
  `msd` varchar(500) NOT NULL,
  `prediction` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prediction`
--

INSERT INTO `prediction` (`pid`, `username`, `vid`, `date`, `flexibility`, `facial_exp`, `no_of_moves`, `stage-interaction`, `appearance`, `hand_move`, `leg_move`, `hip_move`, `innovation`, `prediction_value`, `msd`, `prediction`) VALUES
('1', 'suresh123', '2', '2020-01-11', 'low', 'high', 'high', 'low', 'high', 'high', 'high', 'low', 'high', 'electrodance', 'flex_low fe_high nm_high si_low app_high hdm_high lm_high hm_low in_high', 1),
('p49', 'suresh123', '1', '2020-01-12', 'high', 'high', 'high', 'low', 'high', 'high', 'low', 'high', 'high', 'breakdance', 'flex_high fe_high nm_high si_low app_high hdm_high lm_low hm_high in_high', 1),
('p51', 'sreeshmasree24@gmail.com', '4', '2020-01-13', 'low', 'high', 'average', 'high', 'low', 'high', 'high', 'high', 'high', '', 'flex_low fe_high nm_average si_high app_low hdm_high lm_high hm_high in_high', 1),
('p13', 'sreeshmasree24@gmail.com', '5', '2020-01-26', 'high', 'average', 'high', 'average', 'low', 'high', 'low', 'high', 'average', '', 'flex_high fe_average nm_high si_average app_low hdm_high lm_low hm_high in_average', 0);

-- --------------------------------------------------------

--
-- Table structure for table `predictvideos`
--

CREATE TABLE IF NOT EXISTS `predictvideos` (
  `vid` int(10) NOT NULL,
  `username` varchar(25) NOT NULL,
  `date` date NOT NULL,
  `video` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `predictvideos`
--

INSERT INTO `predictvideos` (`vid`, `username`, `date`, `video`) VALUES
(3, 'sreeshmasree24@gmail.com', '2020-01-14', 'videoupload/3.mp4'),
(2, 'suresh123', '2020-01-22', 'videoupload/2.mp4'),
(1, 'suresh123', '2020-01-14', 'videoupload/1.mp4'),
(4, 'sreeshmasree24@gmail.com', '2020-01-13', 'videoupload/4.mp4'),
(5, 'sreeshmasree24@gmail.com', '2020-01-26', 'videoupload/5.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE IF NOT EXISTS `request` (
  `id` int(10) NOT NULL,
  `cid` varchar(50) NOT NULL,
  `uid` varchar(50) NOT NULL,
  `date` date NOT NULL,
  `status` int(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`id`, `cid`, `uid`, `date`, `status`) VALUES
(1, 'suresh123@gmail.com', 'sreeshmasree24@gmail.com', '2020-01-24', 1);

-- --------------------------------------------------------

--
-- Table structure for table `studentreg`
--

CREATE TABLE IF NOT EXISTS `studentreg` (
  `name` varchar(25) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(25) NOT NULL,
  `phone` text NOT NULL,
  `interest` varchar(15) NOT NULL,
  `username` varchar(25) NOT NULL,
  `image` varchar(5000) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studentreg`
--

INSERT INTO `studentreg` (`name`, `dob`, `email`, `phone`, `interest`, `username`, `image`) VALUES
('Dhruv', '1999-03-07', 'dhruv123@gmail.com', '8281268879', 'electrodance', 'dhruv123@gmail.com', 'dhruv.jpg'),
('sreeshma', '1998-04-14', 'sreeshmasree24@gmail.com', '2147483647', 'hiphop', 'sreeshmasree24@gmail.com', '1.jpg'),
('Advik Ayan', '2017-04-17', 'advik123@gmail.com', '8136845271', 'freestyle', 'advik123@gmail.com', 'Malu Chechi 20180223_195533.jpg'),
('Devika Satheesh', '1995-12-08', 'devukasatheesh@gmail.com', '8592805450', 'jazz', 'devukasatheesh@gmail.com', 'devu.jpg'),
('Shihana', '1993-07-22', 'shihana123@gmail.com', '2314563411', 'hiphop', 'shihana123@gmail.com', 'IMG-20191203-WA0063.jpg'),
('Sumeesh S', '1996-10-13', 'sumeeshs@gmail.com', '8129845019', 'freestyle', 'sumeeshs@gmail.com', 'sumeesh.jpg'),
('Swathy Krishna', '2001-01-01', 'swathy123@gmail.com', '4455667788', 'hiphop', 'swathy123@gmail.com', 'IMG-20190622-WA0047.jpg'),
('Naila Shaheed', '1997-08-01', 'nailashaheed@gmail.com', '9605180629', 'salsa', 'nailashaheed@gmail.com', '2019-11-15-14-27-38-156.jpg'),
('Rahul J Kumar', '1996-01-29', 'rahul123@gmail.com', '5566998877', 'hiphop', 'rahul123@gmail.com', 'IMG-20180514-WA0232.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `upload`
--

CREATE TABLE IF NOT EXISTS `upload` (
  `vid` varchar(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `videos` varchar(50) NOT NULL,
  `type` varchar(10) NOT NULL,
  `details` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `points` int(10) NOT NULL,
  PRIMARY KEY (`vid`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `upload`
--

INSERT INTO `upload` (`vid`, `username`, `videos`, `type`, `details`, `date`, `points`) VALUES
('v90', 'sreeshmasree24@gmail.com', 'videoupload/v90.mp4', 'public', 'hiphop 2nd class', '2020-01-13', 17),
('v31', 'sreeshmasree24@gmail.com', 'videoupload/v31.mp4', 'private', 'class1', '2020-01-13', 0),
('v19', 'suresh123@gmail.com', 'videoupload/v19.mp4', 'private', 'hip hop', '2020-01-16', 0),
('v65', 'suresh123@gmail.com', 'videoupload/v65.mp4', 'public', 'break dance', '2020-01-15', 0);
