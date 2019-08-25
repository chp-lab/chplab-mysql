-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: chplab
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.16.04.1

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
-- Table structure for table `DashaAdmin`
--

DROP TABLE IF EXISTS `DashaAdmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DashaAdmin` (
  `adminID` varchar(16) DEFAULT NULL,
  `adminPwd` varchar(255) DEFAULT NULL,
  `level` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DashaAdmin`
--

LOCK TABLES `DashaAdmin` WRITE;
/*!40000 ALTER TABLE `DashaAdmin` DISABLE KEYS */;
INSERT INTO `DashaAdmin` VALUES ('chatpeth','$2a$10$/5l8e2wsDZnr.mZOo4cgp.x1o97Yg96zeq/L.aU32QQa7ux2kOh2e','WRE');
/*!40000 ALTER TABLE `DashaAdmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Machines`
--

DROP TABLE IF EXISTS `Machines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Machines` (
  `machineID` varchar(32) NOT NULL,
  `machineName` varchar(32) DEFAULT NULL,
  `department` varchar(64) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`machineID`),
  KEY `username` (`username`),
  CONSTRAINT `Machines_ibfk_1` FOREIGN KEY (`username`) REFERENCES `UserInformations` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Machines`
--

LOCK TABLES `Machines` WRITE;
/*!40000 ALTER TABLE `Machines` DISABLE KEYS */;
INSERT INTO `Machines` VALUES ('mm19070001','CNC1','Production','admin'),('mm19070002','CNC2','Production','admin'),('mm19070003','Pump','QC','admin'),('mm19070004','motor','R&D','super'),('mm19080001','Power Meter1','office','gena'),('mm19080002','Power meter2','Meeting room','gena');
/*!40000 ALTER TABLE `Machines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserInformations`
--

DROP TABLE IF EXISTS `UserInformations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserInformations` (
  `username` varchar(32) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `industryType` varchar(64) NOT NULL,
  `factoryName` varchar(64) NOT NULL,
  `adress` varchar(255) DEFAULT NULL,
  `contactInfo` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserInformations`
--

LOCK TABLES `UserInformations` WRITE;
/*!40000 ALTER TABLE `UserInformations` DISABLE KEYS */;
INSERT INTO `UserInformations` VALUES ('admin','$2a$04$vk9d8Zy67RibQrGNW1LAuOAhCBp0TgSKvJ9/c8Kti6jcAbtiduKS2','electrical monitoring','PT-Atop','Jakarta','chatpeth@atopiot.com'),('chatpeth','$2a$10$/5l8e2wsDZnr.mZOo4cgp.x1o97Yg96zeq/L.aU32QQa7ux2kOh2e','PasS','chp-lab','Hat-Yai','ch.ee.psu@outlook.com'),('gena','$2a$10$6itUHn.C/nuDA4T27mvlLuLb29I5G2pLfK96jLqRjloZXPco/0/7a','Automations','PT-Atop','Jakarta','mycontact'),('super','$2a$04$32Q70fVpkbIh01bHXRGTRuazrGGF32ktvQWo49cLtu4pRs97yMboi','electrical monitoring','PT-Atop','Jakarta','chatpeth@atopiot.com');
/*!40000 ALTER TABLE `UserInformations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-25  5:41:09
