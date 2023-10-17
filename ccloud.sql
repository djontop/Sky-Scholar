-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.31 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for ccloudproject
CREATE DATABASE IF NOT EXISTS `ccloudproject` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ccloudproject`;

-- Dumping structure for table ccloudproject.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `Aid` varchar(35) NOT NULL,
  `Apass` varchar(35) NOT NULL,
  PRIMARY KEY (`Aid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table ccloudproject.admin: ~2 rows (approximately)
INSERT INTO `admin` (`Aid`, `Apass`) VALUES
	('admin', 'admin'),
	('williams', 'williams');

-- Dumping structure for table ccloudproject.examans
CREATE TABLE IF NOT EXISTS `examans` (
  `EAnsID` int NOT NULL AUTO_INCREMENT,
  `ExamID` int NOT NULL,
  `Senrl` varchar(50) NOT NULL,
  `Sname` varchar(50) NOT NULL,
  `Ans1` mediumtext NOT NULL,
  `Ans2` mediumtext NOT NULL,
  `Ans3` mediumtext NOT NULL,
  `Ans4` mediumtext NOT NULL,
  `Ans5` mediumtext NOT NULL,
  PRIMARY KEY (`EAnsID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Dumping data for table ccloudproject.examans: ~3 rows (approximately)
INSERT INTO `examans` (`EAnsID`, `ExamID`, `Senrl`, `Sname`, `Ans1`, `Ans2`, `Ans3`, `Ans4`, `Ans5`) VALUES
	(14, 18, '146891668', 'bodawdw bodawdw', 'wadwd', 'wadwad', 'dwad', 'awdwa', 'dwadwad'),
	(15, 18, '146891668', 'bodawdw bodawdw', 'awdwad', 'wad', 'wadwad', 'dawdwad', 'wdwa'),
	(16, 18, '146891666', 'wdwdw wdwd', 'wdw', 'dwdw', 'dwdw', 'wdw', 'wdwd');

-- Dumping structure for table ccloudproject.examdetails
CREATE TABLE IF NOT EXISTS `examdetails` (
  `ExamID` int NOT NULL AUTO_INCREMENT,
  `ExamName` varchar(50) NOT NULL,
  `Q1` varchar(10000) NOT NULL,
  `Q2` varchar(10000) NOT NULL,
  `Q3` varchar(10000) NOT NULL,
  `Q4` varchar(10000) NOT NULL,
  `Q5` varchar(10000) NOT NULL,
  PRIMARY KEY (`ExamID`),
  UNIQUE KEY `ExamName` (`ExamName`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- Dumping data for table ccloudproject.examdetails: ~1 rows (approximately)
INSERT INTO `examdetails` (`ExamID`, `ExamName`, `Q1`, `Q2`, `Q3`, `Q4`, `Q5`) VALUES
	(18, '1111', '123123', '12312', '312312312', '3123123', '1232312');

-- Dumping structure for table ccloudproject.facutlytable
CREATE TABLE IF NOT EXISTS `facutlytable` (
  `FID` int NOT NULL AUTO_INCREMENT,
  `FName` varchar(50) NOT NULL,
  `FaName` varchar(30) NOT NULL,
  `Addrs` text NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `JDate` date NOT NULL,
  `City` varchar(10) NOT NULL,
  `Pass` varchar(10) NOT NULL,
  `PhNo` bigint NOT NULL,
  PRIMARY KEY (`FID`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=latin1;

-- Dumping data for table ccloudproject.facutlytable: ~1 rows (approximately)
INSERT INTO `facutlytable` (`FID`, `FName`, `FaName`, `Addrs`, `Gender`, `JDate`, `City`, `Pass`, `PhNo`) VALUES
	(109, 'vit', 'VIT', 'VIT', 'Male', '1111-11-11', 'PUNE', '1234', 8888888888);

-- Dumping structure for table ccloudproject.guest
CREATE TABLE IF NOT EXISTS `guest` (
  `GuEid` varchar(35) NOT NULL,
  `Gname` varchar(35) NOT NULL,
  PRIMARY KEY (`Gname`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table ccloudproject.guest: ~0 rows (approximately)

-- Dumping structure for table ccloudproject.query
CREATE TABLE IF NOT EXISTS `query` (
  `Query` text NOT NULL,
  `Ans` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT 'Soon Reply Will be Given',
  `Eid` varchar(35) NOT NULL,
  `Qid` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`Qid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;

-- Dumping data for table ccloudproject.query: ~3 rows (approximately)
INSERT INTO `query` (`Query`, `Ans`, `Eid`, `Qid`) VALUES
	('wadwadwad', 'default_value', 'bodaz@vit.edu', 25),
	('wdwdw', 'default_value', 'bodaz@vit.edu', 26),
	('							wdwdwd ', 'wdadwadwadwad				', 'bodaz@vit.edu', 27);

-- Dumping structure for table ccloudproject.result
CREATE TABLE IF NOT EXISTS `result` (
  `RsID` bigint NOT NULL AUTO_INCREMENT,
  `Eno` varchar(20) NOT NULL,
  `Ex_ID` int NOT NULL,
  `Marks` varchar(20) NOT NULL,
  PRIMARY KEY (`RsID`)
) ENGINE=InnoDB AUTO_INCREMENT=2390 DEFAULT CHARSET=latin1;

-- Dumping data for table ccloudproject.result: ~1 rows (approximately)
INSERT INTO `result` (`RsID`, `Eno`, `Ex_ID`, `Marks`) VALUES
	(2389, '146891666', 18, 'Pass');

-- Dumping structure for table ccloudproject.studenttable
CREATE TABLE IF NOT EXISTS `studenttable` (
  `Eno` bigint NOT NULL AUTO_INCREMENT,
  `FName` varchar(30) NOT NULL,
  `LName` varchar(30) NOT NULL,
  `FaName` varchar(30) NOT NULL,
  `Addrs` text NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `PhNo` bigint NOT NULL,
  `Pass` varchar(20) NOT NULL,
  `Eid` varchar(50) NOT NULL,
  PRIMARY KEY (`Eno`)
) ENGINE=InnoDB AUTO_INCREMENT=146891669 DEFAULT CHARSET=latin1;

-- Dumping data for table ccloudproject.studenttable: ~6 rows (approximately)
INSERT INTO `studenttable` (`Eno`, `FName`, `LName`, `FaName`, `Addrs`, `Gender`, `Course`, `DOB`, `PhNo`, `Pass`, `Eid`) VALUES
	(146891666, 'wdwdw', 'wdwd', 'op', 'omnhbhbhbhibhi', 'Male', 'jhy', '1111-11-11', 8888888888, 'wdwdwdwdwd', 'dnwdnw@vit.ecii'),
	(146891667, 'wdwdw', 'wdwd', 'op', 'omnhbhbhbhibhi', 'Male', 'jhy', '1111-11-11', 8888888888, 'wdwdwdwdwd', 'dnwdnw@vit.ecii'),
	(146891668, 'bodawdw', 'bodawdw', 'bodawdw', 'bodadwd', 'Male', 'bodawd', '1111-11-11', 1111111111, 'wwwwww', 'bodaz@vit.edu');

-- Dumping structure for table ccloudproject.video
CREATE TABLE IF NOT EXISTS `video` (
  `V_id` int NOT NULL AUTO_INCREMENT,
  `V_Title` varchar(50) NOT NULL,
  `V_Url` longtext NOT NULL,
  `V_Remarks` longtext NOT NULL,
  PRIMARY KEY (`V_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 COMMENT='This table is used to store videos info.';

-- Dumping data for table ccloudproject.video: ~3 rows (approximately)
INSERT INTO `video` (`V_id`, `V_Title`, `V_Url`, `V_Remarks`) VALUES
	(5, 'JQuery', '<iframe width="560" height="315" src="https://www.youtube.com/embed/BWXggB-T1jQ" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>', 'JQuery Tutorial:\r\nQuery is a cross-platform JavaScript library designed to simplify the client-side scripting of HTML. It is free, open-source software using the permissive MIT License.'),
	(6, 'JSON - Full Crash Course', '<iframe width="560" height="315" src="https://www.youtube.com/embed/GpOO5iKzOmY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>', 'You will learn:- what JSON is, why JSON is important, what JSON is used for, the syntax of JSON, and see multiple examples of JSON. '),
	(9, 'Flying Beast', '<iframe width="560" height="315" src="https://www.youtube.com/embed/2c5N7i2tIzs?si=OzViti51_WRzem1S" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>', 'Flying BeastFlying BeastFlying BeastFlying BeastFlying BeastFlying BeastFlying BeastFlying BeastFlying BeastFlying BeastFlying BeastFlying BeastFlying BeastFlying BeastFlying BeastFlying BeastFlying BeastFlying BeastFlying BeastFlying BeastFlying BeastFlying Beast');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
