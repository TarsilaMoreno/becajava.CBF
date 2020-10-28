SELECT
	M.Nome,
	P.GolsMandante,
	P.GolsVisitante,
	V.Nome
FROM Partida P
	JOIN Clube V ON V.Id = P.VisitanteId
	JOIN Clube M ON M.Id = P.MandanteId