USE tripual;

INSERT INTO idioma (nome) VALUES ('PT');
INSERT INTO idioma (nome) VALUES ('EN');


INSERT INTO medalha (pontos, nome) VALUES (50, 'Bronze');
INSERT INTO medalha (pontos, nome) VALUES (250, 'Silver');
INSERT INTO medalha (pontos, nome) VALUES (500, 'Gold');

INSERT INTO categoria (nome) VALUES ('História');
INSERT INTO categoria (nome) VALUES ('Cultura');
INSERT INTO categoria (nome) VALUES ('Aventura');


INSERT INTO utilizador (nome, pontos, idioma_id, email, passwords) VALUES ('João Silva', 120, 1, 'joao@gmail.com', 'joao123');
INSERT INTO utilizador (nome, pontos, idioma_id, email, passwords) VALUES ('Maria Pontes', 350, 2, 'maria@gmail.com', 'mariapontes27');
INSERT INTO utilizador (nome, pontos, idioma_id, email, passwords) VALUES ('Pedro Alberto', 80, 2, 'pedro@gmail.com', 'palberto34');


INSERT INTO telemovel (nr, utilizador_id) VALUES (917253462, 1);
INSERT INTO telemovel (nr, utilizador_id) VALUES (934358092, 1);
INSERT INTO telemovel (nr, utilizador_id) VALUES (934758091, 2);
INSERT INTO telemovel (nr, utilizador_id) VALUES (965342189, 3);


INSERT INTO localizacao (pais, cidade) VALUES ('Portugal', 'Lisboa');
INSERT INTO localizacao (pais, cidade) VALUES ('Espanha', 'Madrid');
INSERT INTO localizacao (pais, cidade) VALUES ('Brasil', 'Sao Paulo');


INSERT INTO publicacao (inicio, fim, dataPublicacao, utilizador_id, localizacao_id) VALUES ('2025-01-01', '2025-01-10', '2025-01-01', 1, 1);
INSERT INTO publicacao (inicio, fim, dataPublicacao, utilizador_id, localizacao_id) VALUES ('2025-03-05', '2025-03-20', '2025-03-05', 2, 2);
INSERT INTO publicacao (inicio, fim, dataPublicacao, utilizador_id, localizacao_id) VALUES ('2025-05-20', '2025-06-07', '2025-05-20', 3, 3);


INSERT INTO ficheiro (tipo, caminho, publicacao_id) VALUES ('Imagem', '/img/lisboa1.png', 1);
INSERT INTO ficheiro (tipo, caminho, publicacao_id) VALUES ('Video', '/vid/madrid5.mp4', 2);
INSERT INTO ficheiro (tipo, caminho, publicacao_id) VALUES ('Video', '/vid/brasil.mp4', 3);


INSERT INTO comentario (descricao, publicacao_id, utilizador_id) VALUES ('Excelente viagem!', 1, 2);
INSERT INTO comentario (descricao, publicacao_id, utilizador_id) VALUES ('Adorei a cidade!', 2, 3);
INSERT INTO comentario (descricao, publicacao_id, utilizador_id) VALUES ('Wow, so beautifull', 3, 1);

INSERT INTO idioma_traduz_publicacao (nome, descricao, publicacao_id, idioma_id) VALUES ('Viagem a Lisboa', 'Experiência incrível', 1, 1);
INSERT INTO idioma_traduz_publicacao (nome, descricao, publicacao_id, idioma_id) VALUES ('Trip to Lisbon', 'Amazing experience', 1, 2);
INSERT INTO idioma_traduz_publicacao (nome, descricao, publicacao_id, idioma_id) VALUES ('Viagem a Madrid', 'Sítio fantástico cheio de história', 2, 1);
INSERT INTO idioma_traduz_publicacao (nome, descricao, publicacao_id, idioma_id) VALUES ('Tripo to Madrid', 'Amazing place, full of history', 2, 2);
INSERT INTO idioma_traduz_publicacao (nome, descricao, publicacao_id, idioma_id) VALUES ('Viagem a São Paulo', 'O Brasil é um sítio perigoso, mas absolutamente magnífico', 3, 1);
INSERT INTO idioma_traduz_publicacao (nome, descricao, publicacao_id, idioma_id) VALUES ('Trip to São Paulo', 'Brazil is a dangerous place, but absolutely magnificent.', 3, 2);

INSERT INTO utilizador_tem_medalha (utilizador_id, medalha_id) VALUES (1, 1);
INSERT INTO utilizador_tem_medalha (utilizador_id, medalha_id) VALUES (2, 3);
INSERT INTO utilizador_tem_medalha (utilizador_id, medalha_id) VALUES (3, 2);

INSERT INTO reacoes_publicacao (reacao, utilizador_id, publicacao_id) VALUES (1, 1, 2);
INSERT INTO reacoes_publicacao (reacao, utilizador_id, publicacao_id) VALUES (4, 2, 1);
INSERT INTO reacoes_publicacao (reacao, utilizador_id, publicacao_id) VALUES (3, 3, 1);

INSERT INTO categoria_publicacao (categoria_id, publicacao_id) VALUES (1, 1);
INSERT INTO categoria_publicacao (categoria_id, publicacao_id) VALUES (2, 2);
INSERT INTO categoria_publicacao (categoria_id, publicacao_id) VALUES (3, 3);


