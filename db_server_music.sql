
DROP DATABASE db_server_music;
CREATE DATABASE db_server_music;
USE db_server_music;

CREATE TABLE users (
	id_user INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	cpf VARCHAR(11) NOT NULL UNIQUE,
	email VARCHAR(200) NOT NULL UNIQUE,
	senha VARCHAR(200) NOT NULL,
	cep VARCHAR(8) NOT NULL,
	rua VARCHAR(100) NOT NULL,
	numero INT NOT NULL,
	cidade VARCHAR(50) NOT NULL,
	bairro VARCHAR(50) NOT NULL
);

CREATE TABLE planos (
    id_plano INT AUTO_INCREMENT PRIMARY KEY,
    tipo VARCHAR(100) UNIQUE,
    valor DECIMAL(5, 2),
    qtn_users INT DEFAULT 0
);
CREATE TABLE pagamentos (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    forma_de_pagamento VARCHAR(20),
    timestamp DATETIME,
    id_user INT,
    CONSTRAINT fk_id_user FOREIGN KEY (id_user)
        REFERENCES users (id_user),
    id_plano INT,
    CONSTRAINT fk_id_plano FOREIGN KEY (id_plano)
        REFERENCES planos (id_plano),
    status_pagamento INT NOT NULL
);

CREATE TABLE telefones (
    id_tel INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    tel VARCHAR(11) NOT NULL,
    id_user INT,
    CONSTRAINT fk_id_user_tel FOREIGN KEY (id_user)
        REFERENCES users (id_user)
    ON DELETE CASCADE
    ON UPDATE CASCADE
);
CREATE TABLE generos (
    id_genero INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome VARCHAR(100),
    desc_genero VARCHAR(300)
);

CREATE TABLE artistas (
    id_art INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(100) NOT NULL,
    nacionalidade VARCHAR(50)
);

CREATE TABLE albuns (
    id_album INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    qnt_musica INT DEFAULT 0,
    data_de_criacao DATE,
    id_art INT,
    CONSTRAINT fk_id_art FOREIGN KEY (id_art)
        REFERENCES artistas (id_art)
);

CREATE TABLE musicas (
    id_musica INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    duracao_secs INT NOT NULL,
    id_album INT,
    id_genero INT,
    CONSTRAINT fk_id_album FOREIGN KEY (id_album)
        REFERENCES albuns (id_album),
    CONSTRAINT fk_genero FOREIGN KEY (id_genero)
        REFERENCES generos (id_genero)
);

CREATE TABLE historicos (
    id_historico INT AUTO_INCREMENT PRIMARY KEY,
    id_user INT,
    id_album INT,
    id_musica INT,
    reg_time DATETIME,
    CONSTRAINT fk_id_user_hist FOREIGN KEY (id_user)
        REFERENCES users (id_user),
    CONSTRAINT fk_id_musica_hist FOREIGN KEY (id_musica)
        REFERENCES musicas (id_musica),
    CONSTRAINT fk_id_albun_hist FOREIGN KEY (id_album)
        REFERENCES albuns (id_album)
);

CREATE TABLE playlists (
    id_playlist INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    desc_playlist VARCHAR(1000),
    is_public INT DEFAULT 0,
    data_criacao DATETIME,
    id_user INT,
    CONSTRAINT fk_id_user_play FOREIGN KEY (id_user)
        REFERENCES users (id_user)
);

CREATE TABLE playlist_assoc (
    id_playlist_assoc INT AUTO_INCREMENT PRIMARY KEY,
    id_playlist INT UNIQUE,
    id_musica INT UNIQUE,
    CONSTRAINT fk_id_playlist FOREIGN KEY (id_playlist)
        REFERENCES playlists (id_playlist),
    CONSTRAINT fk_id_musica_assoc FOREIGN KEY (id_musica)
        REFERENCES musicas (id_musica)
);

CREATE TABLE art_music_assoc (
    id_art_music_assoc INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    id_art INT,
    id_musica INT,
    CONSTRAINT fk_id_art_assoc FOREIGN KEY (id_art)
        REFERENCES artistas (id_art),
    CONSTRAINT fk_musica_assoc FOREIGN KEY (id_musica)
        REFERENCES musicas (id_musica)
);





