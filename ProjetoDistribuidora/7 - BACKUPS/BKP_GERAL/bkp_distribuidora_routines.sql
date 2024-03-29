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
-- Dumping events for database 'bkp_distribuidora'
--

--
-- Dumping routines for database 'bkp_distribuidora'
--
/*!50003 DROP FUNCTION IF EXISTS `FNC_ENDERECO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `FNC_ENDERECO`(ID_ENDERECO INT) RETURNS varchar(150) CHARSET utf8mb4
    READS SQL DATA
BEGIN
	DECLARE END_LOGRADOURO VARCHAR(30);
	DECLARE END_NUMERO INT;
	DECLARE END_COMPLEMENTO VARCHAR (20);
	DECLARE END_BAIRRO VARCHAR (45);
	DECLARE END_CIDADE VARCHAR (45);
	DECLARE END_CEP VARCHAR (20);
	DECLARE END_ID_FORNECEDOR INT;
	DECLARE END_ID_CLIENTE INT;

	IF (SELECT ID_FORNECEDOR FROM ENDERECO WHERE IDENDERECO = ID_ENDERECO) > 0
	THEN
		SELECT LOGRADOURO, NUMERO, COMPLEMENTO, BAIRRO, CIDADE, CEP, ID_FORNECEDOR
		INTO END_LOGRADOURO, END_NUMERO, END_COMPLEMENTO, END_BAIRRO, END_CIDADE, END_CEP, END_ID_FORNECEDOR
		FROM ENDERECO
		WHERE IDENDERECO = ID_ENDERECO;
		RETURN CONCAT(END_LOGRADOURO, 'ENDEREÇO DO FORNECEDOR', ' ' , END_NUMERO, ' ', END_COMPLEMENTO, ' ', END_BAIRRO,
					  ' ', END_CIDADE, ' ', END_CEP, ' ', END_ID_FORNECEDOR);

	ELSE
		SELECT LOGRADOURO, NUMERO, COMPLEMENTO, BAIRRO, CIDADE, CEP, ID_CLIENTE
		INTO END_LOGRADOURO, END_NUMERO, END_COMPLEMENTO, END_BAIRRO, END_CIDADE, END_CEP, END_ID_CLIENTE
		FROM ENDERECO
		WHERE IDENDERECO = ID_ENDERECO;
		RETURN CONCAT(END_LOGRADOURO, 'ENDEREÇO DO Cliente', ' ' , END_NUMERO, ' ', END_COMPLEMENTO, ' ', END_BAIRRO,
					  ' ', END_CIDADE, ' ', END_CEP, ' ', END_ID_CLIENTE);
	END IF;
END ;;
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

-- Dump completed on 2021-06-21 23:09:44
