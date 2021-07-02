-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: distribuidora
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'BIANCA ARAUJO','159.852.957-95','F','1999-10-12','BIANCAARA@GMAIL.COM'),(2,'THAIS RODRIGUES','129.852.957-95','F','1998-06-17','THAIS@GMAIL.COM'),(3,'RAFAEL ARAUJO','125.852.158-95','M','1997-06-04','RAFAEL@GMAIL.COM'),(4,'DEUILTON SANTANA','159.822.957-95','M','1996-10-26','DEUILTON@GMAIL.COM'),(5,'HAILTON SOUSA','359.852.957-95','M','1995-12-18','HAILTON@GAIL.COM'),(6,'LUZENI ARAUJO','159.952.957-95','F','1972-01-12','LUZENI@GMAIL.COM'),(7,'CLARA MAFRA','159.852.958-95','F','2013-06-04','CLARA@GMAIL.COM'),(8,'FELIPE MAFRA','159.852.145-95','M','1992-10-12','FELIPE@GMAIL.COM'),(9,'DANIEL BEZERRA','159.845.657-95','M','1996-07-01','DANIEL@GMAIL.COM'),(10,'GEOVANNA HELOISA','135.256.953-92','F','2018-06-26','GEOVANNA@GMAIL.COM'),(11,'GUSTAVO SANTOS','958.456.123-14','M','1989-10-15','GUSTAVO@MAIL.COM'),(12,'NATHALIA GRAZIELLY','012.345.678-25','F','1994-10-28','NATHALIA@GMAIL.COM'),(13,'VICTORIA ALBUQUERQUE','666.097.471-72','F','1997-05-09','VICALBUQUERQUE@GMAIL.COM'),(14,'GEOVANNA ABÍLIO','051.775.956-95','F','1997-04-17','GEOMAX@GMAL.COM'),(15,'MIGUEL SANTOS','259.852.957-93','M','1994-11-01','MIGUEL@GMAIL.COM'),(16,'LUCAS GOMIDES','162.563.295-95','M','1997-05-26','LUCAS@GMAIL.COM');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `TG_BKP_CLIENTE` AFTER INSERT ON `cliente` FOR EACH ROW BEGIN
	INSERT INTO BKP_DISTRIBUIDORA.BKP_CLIENTE SET NOME_CLIENTE = NEW.NOME_CLIENTE, CPF = NEW.CPF, SEXO = NEW.SEXO,
	DATA_NASCIMENTO = NEW.DATA_NASCIMENTO, EMAIL_CLIENTE = NEW.EMAIL_CLIENTE;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-21 23:11:41
