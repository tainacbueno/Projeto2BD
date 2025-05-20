CREATE TABLE Usuario (
    ID_Usuario INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100) UNIQUE,
    Data_Nascimento DATE
);

CREATE TABLE Artista (
    ID_Artista INT PRIMARY KEY,
    Nome VARCHAR(100),
    Pais VARCHAR(50),
    Genero_Musical VARCHAR(50)
);

CREATE TABLE Album (
    ID_Album INT PRIMARY KEY,
    Titulo VARCHAR(100),
    Ano_Lancamento INT,
    ID_Artista INT,
    FOREIGN KEY (ID_Artista) REFERENCES Artista(ID_Artista)
);

CREATE TABLE Musica (
    ID_Musica INT PRIMARY KEY,
    Titulo VARCHAR(100),
    Duracao TIME,
    ID_Album INT,
    FOREIGN KEY (ID_Album) REFERENCES Album(ID_Album)
);

CREATE TABLE Playlist (
    ID_Playlist INT PRIMARY KEY,
    Nome VARCHAR(100),
    Data_Criacao DATE,
    ID_Usuario INT,
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario)
);

CREATE TABLE Genero (
    ID_Genero INT PRIMARY KEY,
    Nome VARCHAR(50),
    Descricao TEXT
);

CREATE TABLE Playlist_Musica (
    ID_Playlist INT,
    ID_Musica INT,
    Ordem INT,
    Data_Adicao DATE,
    PRIMARY KEY (ID_Playlist, ID_Musica),
    FOREIGN KEY (ID_Playlist) REFERENCES Playlist(ID_Playlist),
    FOREIGN KEY (ID_Musica) REFERENCES Musica(ID_Musica)
);

CREATE TABLE Musica_Genero (
    ID_Musica INT,
    ID_Genero INT,
    PRIMARY KEY (ID_Musica, ID_Genero),
    FOREIGN KEY (ID_Musica) REFERENCES Musica(ID_Musica),
    FOREIGN KEY (ID_Genero) REFERENCES Genero(ID_Genero)
);

CREATE TABLE Usuario_Playlist (
    ID_Usuario INT,
    ID_Playlist INT,
    Data_Adicao DATE,
    PRIMARY KEY (ID_Usuario, ID_Playlist),
    FOREIGN KEY (ID_Usuario) REFERENCES Usuario(ID_Usuario),
    FOREIGN KEY (ID_Playlist) REFERENCES Playlist(ID_Playlist)
);


