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
-- Dumping events for database 'distribuidora'
--

--
-- Dumping routines for database 'distribuidora'
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
/*!50003 DROP PROCEDURE IF EXISTS `SP_ATUALIZAR_EMAIL_CLIENTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ATUALIZAR_EMAIL_CLIENTE`(IN CODIGO_CLIENTE INT, NOME_CLIENTE VARCHAR(50), EMAIL_CLIENTE VARCHAR (100))
BEGIN
	UPDATE CLIENTE
	SET NOME_CLIENTE = NOME_CLIENTE, EMAIL_CLIENTE = EMAIL_CLIENTE
	WHERE IDCLIENTE = CODIGO_CLIENTE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ATUALIZAR_ENDERECO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ATUALIZAR_ENDERECO`(IN CODIGO_ENDERECO INT, LOGRADOURO VARCHAR(100),	NUMERO INT, COMPLEMENTO VARCHAR(20),
									BAIRRO VARCHAR(45), CIDADE VARCHAR(45), CEP VARCHAR(20), ID_FORNECEDOR INT, ID_CLIENTE INT)
BEGIN
	UPDATE ENDERECO
	SET LOGRADOURO = LOGRADOURO, NUMERO = NUMERO, COMPLEMENTO = COMPLEMENTO, 
		BAIRRO = BAIRRO, CIDADE = CIDADE, CEP = CEP, ID_FORNECEDOR = ID_FORNECEDOR, ID_CLIENTE =ID_CLIENTE
	WHERE IDENDERECO = CODIGO_ENDERECO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ATUALIZAR_PRECO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ATUALIZAR_PRECO`(IN CODIGO_PRODUTO INT, VALOR_CUSTO DECIMAL(10,2), VALOR_VENDA DECIMAL(10,2), QTD INT)
BEGIN
	UPDATE PRODUTO
	SET VALOR_CUSTO = VALOR_CUSTO, VALOR_VENDA = VALOR_VENDA, QUANTIDADE = QUANTIDADE + QTD
	WHERE IDPRODUTO = CODIGO_PRODUTO;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_ATUALIZAR_TELEFONE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_ATUALIZAR_TELEFONE`(IN CODIGO_TELEFONE INT, TIPO_TELEFONE ENUM ('CEL', 'RES', 'COM'), NUMERO_TELEFONE VARCHAR(20),
										ID_FORNECEDOR INT, ID_CLIENTE INT)
BEGIN
	UPDATE TELEFONE
	SET TIPO_TELEFONE = TIPO_TELEFONE, NUMERO_TELEFONE = NUMERO_TELEFONE, ID_FORNECEDOR = ID_FORNECEDOR, ID_CLIENTE = ID_CLIENTE
	WHERE IDTELEFONE = CODIGO_TELEFONE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERIR_CATEGORIA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERIR_CATEGORIA`(IN 
	NOME_DA_CATEGORIA VARCHAR(50))
BEGIN
	IF EXISTS (SELECT NOME_CATEGORIA FROM CATEGORIA WHERE NOME_CATEGORIA = NOME_DA_CATEGORIA)
	THEN 
		SELECT 'CATEGORIA JÁ POSSUI CADASTRO NO SISTEMA';
	ELSE
		INSERT INTO CATEGORIA VALUES (NULL, NOME_DA_CATEGORIA);
		SELECT "CATEGORIA CADASTRADA COM SUCESSO";
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERIR_CLIENTE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERIR_CLIENTE`(IN 
	NOME_DO_CLIENTE VARCHAR(50),
	CPF VARCHAR(20),
	SEXO ENUM ('M', 'F'),
	DATA_NASCIMENTO DATE,
	EMAIL_CLIENTE VARCHAR(100))
BEGIN
	IF EXISTS (SELECT NOME_CLIENTE FROM CLIENTE WHERE NOME_CLIENTE = NOME_DO_CLIENTE)
	THEN 
		SELECT 'CLIENTE JÁ POSSUI CADASTRO NO SISTEMA';
	ELSE
		INSERT INTO CLIENTE VALUES (NULL, NOME_DO_CLIENTE, CPF, SEXO, DATA_NASCIMENTO, EMAIL_CLIENTE);
		SELECT "CLIENTE CADASTRADO COM SUCESSO";
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERIR_CONTASAPAGAR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERIR_CONTASAPAGAR`(IN 
	CODIGO_DE_BARRAS VARCHAR(50),
	CLASSIFICACAO VARCHAR(45),
	DESCRICAO VARCHAR(45),
	BENEFICIARIO VARCHAR(45),
	EMISSAO DATE,
	VENCIMENTO DATE,
	VALORTOTAL DECIMAL(10,2),
	ID_FORNECEDOR INT)
BEGIN
	IF EXISTS (SELECT CODIGO_BARRAS FROM CONTASAPAGAR WHERE CODIGO_BARRAS = CODIGO_DE_BARRAS)
	THEN 
		SELECT 'CONTA JÁ CADASTRADA NO SISTEMA';
	ELSE
		INSERT INTO CONTASAPAGAR VALUES (NULL, CODIGO_DE_BARRAS, CLASSIFICACAO, 
		DESCRICAO, BENEFICIARIO, EMISSAO, VENCIMENTO, VALORTOTAL, ID_FORNECEDOR);
		SELECT "CONTA CADASTRADA COM SUCESSO";
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERIR_ENDERECO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERIR_ENDERECO`(IN 
	LOGRADOURO VARCHAR(100),
	NUMERO INT,
	COMPLEMENTO VARCHAR(20),
	BAIRRO VARCHAR(45),
	CIDADE VARCHAR(45),
	CEP VARCHAR(20),
	ID_FORNECEDOR INT,
	ID_CLIENTE INT)
BEGIN
	INSERT INTO ENDERECO VALUES (NULL, LOGRADOURO, NUMERO, 
	COMPLEMENTO, BAIRRO, CIDADE, CEP, ID_FORNECEDOR, ID_CLIENTE);
	SELECT "ENDEREÇO CADASTRADO COM SUCESSO";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERIR_FORNECEDOR` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERIR_FORNECEDOR`(IN 
	RAZAO_SOCIAL VARCHAR(100),
	NOME_FANTASIA VARCHAR(50),
	CNPJ VARCHAR(20),
	EMAIL_FORNECEDOR VARCHAR(100))
BEGIN
	IF EXISTS (SELECT RAZAO_SOCIAL FROM FORNECEDOR WHERE NOME_FANTASIA = NOME_FANTASIA)
	THEN 
		SELECT 'FORNECEDOR JÁ POSSUI CADASTRO NO SISTEMA';
	ELSE
		INSERT INTO FORNECEDOR VALUES (NULL, RAZAO_SOCIAL, NOME_FANTASIA, CNPJ, EMAIL_FORNECEDOR);
		SELECT "FORNECEDOR CADASTRADO COM SUCESSO";
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERIR_PEDIDO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERIR_PEDIDO`(IN IDPEDIDO INT, ID_CLIENTE INT, DATA_EMISSAO DATETIME, DATA_ENTREGA DATE, ID_PRODUTO INT, 
QUANTIDADE INT, ID_TIPOPAGAMENTO INT, DATA_PAGAMENTO DATE)
BEGIN
    DECLARE VLR_VENDA DECIMAL(10,2);
	DECLARE VLR_TOTAL DECIMAL(10,2);
    
    SELECT VALOR_VENDA
    INTO VLR_VENDA
    FROM `distribuidora`.`PRODUTO`
    WHERE IDPRODUTO = ID_PRODUTO;

    SET VLR_TOTAL = QUANTIDADE * VLR_VENDA;
	
    INSERT INTO pedido (IDPEDIDO, ID_CLIENTE, DATA_EMISSAO, DATA_ENTREGA, ID_PRODUTO, QUANTIDADE, VALOR_TOTAL, ID_TIPOPAGAMENTO, DATA_PAGAMENTO)
    VALUES (IDPEDIDO, ID_CLIENTE, DATA_EMISSAO, DATA_ENTREGA, ID_PRODUTO, QUANTIDADE, VLR_TOTAL, ID_TIPOPAGAMENTO, DATA_PAGAMENTO);

	SELECT "PEDIDO REGIDTRADO COM SUCESSO";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERIR_PRODUTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERIR_PRODUTO`(IN 
	NOME_DO_PRODUTO VARCHAR(50),
	VALOR_CUSTO DECIMAL(10,2),
	VALOR_VENDA DECIMAL(10,2),
	QUANTIDADE INT,
	ID_CATEGORIA INT,
	ID_FORNECEDOR INT)
BEGIN
	IF EXISTS (SELECT NOME_PRODUTO FROM PRODUTO WHERE NOME_PRODUTO = NOME_DO_PRODUTO)
	THEN 
		SELECT 'PRODUTO JÁ POSSUI CADASTRO NO SISTEMA';
	ELSE
		INSERT INTO PRODUTO VALUES (NULL, NOME_DO_PRODUTO, VALOR_CUSTO, VALOR_VENDA, QUANTIDADE, ID_CATEGORIA, ID_FORNECEDOR);
		SELECT "PRODUTO CADASTRADO COM SUCESSO";
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERIR_TELEFONE` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERIR_TELEFONE`(IN 
	TIPO_TELEFONE ENUM ('CEL', 'RES', 'COM'),
	NUMERO_DO_TELEFONE VARCHAR(20),
	ID_FORNECEDOR INT,
	ID_CLIENTE INT)
BEGIN
	IF EXISTS (SELECT NUMERO_TELEFONE FROM TELEFONE WHERE NUMERO_TELEFONE = NUMERO_DO_TELEFONE)
    THEN
		SELECT "TELEFONE JÁ CADASTRADO NO SISTEMA";
	ELSE
		INSERT INTO TELEFONE VALUES (NULL, TIPO_TELEFONE, NUMERO_DO_TELEFONE, ID_FORNECEDOR, ID_CLIENTE);
		SELECT "TELEFONE CADASTRADO COM SUCESSO";
	END IF ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SP_INSERIR_TIPOPAGAMENTO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SP_INSERIR_TIPOPAGAMENTO`(IN 
	TIPO_DE_PAGAMENTO ENUM ('DINHEIRO' , 'DEBITO', 'CREDITO', 'PIX'))
BEGIN
	IF EXISTS (SELECT TIPO_PAGAMENTO FROM TIPOPAGAMENTO WHERE TIPO_PAGAMENTO = TIPO_DE_PAGAMENTO)
    THEN
		SELECT "TIPO DE PAGAMENTO JÁ CADASTRADO NO SISTEMA";
	ELSE
		INSERT INTO TIPOPAGAMENTO VALUES (NULL, TIPO_DE_PAGAMENTO);
		SELECT "TIPO DE PAGAMENTO CADASTRADO COM SUCESSO";
	END IF ;
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

-- Dump completed on 2021-06-21 23:11:42
