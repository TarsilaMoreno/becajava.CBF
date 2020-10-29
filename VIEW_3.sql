CREATE VIEW VW_Gols
AS
    SELECT 
    Mandante.Nome AS ClubeCasa,
    Partida.GolsMandante,
    Partida.GolsVisitante,
    Visitante.Nome AS ClubeVisitante
FROM Partida
    INNER JOIN Clube Visitante ON Visitante.Id = Partida.VisitanteId
    INNER JOIN Clube Mandante ON Mandante.Id = Partida.MandanteId


    SELECT * FROM VW_Gols