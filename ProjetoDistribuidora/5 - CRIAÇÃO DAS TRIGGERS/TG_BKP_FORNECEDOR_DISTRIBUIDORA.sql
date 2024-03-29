DROP TRIGGER IF EXISTS TG_BKP_FORNECEDOR;
DELIMITER $$
CREATE TRIGGER TG_BKP_FORNECEDOR
AFTER INSERT ON FORNECEDOR
FOR EACH ROW
BEGIN
	INSERT INTO BKP_DISTRIBUIDORA.BKP_FORNECEDOR SET RAZAO_SOCIAL = NEW.RAZAO_SOCIAL, NOME_FANTASIA = NEW.NOME_FANTASIA, CNPJ = NEW.CNPJ,
	EMAIL_FORNECEDOR = NEW.EMAIL_FORNECEDOR;
END $$
DELIMITER ;