CREATE TRIGGER tgAtualizaPessoa ON Pessoas
	AFTER UPDATE 
		AS
			UPDATE pessoas SET atualizado = GETDATE() WHERE id = (SELECT id FROM INSERTED)
