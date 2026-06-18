CREATE DATABASE IF NOT EXISTS tripual DEFAULT CHARACTER SET utf8;
USE tripual;

CREATE TABLE IF NOT EXISTS idioma (
	id INT NOT NULL AUTO_INCREMENT ,
    nome VARCHAR(2) NOT NULL UNIQUE,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS medalha (
	id INT NOT NULL AUTO_INCREMENT,
    pontos INT NOT NULL,
    nome VARCHAR(45) NOT NULL UNIQUE,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS categoria (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS localizacao (
	id INT NOT NULL AUTO_INCREMENT,
    pais VARCHAR(45) NOT NULL,
	cidade VARCHAR(45),
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS utilizador (
    id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    pontos INT NOT NULL,
    idioma_id INT NOT NULL,     
    email VARCHAR(255) NOT NULL UNIQUE,
    passwords VARCHAR(100) NOT NULL,
    genero ENUM('M','F') NOT NULL,
    PRIMARY KEY (id),          
	FOREIGN KEY (idioma_id) REFERENCES idioma(id)
);

CREATE TABLE IF NOT EXISTS telemovel (
    nr INT NOT NULL,
    utilizador_id INT NOT NULL,
    PRIMARY KEY (nr, utilizador_id),        
	FOREIGN KEY (utilizador_id) REFERENCES utilizador(id)
);

CREATE TABLE IF NOT EXISTS publicacao (
    id INT NOT NULL AUTO_INCREMENT,
    inicio DATE NOT NULL,
    fim DATE NULL,
    dataPublicacao DATE NOT NULL,
    utilizador_id INT NOT NULL,
    localizacao_id INT NOT NULL,
    PRIMARY KEY (id),
	FOREIGN KEY (utilizador_id) REFERENCES utilizador (id),
	FOREIGN KEY (localizacao_id) REFERENCES localizacao (id)
);

CREATE TABLE IF NOT EXISTS ficheiro (
	id INT NOT NULL AUTO_INCREMENT,
    tipo ENUM('Imagem', 'Video', 'Audio', '3d') NOT NULL,
    caminho VARCHAR(75) NOT NULL,
    publicacao_id INT NOT NULL,
    UNIQUE (publicacao_id, caminho),
    PRIMARY KEY (id),
	FOREIGN KEY (publicacao_id) REFERENCES publicacao (id)
);

CREATE TABLE IF NOT EXISTS comentario (
	id INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR(255) NOT NULL,
    publicacao_id INT NOT NULL,
    utilizador_id INT NOT NULL,
    PRIMARY KEY (id),
	FOREIGN KEY (publicacao_id) REFERENCES publicacao (id),
	FOREIGN KEY (utilizador_id) REFERENCES utilizador (id)
);

CREATE TABLE IF NOT EXISTS idioma_traduz_publicacao(
	nome VARCHAR(45) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    publicacao_id INT NOT NULL,
    idioma_id INT NOT NULL,
    PRIMARY KEY (publicacao_id, idioma_id),
	FOREIGN KEY (publicacao_id) REFERENCES publicacao (id),
	FOREIGN KEY (idioma_id) REFERENCES idioma (id)
);


CREATE TABLE IF NOT EXISTS utilizador_tem_medalha(
	utilizador_id INT NOT NULL,
    medalha_id INT NOT NULL,
    PRIMARY KEY (utilizador_id, medalha_id),
	FOREIGN KEY (utilizador_id) REFERENCES utilizador (id),
	FOREIGN KEY (medalha_id) REFERENCES medalha (id)
);

CREATE TABLE IF NOT EXISTS reacoes_publicacao(
	reacao INT NOT NULL CHECK (reacao BETWEEN 1 AND 5),
    utilizador_id INT NOT NULL,
    publicacao_id INT NOT NULL,	
    PRIMARY KEY (utilizador_id, publicacao_id),
	FOREIGN KEY (utilizador_id) REFERENCES utilizador (id),
	FOREIGN KEY (publicacao_id) REFERENCES publicacao (id)
);

CREATE TABLE IF NOT EXISTS categoria_publicacao(
	categoria_id INT NOT NULL,
    publicacao_id INT NOT NULL,
    PRIMARY KEY (categoria_id, publicacao_id),
	FOREIGN KEY (categoria_id) REFERENCES categoria (id),
	FOREIGN KEY (publicacao_id) REFERENCES publicacao (id)
);




    


