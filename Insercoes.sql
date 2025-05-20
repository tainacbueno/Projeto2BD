INSERT INTO Usuario (ID_Usuario, Nome, Email, Data_Nascimento) VALUES
(1, 'Ana Souza', 'ana@email.com', '1995-04-12'),
(2, 'Carlos Lima', 'carlos@email.com', '1990-09-23'),
(3, 'Beatriz Silva', 'beatriz@email.com', '1988-07-15'),
(4, 'Daniel Alves', 'daniel@email.com', '2000-01-30');

INSERT INTO Artista (ID_Artista, Nome, Pais, Genero_Musical) VALUES
(1, 'The Weeknd', 'Canadá', 'R&B'),
(2, 'Anitta', 'Brasil', 'Pop'),
(3, 'Ed Sheeran', 'Reino Unido', 'Pop'),
(4, 'Drake', 'Canadá', 'Hip-Hop'),
(5, 'The Beatles', 'Reino Unido', 'Rock');

INSERT INTO Album (ID_Album, Titulo, Ano_Lancamento, ID_Artista) VALUES
(1, 'After Hours', 2020, 1),
(2, 'Versions of Me', 2022, 2),
(3, 'Divide', 2017, 3),
(4, 'Scorpion', 2018, 4),
(5, 'Let It Be', 1970, 5);

INSERT INTO Musica (ID_Musica, Titulo, Duracao, ID_Album) VALUES
(1, 'Blinding Lights', '00:03:20', 1),
(2, 'Save Your Tears', '00:03:35', 1),
(3, 'Envolver', '00:03:13', 2),
(4, 'Shape of You', '00:03:53', 3),
(5, 'Perfect', '00:04:23', 3),
(6, "God's Plan", '00:03:19', 4),
(7, 'In My Feelings', '00:03:37', 4),
(8, 'Hotline Bling', '00:04:27', 4),
(9, 'Starboy', '00:03:50', 1),
(10, "Can't Feel My Face", '00:03:35', 1),
(11, 'Let It Be', '00:04:03', 5),
(12, 'Across the Universe', '00:03:48', 5);

INSERT INTO Playlist (ID_Playlist, Nome, Data_Criacao, ID_Usuario) VALUES
(1, 'Favoritas da Ana', '2025-05-01', 1),
(2, 'Hits do Carlos', '2025-05-10', 2),
(3, 'Relax da Beatriz', '2025-06-15', 3),
(4, 'Treino do Daniel', '2025-07-20', 4),
(5, 'Clássicos da Ana', '2025-05-20', 1);


INSERT INTO Genero (ID_Genero, Nome, Descricao) VALUES
(1, 'Pop', 'Popular music'),
(2, 'R&B', 'Rhythm and Blues'),
(3, 'Hip-Hop', 'Hip-Hop music'),
(4, 'Rock', 'Rock music');

INSERT INTO Playlist_Musica (ID_Playlist, ID_Musica, Ordem, Data_Adicao) VALUES
(1, 1, 1, '14/03/2024'),
(1, 3, 2, '27/10/2025'),
(2, 2, 1, '02/06/2025'),
(1, 4, 3, '01/01/2024'),
(2, 5, 2, '28/11/2025'),
(1, 6, 4, '15/12/2024'),
(2, 7, 3, '10/08/2025'),
(1, 8, 5, '09/04/2024'),
(2, 9, 4, '19/07/2024'),
(1, 10, 6, '06/09/2025'),
(3, 8, 1, '12/04/2024'),
(3, 9, 2, '25/06/2024'),
(3, 11, 3, '26/06/2024'),
(3, 12, 4, '26/06/2024'),
(4, 5, 1, '03/02/2024'),
(4, 11, 2, '03/02/2024'),
(2, 11, 5, '20/08/2024'),
(4, 6, 3, '17/08/2024'),
(5, 8, 1, '11/03/2024'),
(5, 10, 2, '22/07/2024');


INSERT INTO Musica_Genero (ID_Musica, ID_Genero) VALUES
(1, 2),
(2, 2),
(3, 1),
(4, 1),
(5, 1),
(6, 3),
(7, 3),
(8, 3),
(9, 2),
(10, 2),
(11, 4),
(12, 4);

INSERT INTO Usuario_Playlist (ID_Usuario, ID_Playlist, Data_Adicao) VALUES
(1, 1, '2025-05-01'),
(2, 2, '2025-05-10'),
(3, 3, '2025-06-15'),
(4, 4, '2025-07-20');

