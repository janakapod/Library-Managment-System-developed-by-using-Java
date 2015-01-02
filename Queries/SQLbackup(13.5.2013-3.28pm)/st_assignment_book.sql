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
INSERT INTO `book` (`BID`, `title`, `author`, `Category`, `ISBN`, `Shelf`, `Date`, `Availability`) VALUES ('B0','Harry Potter and the Sorcerers Stone','J.K. Rowling','Childrens Books','0747538483',7,'2001-05-13','Available'),('B1','Harry Potter and the Chamber of Secrets','J.K. Rowling','Childrens Books','0747538484',7,'2002-05-13','Available'),('B10','Ireport 3.6','Shamsuddin Ahammad','Computers, Engineering, & Technology',' 9781421808579',10,'2012-04-23','Available'),('B11','The Red Badge of Courage','Stephen Crane','General Fiction','9781421807879',10,'2013-01-23','Available'),('B12','When The Sleeper Wakes','H. G. Wells',' General Fiction ',' 9781421807880',11,'2012-05-23','Available'),('B13','Mathematical Foundations of Speech and Language Processing','Mark Johnson','Science & Mathematics',' 9781421807881',10,'2012-05-24','Available'),('B2','Harry Potter and the Prisoner of Azkaban','J.K. Rowling','Childrens Books','0747546290',7,'2003-05-13','Available'),('B3','Harry Potter and the Goblet of Fire','J.K. Rowling','Childrens Books','0747550999',7,'2004-05-13','Borrowed'),('B4','Harry Potter and the Order of Pheonix','J.K. Rowling','Childrens Books','0747551006',7,'2005-05-13','Available'),('B5','Harry Potter and the Half Blood Prince','J.K. Rowling','Childrens Books','0747581088',7,'2006-05-13','Available'),('B6','Harry Potter and the Deathly Hallows','J.K. Rowling','Childrens Books','9780747591054',7,'2007-05-13','Available'),('B7','Oliver Twist','Charles Dickens','Adventure & Fantasy Novels','8171870597',9,'1992-04-23','Available'),('B8','Adventures of Sherlock Holmes','Sir Arthur Conan Doyle','Action, Military, Spy, & Thriller Novels','9781421808079',10,'2012-04-23','Available'),('B9','The War of the Worlds','H. G. Wells','Action, Military, Spy, & Thriller Novels','9780812557541',10,'2012-04-22','Available');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-05-13 15:28:33
