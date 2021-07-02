DROP PROCEDURE IF EXISTS SP_ATUALIZAR_ENDERECO;
DELIMITER $$
CREATE PROCEDURE SP_ATUALIZAR_ENDERECO(IN CODIGO_ENDERECO INT, LOGRADOURO VARCHAR(100),	NUMERO INT, COMPLEMENTO VARCHAR(20),
									BAIRRO VARCHAR(45), CIDADE VARCHAR(45), CEP VARCHAR(20), ID_FORNECEDOR INT, ID_CLIENTE INT)
BEGIN
	UPDATE ENDERECO
	SET LOGRADOURO = LOGRADOURO, NUMERO = NUMERO, COMPLEMENTO = COMPLEMENTO, 
		BAIRRO = BAIRRO, CIDADE = CIDADE, CEP = CEP, ID_FORNECEDOR = ID_FORNECEDOR, ID_CLIENTE =ID_CLIENTE
	WHERE IDENDERECO = CODIGO_ENDERECO;
END $$
DELIMITER ;
