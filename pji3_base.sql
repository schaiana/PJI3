-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: pji3
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
-- Table structure for table `Dado`
--

DROP TABLE IF EXISTS `Dado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Dado` (
  `idDado` int(11) NOT NULL AUTO_INCREMENT,
  `idSensor` int(11) NOT NULL,
  `idGateway` varchar(17) DEFAULT NULL,
  `Dado` varchar(45) NOT NULL,
  `RSSI` int(11) NOT NULL,
  PRIMARY KEY (`idDado`),
  KEY `fk_Nodo_has_Gateway_Gateway1_idx` (`idGateway`),
  KEY `fk_Dado_Sensor1_idx` (`idSensor`),
  CONSTRAINT `fk_Gateway` FOREIGN KEY (`idGateway`) REFERENCES `Gateway` (`idGateway`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Sensor` FOREIGN KEY (`idSensor`) REFERENCES `Sensor` (`idSensor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Dado`
--

LOCK TABLES `Dado` WRITE;
/*!40000 ALTER TABLE `Dado` DISABLE KEYS */;
INSERT INTO `Dado` VALUES (205,6,'30:AE:A4:8B:D6:6C','0',-73),(206,7,'30:AE:A4:8B:D6:6C','0',-73),(207,4,'30:AE:A4:8B:D6:6C','29',-87),(208,5,'30:AE:A4:8B:D6:6C','60',-87),(209,6,'30:AE:A4:8B:D6:6C','0',-74),(210,7,'30:AE:A4:8B:D6:6C','0',-74),(211,6,'30:AE:A4:8B:D6:6C','0',-85),(212,7,'30:AE:A4:8B:D6:6C','0',-85),(213,6,'30:AE:A4:8B:D6:6C','0',-91),(214,7,'30:AE:A4:8B:D6:6C','0',-91),(215,6,'30:AE:A4:8B:D6:6C','0',-71),(216,7,'30:AE:A4:8B:D6:6C','0',-71),(217,6,'30:AE:A4:8B:D6:6C','0',-75),(218,7,'30:AE:A4:8B:D6:6C','0',-75),(219,4,'30:AE:A4:8B:D6:6C','29',-79),(220,5,'30:AE:A4:8B:D6:6C','59',-79),(221,6,'30:AE:A4:8B:D6:6C','0',-87),(222,7,'30:AE:A4:8B:D6:6C','0',-87),(223,6,'30:AE:A4:8B:D6:6C','29',-81),(224,7,'30:AE:A4:8B:D6:6C','59',-81),(225,6,'30:AE:A4:8B:D6:6C','0',-77),(226,7,'30:AE:A4:8B:D6:6C','0',-77),(227,6,'30:AE:A4:8B:D6:6C','0',-76),(228,7,'30:AE:A4:8B:D6:6C','0',-76),(229,4,'30:AE:A4:8B:D6:6C','29',-90),(230,5,'30:AE:A4:8B:D6:6C','59',-90),(231,4,'30:AE:A4:8B:D6:6C','0',-85),(232,5,'30:AE:A4:8B:D6:6C','59',-85),(233,6,'30:AE:A4:8B:D6:6C','0',-80),(234,7,'30:AE:A4:8B:D6:6C','0',-80),(235,6,'30:AE:A4:8B:D6:6C','0',-78),(236,7,'30:AE:A4:8B:D6:6C','0',-78),(237,6,'30:AE:A4:8B:D6:6C','0',-84),(238,7,'30:AE:A4:8B:D6:6C','0',-84),(239,6,'30:AE:A4:8B:D6:6C','0',-75),(240,7,'30:AE:A4:8B:D6:6C','0',-75),(241,6,'30:AE:A4:8B:D6:6C','0',-79),(242,7,'30:AE:A4:8B:D6:6C','0',-79),(243,6,'30:AE:A4:8B:D6:6C','29',-79),(244,7,'30:AE:A4:8B:D6:6C','0',-79),(245,6,'30:AE:A4:8B:D6:6C','29',-75),(246,7,'30:AE:A4:8B:D6:6C','0',-75),(247,4,'30:AE:A4:8B:D6:6C','0',-91),(248,5,'30:AE:A4:8B:D6:6C','60',-91),(249,6,'30:AE:A4:8B:D6:6C','0',-75),(250,7,'30:AE:A4:8B:D6:6C','0',-75);
/*!40000 ALTER TABLE `Dado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Gateway`
--

DROP TABLE IF EXISTS `Gateway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Gateway` (
  `idGateway` varchar(18) NOT NULL,
  PRIMARY KEY (`idGateway`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Gateway`
--

LOCK TABLES `Gateway` WRITE;
/*!40000 ALTER TABLE `Gateway` DISABLE KEYS */;
INSERT INTO `Gateway` VALUES ('30:AE:A4:8B:D6:6C');
/*!40000 ALTER TABLE `Gateway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Nodo`
--

DROP TABLE IF EXISTS `Nodo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Nodo` (
  `idNodo` varchar(12) NOT NULL,
  PRIMARY KEY (`idNodo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Nodo`
--

LOCK TABLES `Nodo` WRITE;
/*!40000 ALTER TABLE `Nodo` DISABLE KEYS */;
INSERT INTO `Nodo` VALUES ('884aea005e07'),('c8fd1907f229');
/*!40000 ALTER TABLE `Nodo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sensor`
--

DROP TABLE IF EXISTS `Sensor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sensor` (
  `idSensor` int(11) NOT NULL AUTO_INCREMENT,
  `Tipo` varchar(45) NOT NULL,
  `idNodo` varchar(12) NOT NULL,
  PRIMARY KEY (`idSensor`,`idNodo`),
  KEY `fk_Sensor_Nodo_idx` (`idNodo`),
  CONSTRAINT `fk_Sensor_Nodo` FOREIGN KEY (`idNodo`) REFERENCES `Nodo` (`idNodo`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sensor`
--

LOCK TABLES `Sensor` WRITE;
/*!40000 ALTER TABLE `Sensor` DISABLE KEYS */;
INSERT INTO `Sensor` VALUES (4,'Temperatura','884aea005e07'),(5,'Umidade','884aea005e07'),(6,'Temperatura','c8fd1907f229'),(7,'Umidade','c8fd1907f229');
/*!40000 ALTER TABLE `Sensor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-12  9:58:49
