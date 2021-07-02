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
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `IDENDERECO` int NOT NULL AUTO_INCREMENT,
  `LOGRADOURO` varchar(100) NOT NULL,
  `NUMERO` int NOT NULL,
  `COMPLEMENTO` varchar(20) DEFAULT NULL,
  `BAIRRO` varchar(45) NOT NULL,
  `CIDADE` varchar(45) NOT NULL,
  `CEP` varchar(20) DEFAULT NULL,
  `ID_FORNECEDOR` int DEFAULT NULL,
  `ID_CLIENTE` int DEFAULT NULL,
  PRIMARY KEY (`IDENDERECO`),
  KEY `FK_FORNECEDOR_ENDERECO` (`ID_FORNECEDOR`),
  KEY `FK_FORNECEDOR_CLIENTE` (`ID_CLIENTE`),
  CONSTRAINT `FK_FORNECEDOR_CLIENTE` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `cliente` (`IDCLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FORNECEDOR_ENDERECO` FOREIGN KEY (`ID_FORNECEDOR`) REFERENCES `fornecedor` (`IDFORNECEDOR`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,'QR 410 CONJUNTO 09',15,'LOJA','SAMAMBAIA NORTE','BRASÍLIA','72320004',1,NULL),(2,'QR 410 CONJUNTO 09',54,'LOJA','SAMAMBAIA NORTE','BRASÍLIA','72320004',2,NULL),(3,'QS 12',20,'LOJA','TAGUATINGA','BRASÍLIA','7512698',3,NULL),(4,'QNP 12',14,'LOJA','TAGUATINGA','BRASÍLIA','7598698',4,NULL),(5,'QS 85',35,'LOJA','AGUAS CLARAS','BRASÍLIA','7485968',5,NULL),(6,'QI 58',23,'LOJA','GUARA','BRASÍLIA','95852144',6,NULL),(7,'QNP 27 CONJUNTO 09',42,'LOJA','CEILANDIA NORTE','BRASÍLIA','72386504',7,NULL),(8,'QR 410 CONJUNTO 15',18,'LOJA','SAMAMBAIA NORTE','BRASÍLIA','72320004',8,NULL),(9,'QS 52',6,'LOJA','TAGUATINGA','BRASÍLIA','7526987',9,NULL),(10,'QNL 24',9,'LOJA','CHAPARRAL','BRASÍLIA','7270958',10,NULL),(11,'QUADRA 185',16,'LOJA','RECANTO DAS EMAS','BRASÍLIA','72958741',11,NULL),(12,'QUADRA 56',6,'LOTE','CENTRO','SANTO ANTÔNIO DO DESCOBRETO','72900442',NULL,1),(13,'QUADRA 185',9,'LOTE','CENTRO','SANTO ANTÔNIO DO DESCOBRETO','72900958',NULL,2),(14,'QUADRA 119',19,'LOTE','CENTRO','SANTO ANTÔNIO DO DESCOBRETO','72900956',NULL,3),(15,'QS 12 CONJUNTO 20',2,'CASA','TAGUATINGA','BRASÍLIA','7512698',NULL,4),(16,'QR 410 CONJUNTO 09',23,'CASA','SAMAMBAIA NORTE','BRASÍLIA','72320004',NULL,5),(17,'QUADRA 185',25,'LOTE','CENTRO','SANTO ANTÔNIO DO DESCOBRETO','72900958',NULL,6),(18,'QS 12',20,'LOTE','TAGUATINGA','BRASÍLIA','7512698',NULL,7),(19,'QR 414 CONJUNTO 09',59,'CASA','SAMAMBAIA NORTE','BRASÍLIA','72320007',NULL,8),(20,'QUADRA 156',14,'LOTE','CENTRO','SANTO ANTÔNIO DO DESCOBRETO','72985258',NULL,9),(21,'QS 12',20,'CASA','RIACHO FUNDO I','BRASÍLIA','7512698',NULL,10),(22,'QSA 124',48,'CASA','TAGUATINGA','BRASÍLIA','7416698',NULL,11),(23,'QR 502 CONJUNTO 15',23,'CASA','SAMAMBAIA SUL','BRASÍLIA','75849604',NULL,12),(24,'QUADRA 124',26,'LOTE','CENTRO','SANTO ANTÔNIO DO DESCOBRETO','72900958',NULL,13),(25,'QUADRA 16',18,'LOTE','CENTRO','SANTO ANTÔNIO DO DESCOBRETO','72852158',NULL,14),(26,'QUADRA 26',52,'LOTE','CENTRO','SAD','72900556',NULL,15);
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-21 23:09:45