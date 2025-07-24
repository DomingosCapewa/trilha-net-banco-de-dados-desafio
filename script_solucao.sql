--Etapa 1
SELECT Nome, Ano FROM Filmes;

--Etapa 2
SELECT Nome, Ano FROM Filmes order by Ano;

 --Etapa3
SELECT * FROM Filmes where Nome = 'De Volta para o Futuro';

--Etapa 4
SELECT * FROM Filmes where Ano = 1997;

--Etapa 5
SELECT * FROM Filmes where Ano > 2000;

--Etapa 6
SELECT * FROM Filmes where Duracao > 100 AND Duracao < 150 order by Duracao;


--Etapa 7
SELECT
    Ano,
    COUNT(*) AS Quantidade
   FROM
    Filmes
GROUP BY
    Ano 
  Order by Quantidade desc;
  
  
--Etapa 8
SELECT 
	PrimeiroNome, 
	UltimoNome  FROM 
	Atores where Genero = 'M';
	

--Etapa 9;
SELECT 
	PrimeiroNome,
	UltimoNome FROM 
	Atores 

where 
	Genero = 'F'
ORDER BY PrimeiroNome;

--Etapa 10;
SELECT 
	Filmes.Nome, Generos.Genero FROM Filmes

INNER JOIN
 FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
 INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;
 
 --Etapa 11;
SELECT
	Filmes.Nome, 
	Generos.Genero
 FROM Filmes

INNER JOIN FilmesGenero ON	Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id 
				   where Generos.Genero = 'Mistério'; 

--Etapa 12;
SELECT
Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
 FROM Filmes

INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id;



--SELECT * FROM Filmes;
--SELECT * FROM FilmesGenero;
--SELECT * FROM Atores;
--SELECT * FROM ElencoFilme;