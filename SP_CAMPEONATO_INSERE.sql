CREATE PROCEDURE CP_Local_Da_Partida
	@Nome VARCHAR(100)
AS 
BEGIN
	SET NOCOUNT ON 
	INSERT INTO dbo.Campeonato (
	Nome
	) VALUES('Campeonato Brasileiro')
END
