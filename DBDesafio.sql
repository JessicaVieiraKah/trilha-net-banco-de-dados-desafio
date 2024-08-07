SELECT Nome, Ano 
FROM Filmes;

SELECT Nome, Ano 
FROM Filmes 
ORDER BY Ano ASC;

SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE Nome = 'De Volta para o Futuro';

SELECT Nome, Ano 
FROM Filmes 
WHERE Ano = 1997;

SELECT Nome, Ano 
FROM Filmes 
WHERE Ano > 2000;

SELECT Nome, Duracao 
FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao ASC;

SELECT Ano, COUNT(*) AS QuantidadeFilmes 
FROM Filmes 
GROUP BY Ano 
ORDER BY Ano DESC;

SELECT * FROM Atores
WHERE Genero = 'Masculino';

SELECT PrimeiroNome, UltimoNome 
FROM Atores 
WHERE Genero = 'Feminino' 
ORDER BY PrimeiroNome ASC;

SELECT F.Nome AS NomeFilme, G.Genero AS NomeGenero 
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id;

SELECT F.Nome AS NomeFilme, G.Genero AS NomeGenero 
FROM Filmes F
JOIN FilmesGenero FG ON F.Id = FG.IdFilme
JOIN Generos G ON FG.IdGenero = G.Id
WHERE G.Genero = 'Mistério';

SELECT F.Nome AS NomeFilme, A.PrimeiroNome, A.UltimoNome, EF.Papel 
FROM Filmes F
JOIN ElencoFilme EF ON F.Id = EF.IdFilme
JOIN Atores A ON EF.IdAtor = A.Id;
