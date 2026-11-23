
-- Planos
INSERT planos (tipo, valor) VALUES 
("Gratuito", 0.0),
("Lite", 5.0),
("Pro", 10.0);

-- Usuarios 
INSERT users (nome, cpf, email, senha, cep, rua, numero, cidade, bairro) VALUES
("Edson da Silva", 123, "edson@gmail.com", 1234, 34019, "Avenida", 200, "Guarulhos", "Brasil"),
("Renata de Melo", 122, "renata@gmail.com", 1234, 34020, "Avenida", 202, "Guarulhos", "Brasil"),
("Gustavo da Silva", 121, "gustavo@gmail.com", 1234, 34020, "Avenida", 206, "Guarulhos", "Brasil"),
("Alan da Silva", 120, "alan@gmail.com", 1234, 34020, "Avenida", 210, "Guarulhos", "Brasil"),
("Pedro Henrique", 119, "pedro@gmail.com", 1234, 34020, "Avenida", 20, "Guarulhos", "Brasil");

-- Telefone
INSERT telefones (tel, id_user) VALUES 
("11989850920", 1),
("11989850910", 1),
("11989850912", 2),
("11989850920", 2),
("11989811111", 4),
("11981119191", 5);

-- Pagamentos 
INSERT pagamentos (forma_de_pagamento, timestamp, id_plano, id_user, status_pagamento) VALUES 
("Pix", "2026-10-20 11:42:00", 2, 1, 0),
("Cartão de Crédito", "2026-10-21 11:42:00", 3, 2, 1),
("Boleto", "2026-10-22 13:34:00", 2, 3, 0);

-- Generos 
INSERT generos (nome, desc_genero) VALUES 
("Pop Latino", "Música Pop Latino"),
("Jazz", "Música Jazz"),
("Pop", "Música Pop Internacional");

-- Artistas
INSERT artistas (nome, email, senha, nacionalidade) VALUES 
("Roberto Milos", "roberto@gmail.com", "roberto_senha@", "Brasileiro"),
("Roberta Milos", "roberta@gmail.com", "roberta_senha@", "Brasileiro"),
("Emanuele", "emanuele_tr@gmail.com", "emanuele_21_senha123", "Brasileiro");

-- Albuns
INSERT albuns (nome, data_de_criacao, id_art) VALUES 
("Uma vez levou", "1946-10-10", 1),
("Ùltima Adeus a Humanidade", "1999-12-31", 2), 
("Até logo, meus deus!", "2000-12-30", 2);

-- Músicas
INSERT musicas (nome, duracao_secs, id_album, id_genero) VALUES 
("O sol que levou a lua", 240, 1, 2),
("A terra", 120, 2, 3),
("Boneco de Barro", 320, 3, 1);

-- Historico
INSERT historicos (id_user, id_album, id_musica, reg_time) VALUES 
(1, 1, 1, "2026-12-20 11:10:11"),
(2, 2, 2, "2026-12-21 10:20:20"),
(3, 3, 2, "2026-12-22 12:59:20");

-- PlayList
INSERT playlists (nome, desc_playlist, is_public, data_criacao, id_user) VALUES 
("Playlist 1", "Primeira Playlist", 0, "2026-12-22", 1),
("Playlist 2", "Segunda Playlist", 0, "2026-12-22", 2),
("Playlist 3", "Terceira Playlist", 0, "2026-12-22", 3);

-- PlayList & Musicas - Assocs
INSERT playlist_assoc (id_playlist, id_musica) VALUES 
(1, 2),
(2, 3),
(3, 1);

-- Artistas & Musicas - Assocs
INSERT art_music_assoc (id_art, id_musica) VALUES
(1, 2),
(2, 3),
(3, 1);

-- Artistas & Albuns - Assocs
INSERT art_album_assoc (id, id_album) VALUES 
(1, 2),
(2, 3),
(3, 1);











