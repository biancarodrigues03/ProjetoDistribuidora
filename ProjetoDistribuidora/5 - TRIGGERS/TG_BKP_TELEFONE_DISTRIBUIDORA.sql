DROP TRIGGER IF EXISTS TG_BKP_TELEFONE;
DELIMITER $$
CREATE TRIGGER TG_BKP_TELEFONE
AFTER INSERT ON TELEFONE
FOR EACH ROW
BEGIN
	INSERT INTO BKP_DISTRIBUIDORA.BKP_TELEFONE SET TIPO_TELEFONE = NEW.TIPO_TELEFONE, NUMERO_TELEFONE = NEW.NUMERO_TELEFONE, 
				ID_FORNECEDOR = NEW.ID_FORNECEDOR, ID_CLIENTE = NEW.ID_CLIENTE;
END $$
DELIMITER ;