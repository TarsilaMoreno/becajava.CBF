CREATE TABLE Posicao(
	Id INT IDENTITY, 
	Nome VARCHAR(100),
	CONSTRAINT PK_Id_Posicao PRIMARY KEY(Id)
	)

CREATE TABLE Clube(
	Id INT IDENTITY, 
	Nome VARCHAR(100),
	Pontos INT,
	CONSTRAINT PK_Id_Clube PRIMARY KEY(Id)
	)

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

CREATE TABLE Jogador(
	Id INT IDENTITY, 
	Nome VARCHAR(100),
	PosicaoId INT,
	ClubeId INT,
	CONSTRAINT PK_Id_Jogador PRIMARY KEY(Id),
	CONSTRAINT FK_Posicao_Id FOREIGN KEY(PosicaoId)
	REFERENCES Posicao(Id), 
	CONSTRAINT FK_Clube_Id FOREIGN KEY(ClubeId)
	REFERENCES Clube(Id)
	)

	INSERT INTO Clube(Nome, Pontos) VALUES('Sao Paulo', 80)
	INSERT INTO Clube(Nome, Pontos) VALUES('Corinthians', 60)
	INSERT INTO Clube(Nome, Pontos) VALUES('Palmeiras', 60)
	INSERT INTO Clube(Nome, Pontos) VALUES('Botafogo', 40)
	INSERT INTO Clube(Nome, Pontos) VALUES('Vasco', 40)
	INSERT INTO Clube(Nome, Pontos) VALUES('Flamengo', 60)
	INSERT INTO Clube(Nome, Pontos) VALUES('Santos', 70)
	INSERT INTO Clube(Nome, Pontos) VALUES('Bahia', 80)
	INSERT INTO Clube(Nome, Pontos) VALUES('Gremio', 60)
	INSERT INTO Clube(Nome, Pontos) VALUES('Internacional', 80)

	SELECT *FROM Clube

	INSERT INTO Posicao(Nome) VALUES('Atacante')
	INSERT INTO Posicao(Nome) VALUES('Goleiro')
	INSERT INTO Posicao(Nome) VALUES('Zagueiro')
	INSERT INTO Posicao(Nome) VALUES('Meio Campo')
	INSERT INTO Posicao(Nome) VALUES('Lateral')
	INSERT INTO Posicao(Nome) VALUES('Volante')
	INSERT INTO Posicao(Nome) VALUES('Ponta')

	SELECT *FROM Posicao

	INSERT INTO Jogador(Nome, ClubeId, PosicaoId) VALUES('Romario', 5 , 1)
	INSERT INTO Jogador(Nome, ClubeId, PosicaoId) VALUES('Bebeto', 3 , 1)
	INSERT INTO Jogador(Nome, ClubeId, PosicaoId) VALUES('Taffarel', 2 , 2)
	INSERT INTO Jogador(Nome, ClubeId, PosicaoId) VALUES('Rogerio Ceni', 1 , 2)
	INSERT INTO Jogador(Nome, ClubeId, PosicaoId) VALUES('Ronaldo', 8 , 1)
	INSERT INTO Jogador(Nome, ClubeId, PosicaoId) VALUES('Rivaldo', 9 , 4)
	INSERT INTO Jogador(Nome, ClubeId, PosicaoId) VALUES('Cafu', 7 , 5)
	INSERT INTO Jogador(Nome, ClubeId, PosicaoId) VALUES('Leonardo', 4 , 5)
	INSERT INTO Jogador(Nome, ClubeId, PosicaoId) VALUES('Dunga', 6 , 6)
	INSERT INTO Jogador(Nome, ClubeId, PosicaoId) VALUES('Zetti', 10 , 2)
	
	INSERT INTO Jogador(Nome, ClubeId, PosicaoId) VALUES('Ronaldinho', 5 , 1)
	INSERT INTO Jogador(Nome, ClubeId, PosicaoId) VALUES('Romarinho', 3 , 1)
	INSERT INTO Jogador(Nome, ClubeId, PosicaoId) VALUES('Ribamar', 2 , 2)
	INSERT INTO Jogador(Nome, ClubeId, PosicaoId) VALUES('Tufão', 1 , 2)
	INSERT INTO Jogador(Nome, ClubeId, PosicaoId) VALUES('Adriano', 8 , 1)
	INSERT INTO Jogador(Nome, ClubeId, PosicaoId) VALUES('Coutinho', 9 , 4)
	INSERT INTO Jogador(Nome, ClubeId, PosicaoId) VALUES('Pato', 7 , 5)
	INSERT INTO Jogador(Nome, ClubeId, PosicaoId) VALUES('Cleiton', 4 , 5)
	INSERT INTO Jogador(Nome, ClubeId, PosicaoId) VALUES('Jefferson', 6 , 6)
	INSERT INTO Jogador(Nome, ClubeId, PosicaoId) VALUES('Danilo', 10 , 2)


	SELECT *FROM Jogador

	SELECT *FROM Clube

	INSERT INTO Partida(MandanteId, GolsMandante, VisitanteId , GolsVisitante) VALUES(1 ,3 , 10 , 1)
	INSERT INTO Partida(MandanteId, GolsMandante, VisitanteId , GolsVisitante) VALUES(2 ,1 , 9 , 1)
	INSERT INTO Partida(MandanteId, GolsMandante, VisitanteId , GolsVisitante) VALUES(3 ,0 , 8 , 2)
	INSERT INTO Partida(MandanteId, GolsMandante, VisitanteId , GolsVisitante) VALUES(4 ,4 , 5 , 2)
	INSERT INTO Partida(MandanteId, GolsMandante, VisitanteId , GolsVisitante) VALUES(5 ,1 , 7 , 1)
	INSERT INTO Partida(MandanteId, GolsMandante, VisitanteId , GolsVisitante) VALUES(6 ,1 , 4 , 1)
	INSERT INTO Partida(MandanteId, GolsMandante, VisitanteId , GolsVisitante) VALUES(7 ,5 , 6 , 0)
	INSERT INTO Partida(MandanteId, GolsMandante, VisitanteId , GolsVisitante) VALUES(8 ,2 , 2 , 2)
	INSERT INTO Partida(MandanteId, GolsMandante, VisitanteId , GolsVisitante) VALUES(9 ,2 , 1 , 3)
	INSERT INTO Partida(MandanteId, GolsMandante, VisitanteId , GolsVisitante) VALUES(10 ,1 , 1 , 0)
	INSERT INTO Partida(MandanteId, GolsMandante, VisitanteId , GolsVisitante) VALUES(1 ,3 , 2 , 2)
	INSERT INTO Partida(MandanteId, GolsMandante, VisitanteId , GolsVisitante) VALUES(2 ,2 , 3 , 1)
	INSERT INTO Partida(MandanteId, GolsMandante, VisitanteId , GolsVisitante) VALUES(3 ,1 , 4 , 0)
	INSERT INTO Partida(MandanteId, GolsMandante, VisitanteId , GolsVisitante) VALUES(4 ,1 , 7 , 2)
	INSERT INTO Partida(MandanteId, GolsMandante, VisitanteId , GolsVisitante) VALUES(5 ,1 , 6 , 1)
	INSERT INTO Partida(MandanteId, GolsMandante, VisitanteId , GolsVisitante) VALUES(6 ,2 , 5 , 2)
	INSERT INTO Partida(MandanteId, GolsMandante, VisitanteId , GolsVisitante) VALUES(7 ,1 , 4 , 1)
	INSERT INTO Partida(MandanteId, GolsMandante, VisitanteId , GolsVisitante) VALUES(8 ,2 , 3 , 2)
	INSERT INTO Partida(MandanteId, GolsMandante, VisitanteId , GolsVisitante) VALUES(9 ,1 , 10 , 1)
	INSERT INTO Partida(MandanteId, GolsMandante, VisitanteId , GolsVisitante) VALUES(10 ,4 , 8 , 2)

	SELECT *FROM Partida


	ALTER TABLE Partida
	ADD CONSTRAINT FK_Nome_Mandandante FOREIGN KEY(NomeMandante)
	REFERENCES Clube(Nome)

	SELECT Nome FROM Jogador
	WHERE ClubeId = 1

	SELECT*
		P.Nome,
		J.Nome
		C.Nome,
	FROM Clube C
		JOIN Jogador J ON P.Id = P.Posicao
	


	SELECT
		M.Nome,
		P.GolsMandante,
		P.GolsVisitante,
		V.Nome
	FROM Partida P
		JOIN Clube V ON V.Id = P.VisitanteId
		JOIN Clube M ON M.Id = P.MandanteId


	SELECT
	*
	FROM Clube C
		INNER JOIN Jogador J ON C.Id = J.ClubeId


