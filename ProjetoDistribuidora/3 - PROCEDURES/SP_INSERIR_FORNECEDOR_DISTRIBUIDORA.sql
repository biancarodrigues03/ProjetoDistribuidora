/*****CRIANDO PROCEDURES DE INSERCAO*****/
DELIMITER $$
CREATE PROCEDURE SP_INSERIR_FORNECEDOR(IN 
	RAZAO_SOCIAL VARCHAR(100),
	NOME_DA_FANTASIA VARCHAR(50),
	CNPJ VARCHAR(20),
	EMAIL_FORNECEDOR VARCHAR(100))
BEGIN
	IF EXISTS (SELECT RAZAO_SOCIAL FROM FORNECEDOR WHERE NOME_FANTASIA = NOME_DA_FANTASIA)
	THEN 
		SELECT 'FORNECEDOR JÁ POSSUI CADASTRO NO SISTEMA';
	ELSE
		INSERT INTO FORNECEDOR VALUES (NULL, RAZAO_SOCIAL, NOME_DA_FANTASIA, CNPJ, EMAIL_FORNECEDOR);
		SELECT "FORNECEDOR CADASTRADO COM SUCESSO";
	END IF;
END $$
DELIMITER ;