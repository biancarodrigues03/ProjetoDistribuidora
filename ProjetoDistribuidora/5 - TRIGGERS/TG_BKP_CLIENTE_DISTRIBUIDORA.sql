DROP TRIGGER IF EXISTS TG_BKP_CLIENTE;
DELIMITER $$
CREATE TRIGGER TG_BKP_CLIENTE
AFTER INSERT ON CLIENTE
FOR EACH ROW
BEGIN
	INSERT INTO BKP_DISTRIBUIDORA.BKP_CLIENTE SET NOME_CLIENTE = NEW.NOME_CLIENTE, CPF = NEW.CPF, SEXO = NEW.SEXO,
	DATA_NASCIMENTO = NEW.DATA_NASCIMENTO, EMAIL_CLIENTE = NEW.EMAIL_CLIENTE;
END $$
DELIMITER ;