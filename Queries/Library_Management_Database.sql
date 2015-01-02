CREATE DATABASE  IF NOT EXISTS `st_assignment` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `st_assignment`;
-- MySQL dump 10.13  Distrib 5.6.10, for Win64 (x86_64)
--
-- Host: localhost    Database: st_assignment
-- ------------------------------------------------------
-- Server version	5.6.10-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `BID` varchar(5) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `Category` varchar(50) NOT NULL,
  `ISBN` varchar(50) NOT NULL,
  `Shelf` int(12) NOT NULL,
  `Date` date DEFAULT NULL,
  `Availability` varchar(10) NOT NULL,
  PRIMARY KEY (`BID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` (`BID`, `title`, `author`, `Category`, `ISBN`, `Shelf`, `Date`, `Availability`) VALUES ('B0','Harry Potter and the Sorcerers Stone','J.K. Rowling','Childrens Books','0747538483',7,'2001-05-13','Available'),('B1','Harry Potter and the Chamber of Secrets','J.K. Rowling','Childrens Books','0747538484',7,'2002-05-13','Available'),('B10','Ireport 3.6','Shamsuddin Ahammad','Computers, Engineering, & Technology',' 9781421808579',10,'2012-04-23','Available'),('B11','The Red Badge of Courage','Stephen Crane','General Fiction','9781421807879',10,'2013-01-23','Available'),('B12','When The Sleeper Wakes','H. G. Wells',' General Fiction ',' 9781421807880',11,'2012-05-23','Available'),('B13','Mathematical Foundations of Speech and Language Processing','Mark Johnson','Science & Mathematics',' 9781421807881',10,'2012-05-24','Available'),('B2','Harry Potter and the Prisoner of Azkaban','J.K. Rowling','Childrens Books','0747546290',7,'2003-05-13','Available'),('B3','Harry Potter and the Goblet of Fire','J.K. Rowling','Childrens Books','0747550999',7,'2004-05-13','Available'),('B4','Harry Potter and the Order of Pheonix','J.K. Rowling','Childrens Books','0747551006',7,'2005-05-13','Available'),('B5','Harry Potter and the Half Blood Prince','J.K. Rowling','Childrens Books','0747581088',7,'2006-05-13','Available'),('B6','Harry Potter and the Deathly Hallows','J.K. Rowling','Childrens Books','9780747591054',7,'2007-05-13','Available'),('B7','Oliver Twist','Charles Dickens','Adventure & Fantasy Novels','8171870597',9,'1992-04-23','Available'),('B8','Adventures of Sherlock Holmes','Sir Arthur Conan Doyle','Action, Military, Spy, & Thriller Novels','9781421808079',10,'2012-04-23','Available'),('B9','The War of the Worlds','H. G. Wells','Action, Military, Spy, & Thriller Novels','9780812557541',10,'2012-04-22','Available');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrowed`
--

DROP TABLE IF EXISTS `borrowed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borrowed` (
  `BID` varchar(5) NOT NULL,
  `MID` varchar(5) NOT NULL,
  `borrowedDate` date NOT NULL,
  `dueDate` date DEFAULT NULL,
  PRIMARY KEY (`BID`,`MID`),
  UNIQUE KEY `BID_UNIQUE` (`BID`),
  KEY `fk2_idx` (`MID`),
  CONSTRAINT `fk1` FOREIGN KEY (`BID`) REFERENCES `book` (`BID`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk2` FOREIGN KEY (`MID`) REFERENCES `member` (`MID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrowed`
--

LOCK TABLES `borrowed` WRITE;
/*!40000 ALTER TABLE `borrowed` DISABLE KEYS */;
/*!40000 ALTER TABLE `borrowed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `generateid`
--

DROP TABLE IF EXISTS `generateid`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generateid` (
  `raw` char(3) NOT NULL,
  `LastID` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`raw`),
  UNIQUE KEY `raw_UNIQUE` (`raw`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generateid`
--

LOCK TABLES `generateid` WRITE;
/*!40000 ALTER TABLE `generateid` DISABLE KEYS */;
INSERT INTO `generateid` (`raw`, `LastID`) VALUES ('BID','14'),('EID','105'),('MID','8'),('PID','0'),('SID','0');
/*!40000 ALTER TABLE `generateid` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `MID` varchar(5) NOT NULL,
  `fName` varchar(15) NOT NULL,
  `lName` varchar(15) NOT NULL,
  `telephone` int(11) DEFAULT NULL,
  `address` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`MID`),
  UNIQUE KEY `MID_UNIQUE` (`MID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` (`MID`, `fName`, `lName`, `telephone`, `address`) VALUES ('M0','Elton','John',724567891,'Manchester, England'),('M1','Emma','Watson',759822456,'Paris, France'),('M2','Michael','Schumacher',114567891,'Hurth, West Germany'),('M3','Michael','Jackson',312267891,'Gary, Indiana, USA'),('M4','Ruwen','Benja',776567891,'Negombo, Sri Lanka'),('M5','Udara','Whitey',114567894,'Nittabuwa, Sri Lanka'),('M6','Dr. Sheldon','Cooper',312267851,'Galveston, Texas'),('M7','Lady','Gaga',724567891,'Garbage Ditch, Somalia');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `membership` (
  `SID` varchar(5) NOT NULL,
  `MID` varchar(5) NOT NULL,
  `date` date DEFAULT NULL,
  `amount` float DEFAULT NULL,
  PRIMARY KEY (`SID`,`MID`),
  UNIQUE KEY `SID_UNIQUE` (`SID`),
  UNIQUE KEY `MID_UNIQUE` (`MID`),
  KEY `MID_idx` (`MID`),
  CONSTRAINT `fk4` FOREIGN KEY (`MID`) REFERENCES `member` (`MID`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership`
--

LOCK TABLES `membership` WRITE;
/*!40000 ALTER TABLE `membership` DISABLE KEYS */;
/*!40000 ALTER TABLE `membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `PID` varchar(5) NOT NULL,
  `MID` varchar(5) NOT NULL,
  `date` date NOT NULL,
  `amount` float NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`PID`,`MID`),
  UNIQUE KEY `PID_UNIQUE` (`PID`),
  KEY `fk5_idx` (`MID`),
  CONSTRAINT `fk5` FOREIGN KEY (`MID`) REFERENCES `member` (`MID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `EID` varchar(5) NOT NULL,
  `name` varchar(20) NOT NULL,
  `userName` varchar(20) NOT NULL,
  `password` varchar(15) NOT NULL,
  `position` varchar(15) NOT NULL,
  `Status` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`EID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`EID`, `name`, `userName`, `password`, `position`, `Status`) VALUES ('E100','Peter Burke','Admin','Admin','Librarian',0),('E101','Neal Caffrey','gtusita','qwerty','Librarian',0),('E102','Elizabeth Burke','tracka','123456','Assistant',0),('E103','Mozzie','benta','123456','Assistant',0),('E104','Diana Berrigan','radiya','katuchuti','Assistant',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'st_assignment'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-13 21:50:54
