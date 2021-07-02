DROP PROCEDURE IF EXISTS SP_ATUALIZAR_EMAIL_CLIENTE;
DELIMITER $$
CREATE PROCEDURE SP_ATUALIZAR_EMAIL_CLIENTE(IN CODIGO_CLIENTE INT, NOME_CLIENTE VARCHAR(50), EMAIL_CLIENTE VARCHAR (100))
BEGIN
	UPDATE CLIENTE
	SET NOME_CLIENTE = NOME_CLIENTE, EMAIL_CLIENTE = EMAIL_CLIENTE
	WHERE IDCLIENTE = CODIGO_CLIENTE;
END $$
DELIMITER ;