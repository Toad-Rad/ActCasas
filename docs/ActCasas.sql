-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: ActCasas
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ajolotes`
--

DROP TABLE IF EXISTS `ajolotes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ajolotes` (
  `ID_CASA` int(11) NOT NULL,
  `Ptotales` int(11) DEFAULT NULL,
  `Puntos_agregados` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_CASA`),
  KEY `Puntos_agregados` (`Puntos_agregados`),
  CONSTRAINT `ajolotes_ibfk_1` FOREIGN KEY (`Puntos_agregados`) REFERENCES `usuarios` (`ID_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ajolotes`
--

LOCK TABLES `ajolotes` WRITE;
/*!40000 ALTER TABLE `ajolotes` DISABLE KEYS */;
/*!40000 ALTER TABLE `ajolotes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `halcones`
--

DROP TABLE IF EXISTS `halcones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `halcones` (
  `ID_CASA` int(11) NOT NULL,
  `Ptotales` int(11) DEFAULT NULL,
  `Puntos_agregados` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_CASA`),
  KEY `Puntos_agregados` (`Puntos_agregados`),
  CONSTRAINT `halcones_ibfk_1` FOREIGN KEY (`Puntos_agregados`) REFERENCES `usuarios` (`ID_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `halcones`
--

LOCK TABLES `halcones` WRITE;
/*!40000 ALTER TABLE `halcones` DISABLE KEYS */;
/*!40000 ALTER TABLE `halcones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teporingos`
--

DROP TABLE IF EXISTS `teporingos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teporingos` (
  `ID_CASA` int(11) NOT NULL,
  `Ptotales` int(11) DEFAULT NULL,
  `Puntos_agregados` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_CASA`),
  KEY `Puntos_agregados` (`Puntos_agregados`),
  CONSTRAINT `teporingos_ibfk_1` FOREIGN KEY (`Puntos_agregados`) REFERENCES `usuarios` (`ID_usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teporingos`
--

LOCK TABLES `teporingos` WRITE;
/*!40000 ALTER TABLE `teporingos` DISABLE KEYS */;
/*!40000 ALTER TABLE `teporingos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `ID_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) DEFAULT NULL,
  `Pass` varchar(50) DEFAULT NULL,
  `Casa` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Alexei','1234567',0);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-10 22:47:17
