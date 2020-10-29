CREATE PROCEDURE SP_Inserir_Campeonato
	@Nome VARCHAR(100)
AS 
BEGIN
	INSERT INTO dbo.Campeonato (Nome) VALUES (@Nome)
END

EXEC SP_Inserir_Campeonato 'Campeonato Paulista'

SELECT * FROM Campeonato


