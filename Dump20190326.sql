-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: chatbot
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `forms_`
--

DROP TABLE IF EXISTS `forms_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forms_` (
  `idforms_` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `form_json` mediumtext,
  `is_live` int(40) DEFAULT NULL,
  PRIMARY KEY (`idforms_`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forms_`
--

LOCK TABLES `forms_` WRITE;
/*!40000 ALTER TABLE `forms_` DISABLE KEYS */;
INSERT INTO `forms_` VALUES (1,'shweta','\"{ \"ice\":{ \"says\":[\"Would you like to take survey?\"],\"reply\":[{ \"question\":\"Yes\",\"answer\":\"next0\"},{ \"question\":\"No\",\"answer\":\"next\"}]},\"next0\":{\"says\":[\"bjklnk\"],\"reply\":[{\"question\":\"vmkn.xmx\",\"answer\":\"next1\"},{\"question\":\"b m,n.m/xcdcff\",\"answer\":\"next1\"}]},\"next1\":{\"says\":[\"Thank you for your time!!\"],\"reply\":[{\"question\":\"End Survey\",\"answer\":\"bye\"},{\"question\":\"Fill one more survey\",\"answer\":\"next0\"}]}}\"',2),(2,'shweta','\"{ \"ice\":{ \"says\":[\"Would you like to take survey?\"],\"reply\":[{ \"question\":\"Yes\",\"answer\":\"next0\"},{ \"question\":\"No\",\"answer\":\"next\"}]},\"next0\":{\"says\":[\"gcjkdjc\"],\"reply\":[{\"question\":\"scnkdcklc;\",\"answer\":\"next1\"},{\"question\":\"ckjlsdscd\",\"answer\":\"next1\"}]},\"next1\":{\"says\":[\"ghgdgjd\"],\"reply\":[{\"question\":\"dsdknjdkd\",\"answer\":\"next2\"},{\"question\":\"dkdddd\",\"answer\":\"next2\"}]},\"next2\":{\"says\":[\"Thank you for your time!!\"],\"reply\":[{\"question\":\"End Survey\",\"answer\":\"bye\"},{\"question\":\"Fill one more survey\",\"answer\":\"next0\"}]}}\"',3),(3,'shweta','\"{ \"ice\":{ \"says\":[\"Would you like to take survey?\"],\"reply\":[{ \"question\":\"Yes\",\"answer\":\"next0\"},{ \"question\":\"No\",\"answer\":\"next\"}]},\"next0\":{\"says\":[\"fvfevf\"],\"reply\":[{\"question\":\"errffefr\",\"answer\":\"next1\"},{\"question\":\"rrfrfrfrfrfr\",\"answer\":\"next1\"}]},\"next1\":{\"says\":[\"Thank you for your time!!\"],\"reply\":[{\"question\":\"End Survey\",\"answer\":\"bye\"},{\"question\":\"Fill one more survey\",\"answer\":\"next0\"}]}}\"',4),(4,'shweta','\"{ \"ice\":{ \"says\":[\"Would you like to take survey?\"],\"reply\":[{ \"question\":\"Yes\",\"answer\":\"next0\"},{ \"question\":\"No\",\"answer\":\"next\"}]},\"next0\":{\"says\":[\"afswar\"],\"reply\":[{\"question\":\"wffeeffew\",\"answer\":\"next1\"},{\"question\":\"eewee\",\"answer\":\"next1\"},{\"question\":\"eeweew\",\"answer\":\"next1\"}]},\"next1\":{\"says\":[\"Thank you for your time!!\"],\"reply\":[{\"question\":\"End Survey\",\"answer\":\"bye\"},{\"question\":\"Fill one more survey\",\"answer\":\"next0\"}]}}\"',1),(9,'shweta','\"{ \"ice\":{ \"says\":[\"Would you like to take survey?\"],\"reply\":[{ \"question\":\"Yes\",\"answer\":\"next0\"},{ \"question\":\"No\",\"answer\":\"next\"}]},\"next0\":{\"says\":[\"ffjgk\"],\"reply\":[{\"question\":\"b nm\",\"answer\":\"next1\"}]},\"next1\":{\"says\":[\"Thank you for your time!!\"],\"reply\":[{\"question\":\"End Survey\",\"answer\":\"bye\"},{\"question\":\"Fill one more survey\",\"answer\":\"next0\"}]}}\"',5),(10,'shweta','\"{ \"ice\":{ \"says\":[\"Would you like to take survey?\"],\"reply\":[{ \"question\":\"Yes\",\"answer\":\"next0\"},{ \"question\":\"No\",\"answer\":\"next\"}]},\"next0\":{\"says\":[\"mnmn,..,\"],\"reply\":[{\"question\":\"b nm\",\"answer\":\"next1\"}]},\"next1\":{\"says\":[\"Thank you for your time!!\"],\"reply\":[{\"question\":\"End Survey\",\"answer\":\"bye\"},{\"question\":\"Fill one more survey\",\"answer\":\"next0\"}]}}\"',6),(11,'undefined','\"{ \"ice\":{ \"says\":[\"Would you like to take survey?\"],\"reply\":[{ \"question\":\"Yes\",\"answer\":\"next0\"},{ \"question\":\"No\",\"answer\":\"next\"}]},\"next0\":{\"says\":[\"mnmn,..,\"],\"reply\":[{\"question\":\"b nm\",\"answer\":\"next1\"}]},\"next1\":{\"says\":[\"Thank you for your time!!\"],\"reply\":[{\"question\":\"End Survey\",\"answer\":\"bye\"},{\"question\":\"Fill one more survey\",\"answer\":\"next0\"}]}}\"',1);
/*!40000 ALTER TABLE `forms_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `username` varchar(40) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('bhanu','123'),('shweta','123'),('suraj','123');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-26 22:40:45
