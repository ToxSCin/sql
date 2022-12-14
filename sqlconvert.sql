DELIMITER 
CREATE PROCEDURE insere_dados()
SEGIN
	DECLARE erro_sql TINYINT DEFAULT FALSE;
    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION erro_sql = TRUE;
START TRANSACTION;
	INSERT INTO RTX (NomeRTX, BTAXM1V, PreçoRTX) VALUES ('RTX3060','523623443762','170.00');
    INSERT INTO RTX (NomeRTX, BTAXM1V, PreçoRTX) VALUES ('RTX1080','523623443762','600.00');
    INSERT INTO RTX (NomeRTX, BTAXM1V, PreçoRTX) VALUES ('RTX230','523623443762','350.00');
    INSERT INTO RTX (NomeRTX, BTAXM1V, PreçoRTX) VALUES ('RTX120','523623443762','200.00');
    IF erro_sql = FALSE THEN
    COMMIT;
    SELECT 'COMPRA COMPLETA COM SUCESSO.' AS Resultado;
ELSE;
	ROLLBACK;
    SELECT 'ERRO NA COMPRA' AS Resultado;
END IF;
END
DELIMITER;   