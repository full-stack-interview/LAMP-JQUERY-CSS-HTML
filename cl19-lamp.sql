-- phpMyAdmin SQL Dump
-- version 4.0.7
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 28, 2016 at 01:30 AM
-- Server version: 5.5.53
-- PHP Version: 5.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `cl19-lamp`
--

-- --------------------------------------------------------

--
-- Table structure for table `lamp_test`
--

CREATE TABLE IF NOT EXISTS `lamp_test` (
  `FirstName` varchar(7) DEFAULT NULL,
  `LastName` varchar(28) DEFAULT NULL,
  `Address` varchar(21) DEFAULT NULL,
  `City` varchar(12) DEFAULT NULL,
  `State` varchar(20) DEFAULT NULL,
  `ZipCode` varchar(10) DEFAULT NULL,
  `Notes` varchar(106) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `lamp_test`
--

INSERT INTO `lamp_test` (`FirstName`, `LastName`, `Address`, `City`, `State`, `ZipCode`, `Notes`, `id`) VALUES
('Albert', 'Adams', '1234 A Street', 'Attica', 'New York', '11111-1111', 'This is the first test note in the system', 1),
('Bob', 'Bobbart', '567 B Street', 'Brunswick', 'New Jersey', '22222-2222', 'The second note.', 2),
('Charlie', 'Chaplin', '8 Champ Road', 'Chicago', 'Illinois', '33333-3333', 'An excellent actor', 3),
('Dave', 'Drummond', '9 Dumbledore Drive', 'Denver', 'Colorado', '44444-4444', 'A wizard?', 4),
('Ed', 'Egbert', '10 Fake Lane', 'Eagle''s Rock', 'Washington', '55555-5555', 'let''s see how you handle quotes on import', 5),
('Frank', 'Fakerton', '2a O''Malley Street', 'Fumble Falls', 'Georgia', '66666-6666', 'Getting slightly more interesting data', 6),
('George', 'Gimestock', '2b O''Malley Street', 'Georgiana', 'Alabama', '77777-7777', 'Did you read through the data first and look for invalid entries? Have your CSV fix the state on this one.', 7),
('Hogarth', 'Hogarth', '99 Hogarth Hogarth', 'Hogarth', 'Massachusetts', '88888-8888', 'Should be MA.  Solution should be handled by your import.', 8),
('Ganesha', 'Venkatanarasimharajuvaripeta', '1234 A Street', 'Milwaukee', 'Wisconsin', '89898-564a', 'Got room for long names?', 9),
('Igloo', 'IguanaMan', '1 Freezy Street', 'Baja', 'California', '99999-9999', 'nothing fancy', 10),
('Julius', 'Adams', '1234 A Street', 'Attica', 'New York', '11111-1111', 'This is the first test note in the system', 11),
('Albert', 'Adams', '1235 A Street', 'Attica', 'New York', '11111-1111', 'neighbors', 12),
('Another', 'Record', '456 outa ideas street', 'Granite', 'Nevada', '98989-9999', 'Just trying to pad out the list so pages aren''t always 5 records tall', 13);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
