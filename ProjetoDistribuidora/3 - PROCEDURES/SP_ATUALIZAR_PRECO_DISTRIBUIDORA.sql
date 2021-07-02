DROP PROCEDURE IF EXISTS SP_ATUALIZAR_PRECO;
DELIMITER $$
CREATE PROCEDURE SP_ATUALIZAR_PRECO(IN CODIGO_PRODUTO INT, VALOR_CUSTO DECIMAL(10,2), VALOR_VENDA DECIMAL(10,2), QTD INT)
BEGIN
	UPDATE PRODUTO
	SET VALOR_CUSTO = VALOR_CUSTO, VALOR_VENDA = VALOR_VENDA, QUANTIDADE = QUANTIDADE + QTD
	WHERE IDPRODUTO = CODIGO_PRODUTO;
END $$
DELIMITER ;