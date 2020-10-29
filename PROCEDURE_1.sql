CREATE PROCEDURE SP_Jogador_Por_Clube
    @ClubeId INT
AS
    BEGIN
SELECT Jogador.Nome, Clube.Nome FROM Jogador 
    INNER JOIN Clube ON Jogador.ClubeId = Clube.Id
        WHERE Clube.Id = @ClubeId
    END
EXEC SP_Jogador_Por_Clube 1 