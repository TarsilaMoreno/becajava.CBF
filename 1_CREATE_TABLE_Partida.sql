CREATE TABLE Partida(
	Id INT IDENTITY, 
	MandanteId INT,
	VisitanteId INT,
	GolsMandante INT,
	GolsVisitante INT,
	CONSTRAINT PK_Id_Partida PRIMARY KEY(Id),
	CONSTRAINT FK_Mandante_Id FOREIGN KEY(MandanteId)
	REFERENCES Clube(Id), 
	CONSTRAINT FK_Visitante_Id FOREIGN KEY(VisitanteId)
	REFERENCES Clube(Id) 
	)