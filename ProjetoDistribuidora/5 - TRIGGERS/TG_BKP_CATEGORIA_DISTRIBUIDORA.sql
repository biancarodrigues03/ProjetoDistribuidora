DROP TRIGGER IF EXISTS TG_BKP_CATEGORIA;
DELIMITER $$
CREATE TRIGGER TG_BKP_CATEGORIA
AFTER INSERT ON CATEGORIA
FOR EACH ROW
BEGIN
	INSERT INTO BKP_DISTRIBUIDORA.BKP_CATEGORIA SET NOME_CATEGORIA = NEW.NOME_CATEGORIA;
END $$
DELIMITER ;