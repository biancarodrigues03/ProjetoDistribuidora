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
-- Dumping data for table `produto`
--

LOCK TABLES `produto` WRITE;
/*!40000 ALTER TABLE `produto` DISABLE KEYS */;
INSERT INTO `produto` VALUES (1,'AGUA MINERAL SEM GAS 500ML',0.69,2.50,20,1,2),(2,'AGUA MINERAL COM GAS 500ML',1.65,3.50,170,1,2),(3,'CERV. BRAHMA DUPLO MALTE 350ML C/12',30.10,36.50,16,2,4),(4,'CERV. BRAHMA CHOPP 269ML C/15',27.50,32.00,100,2,4),(5,'CERV. ANTARCTICA PILSEN 269ML C/15',28.30,32.00,100,2,4),(6,'CERV. BUDWEISER 269ML C/15',19.00,23.00,8,2,4),(7,'CERV. HEINEKEN 330ML C/6',26.51,33.00,21,2,2),(8,'CERV. ITAIPAVA 269ML',19.80,25.00,35,2,5),(9,'CERV. ITAIPAVA PREMIUM 269ML',24.50,29.00,2,2,5),(10,'CERV. PETRA PURO MALTE 350ML',27.50,32.50,6,2,5),(11,'CERV. SKOL BEATS 269ML',27.94,32.00,2,2,4),(12,'CERV. STELLA ARTOIS 330ML',23.94,32.00,10,2,4),(13,'CERV. BOHEMIA 269ML C/15',31.40,37.00,17,2,4),(14,'CERV. SKOL PURO MALTE 269ML',30.16,36.00,3,2,4),(15,'CERV. ESMERA DE GOIAS LATA 350ML',1.58,2.00,196,2,4),(16,'CERV. BRAHMA CHOPP 300ML RET',1.61,2.30,131,2,4),(17,'CERV. BUDWEISER GARRAFA 300ML',2.99,5.00,2,2,4),(18,'CERV. STELLA ARTOIS GARRAFA 300ML',3.99,6.00,6,2,4),(19,'CERV. HEINEKEN GARRAFA 300ML',4.41,6.50,5,2,2),(20,'CERV. AMSTEL LT 12x269ML',26.50,31.00,5,2,2),(21,'CIGARRO LUCKY STRIKE DOUBLÉ FRESH',7.34,8.50,5,13,11),(22,'CIGARRO DUNHILL CARLTON',9.17,10.00,10,13,11),(23,'CIGARRO ROTHMANS BOX RED',5.50,6.00,1,13,11),(24,'CIGARRO ROTHMANS BOX BLUE',5.50,6.00,0,13,11),(25,'CIGARRO ROTHMANS MAÇO BLUE',5.27,5.75,31,13,11),(26,'ISQUEIRO PEQUENO',2.09,3.00,13,13,11),(27,'TABACO TREVO NATURAL',2.52,5.00,9,13,11),(28,'REDBULL ENERGY DRINK',5.45,8.50,20,7,4),(29,'ENERGÉTICO FULL ENERGY',5.83,8.00,20,7,2),(30,'MONSTER ENERGY LT 473ML',5.53,7.00,9,7,2),(31,'REF. FANTA LARANJA 2L RET.',3.79,5.00,30,9,2),(32,'REF. COCA COLA 2L RET.',3.79,5.00,0,9,2),(33,'REF. FANTA UVA 2L RET.',3.79,5.00,6,9,2),(34,'REF. FANTA LARANJA. 310ML',1.99,3.00,18,9,2),(35,'REF. FANTA UVA. 310ML',1.99,3.00,3,9,2),(36,'REF. COCA COLA 310ML',1.99,3.00,28,9,2),(37,'REF. SCHWEPPES CITRUS 310ML',1.99,3.00,12,9,2),(38,'REF. SPRITE LATA 269ML',1.99,3.00,15,9,2),(39,'REF. COCA COLA LATA ZERO AÇÚCAR',1.99,3.00,3,9,2),(40,'REF. FANTA LARANJA 2L NORMAL',4.59,6.50,12,9,2),(41,'REF. SPRITE 2L RET.',3.79,5.50,12,9,2),(42,'REF. COCA COLA 2L NORMAL',6.00,7.50,5,9,2),(43,'REF. GUARANÁ KUAT 2L',2.99,4.50,2,9,2),(44,'REF. FANTA UVA 2L NORMAL',5.33,6.50,14,9,2),(45,'REF. GUARANÁ ANT. 2L',4.41,7.00,5,9,4);
/*!40000 ALTER TABLE `produto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-21 23:11:42
