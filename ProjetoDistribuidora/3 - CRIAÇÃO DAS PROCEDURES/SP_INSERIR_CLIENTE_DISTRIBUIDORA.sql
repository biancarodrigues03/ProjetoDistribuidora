DELIMITER $$
CREATE PROCEDURE SP_INSERIR_CLIENTE(IN 
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
END $$
DELIMITER ;

call distribuidora.SP_INSERIR_CLIENTE('MIGUEL SANTOS', '259.852.957-93', 'M', '1994-11-01', 'MIGUEL@GMAIL.COM');