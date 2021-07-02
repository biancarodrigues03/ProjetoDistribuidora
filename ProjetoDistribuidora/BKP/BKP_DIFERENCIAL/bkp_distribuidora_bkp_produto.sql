-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: bkp_distribuidora
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
-- Table structure for table `bkp_produto`
--

DROP TABLE IF EXISTS `bkp_produto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bkp_produto` (
  `IDPRODUTO` int NOT NULL AUTO_INCREMENT,
  `NOME_PRODUTO` varchar(50) NOT NULL,
  `VALOR_CUSTO` decimal(10,2) NOT NULL,
  `VALOR_VENDA` decimal(10,2) NOT NULL,
  `QUANTIDADE` int NOT NULL,
  `ID_CATEGORIA` int DEFAULT NULL,
  `ID_FORNECEDOR` int DEFAULT NULL,
  PRIMARY KEY (`IDPRODUTO`),
  UNIQUE KEY `NOME_PRODUTO` (`NOME_PRODUTO`),
  KEY `FK_CATEGORIA_PRODUTO` (`ID_CATEGORIA`),
  KEY `FK_FORNECEDOR_PRODUTO` (`ID_FORNECEDOR`),
  CONSTRAINT `FK_CATEGORIA_PRODUTO` FOREIGN KEY (`ID_CATEGORIA`) REFERENCES `bkp_categoria` (`IDCATEGORIA`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_FORNECEDOR_PRODUTO` FOREIGN KEY (`ID_FORNECEDOR`) REFERENCES `bkp_fornecedor` (`IDFORNECEDOR`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-21 23:12:25