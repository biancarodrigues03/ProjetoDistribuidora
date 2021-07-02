DROP TRIGGER IF EXISTS TG_BKP_PRODUTO;
DELIMITER $$
CREATE TRIGGER TG_BKP_PRODUTO
AFTER INSERT ON PRODUTO
FOR EACH ROW
BEGIN
	INSERT INTO BKP_DISTRIBUIDORA.BKP_PRODUTO SET NOME_PRODUTO = NEW.NOME_PRODUTO, VALOR_CUSTO = NEW.VALOR_CUSTO, VALOR_VENDA = NEW.VALOR_VENDA,
	QUANTIDADE = NEW.QUANTIDADE, ID_CATEGORIA = NEW.ID_CATEGORIA, ID_FORNECEDOR = NEW.ID_FORNECEDOR;
END $$
DELIMITER ;