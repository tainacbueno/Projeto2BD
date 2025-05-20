-- 1. Músicas mais adicionadas em playlists
SELECT M.Titulo, COUNT(*) AS Total_Adicoes
FROM Playlist_Musica PM
JOIN Musica M ON PM.ID_Musica = M.ID_Musica
GROUP BY M.Titulo
ORDER BY Total_Adicoes DESC;

-- 2. Artistas com mais músicas cadastradas
SELECT A.Nome, COUNT(*) AS Total_Musicas
FROM Artista A
JOIN Album AL ON A.ID_Artista = AL.ID_Artista
JOIN Musica M ON AL.ID_Album = M.ID_Album
GROUP BY A.Nome
ORDER BY Total_Musicas DESC;

-- 3. Álbuns com mais músicas
SELECT AL.Titulo, COUNT(*) AS Total_Musicas
FROM Album AL
JOIN Musica M ON AL.ID_Album = M.ID_Album
GROUP BY AL.Titulo
ORDER BY Total_Musicas DESC;

-- 4. Gêneros mais populares, por número de músicas
SELECT G.Nome, COUNT(*) AS Total_Musicas
FROM Genero G
JOIN Musica_Genero MG ON G.ID_Genero = MG.ID_Genero
GROUP BY G.Nome
ORDER BY Total_Musicas DESC;

-- 5. Músicas que aparecem em mais de uma playlist
SELECT M.Titulo, COUNT(DISTINCT PM.ID_Playlist) AS Total_Playlists
FROM Musica M
JOIN Playlist_Musica PM ON M.ID_Musica = PM.ID_Musica
GROUP BY M.Titulo
HAVING COUNT(DISTINCT PM.ID_Playlist) > 1
ORDER BY Total_Playlists DESC;

-- 6. Usuários que criaram mais playlists
SELECT U.Nome, COUNT(*) AS Total_Playlists
FROM Usuario U
JOIN Playlist P ON U.ID_Usuario = P.ID_Usuario
GROUP BY U.Nome
ORDER BY Total_Playlists DESC;

-- 7. Playlists com mais músicas
SELECT P.Nome, COUNT(*) AS Total_Musicas
FROM Playlist P
JOIN Playlist_Musica PM ON P.ID_Playlist = PM.ID_Playlist
GROUP BY P.Nome
ORDER BY Total_Musicas DESC;

-- 8. Usuários que têm playlist com músicas de gêneros diferentes
SELECT U.Nome, COUNT(DISTINCT MG.ID_Genero) AS Generos_Diferentes
FROM Usuario U
JOIN Playlist P ON U.ID_Usuario = P.ID_Usuario
JOIN Playlist_Musica PM ON P.ID_Playlist = PM.ID_Playlist
JOIN Musica_Genero MG ON PM.ID_Musica = MG.ID_Musica
GROUP BY U.Nome
ORDER BY Generos_Diferentes DESC;

-- 9. Playlists com músicas de mais de 3 gêneros diferentes
SELECT P.Nome, COUNT(DISTINCT MG.ID_Genero) AS Generos_Diferentes
FROM Playlist P
JOIN Playlist_Musica PM ON P.ID_Playlist = PM.ID_Playlist
JOIN Musica_Genero MG ON PM.ID_Musica = MG.ID_Musica
GROUP BY P.Nome
HAVING COUNT(DISTINCT MG.ID_Genero) > 3;

-- 10. Artistas que aparecem em playlists de mais de um usuário
SELECT AR.Nome AS Artista, COUNT(DISTINCT P.ID_Usuario) AS Total_Usuarios
FROM Artista AR
JOIN Album A ON AR.ID_Artista = A.ID_Artista
JOIN Musica M ON A.ID_Album = M.ID_Album
JOIN Playlist_Musica PM ON M.ID_Musica = PM.ID_Musica
JOIN Playlist P ON PM.ID_Playlist = P.ID_Playlist
GROUP BY AR.Nome
HAVING COUNT(DISTINCT P.ID_Usuario) > 1
ORDER BY Total_Usuarios DESC;

-- 11. Músicas adicionadas em playlists no mês de março de 2024
SELECT M.Titulo, PM.Data_Adicao
FROM Playlist_Musica PM
JOIN Musica M ON PM.ID_Musica = M.ID_Musica
WHERE PM.Data_Adicao LIKE '__/03/2024';

-- 12. Dia com mais adições de músicas em playlists
SELECT PM.Data_Adicao, COUNT(*) AS Total_Adicoes
FROM Playlist_Musica PM
GROUP BY PM.Data_Adicao
ORDER BY Total_Adicoes DESC
LIMIT 1;

-- 13. Playlists criadas em 2025
SELECT Nome, Data_Criacao
FROM Playlist
WHERE strftime('%Y', Data_Criacao) = '2025'; -- ano de criação

-- 14. Músicas de um artista em playlists de um usuário
SELECT M.Titulo, P.Nome
FROM Musica M
JOIN Album A ON M.ID_Album = A.ID_Album
JOIN Artista AR ON A.ID_Artista = AR.ID_Artista
JOIN Playlist_Musica PM ON M.ID_Musica = PM.ID_Musica
JOIN Playlist P ON PM.ID_Playlist = P.ID_Playlist
JOIN Usuario U ON P.ID_Usuario = U.ID_Usuario
WHERE AR.Nome = 'The Weeknd' AND U.Nome = 'Ana Souza'; -- nome do artista e do usuário

-- 15. Gêneros que mais aparecem na playlist de um usuário
SELECT U.Nome AS Usuario, G.Nome AS Genero, COUNT(*) AS Total_Musicas
FROM Usuario U
JOIN Playlist P ON U.ID_Usuario = P.ID_Usuario
JOIN Playlist_Musica PM ON P.ID_Playlist = PM.ID_Playlist
JOIN Musica_Genero MG ON PM.ID_Musica = MG.ID_Musica
JOIN Genero G ON MG.ID_Genero = G.ID_Genero
WHERE U.Nome = "Beatriz Silva" -- nome do usuário
GROUP BY U.Nome, G.Nome
ORDER BY U.Nome, Total_Musicas DESC;
