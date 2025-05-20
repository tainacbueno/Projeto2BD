SELECT ID_Usuario, Nome, Email 
FROM Usuario
WHERE Nome IS NULL OR Nome = '' 
   OR Email IS NULL OR Email = '';

SELECT ID_Artista, Nome, Pais, Genero_Musical 
FROM Artista
WHERE Pais IS NULL OR Pais = ''
   OR Genero_Musical IS NULL OR Genero_Musical = '';

SELECT ID_Album, Titulo 
FROM Album
WHERE ID_Artista IS NULL 
   OR ID_Artista NOT IN (SELECT ID_Artista FROM Artista);

SELECT ID_Musica, Titulo 
FROM Musica
WHERE ID_Album IS NULL 
   OR ID_Album NOT IN (SELECT ID_Album FROM Album);

SELECT ID_Playlist, Nome 
FROM Playlist
WHERE ID_Usuario IS NULL 
   OR ID_Usuario NOT IN (SELECT ID_Usuario FROM Usuario);

SELECT ID_Musica 
FROM Musica
WHERE ID_Musica NOT IN (SELECT ID_Musica FROM Musica_Genero);
