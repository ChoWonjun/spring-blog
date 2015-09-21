CREATE DATABASE  IF NOT EXISTS `springblog` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `springblog`;
-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: springblog
-- ------------------------------------------------------
-- Server version	5.5.45

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
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post` (
  `post_no` int(11) NOT NULL AUTO_INCREMENT,
  `category` varchar(45) NOT NULL,
  `title` varchar(45) NOT NULL,
  `sub_title` varchar(45) NOT NULL,
  `content` text NOT NULL,
  `recommend` int(11) NOT NULL DEFAULT '0',
  `open` tinyint(4) NOT NULL,
  `write_date` datetime NOT NULL,
  PRIMARY KEY (`post_no`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post`
--

LOCK TABLES `post` WRITE;
/*!40000 ALTER TABLE `post` DISABLE KEYS */;
INSERT INTO `post` VALUES (1,'Java','이제는 ','','돼라 제발 좀 ㅠㅠ',0,1,'2015-09-12 11:24:13'),(4,'Spring','asdfa','','<p>asdfsaf</p><p>asgsasdgs</p><p>ㅁㄶㄴㅇㅎㄴㅇㅎㄴㅁ</p><p>&nbsp;</p><p style=\"text-align: center; \" align=\"center\"><span style=\"font-size: 18pt; color: rgb(97, 185, 119); font-family: 나눔고딕코딩, NanumGothicCoding, sans-serif; background-color: rgb(255, 0, 0);\"><i><b><u><strike>테스트 텍스트 에디터</strike></u></b></i></span></p>',0,1,'2015-09-19 12:07:41'),(6,'IT','ㄴㅇㄻ','ㅁㄴㄹㅇㅁ','<p>ㄴㅇㄻ</p>',0,1,'2015-09-20 15:09:51'),(7,'IT','ㅈㅂㄱㅈ','ㅂㅈㄱㅂ','<p>ㄱㅈㄱㅂ</p>',0,1,'2015-09-20 15:11:44'),(9,'IT','wer','werq','<p>qwer</p>',0,1,'2015-09-20 19:19:26');
/*!40000 ALTER TABLE `post` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-21 15:45:14
