create database db_sistema_garagens;

use db_sistema_garagens;

CREATE TABLE usuarios (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(120) NOT NULL UNIQUE,
    senha VARCHAR(100) NOT NULL
);

CREATE TABLE garagens (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    pais VARCHAR(50) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    bairro VARCHAR(50) NOT NULL,
    rua VARCHAR(100) NOT NULL,
    numero VARCHAR(10) NOT NULL,
    cep VARCHAR(20) NOT NULL
);

 -- versão do bd
select version();

ALTER TABLE garagens ADD COLUMN idUsuario INT;

-- caso precise alterar os dados do usuarios
DELETE FROM usuarios;

-- Inserir os dados do usuario fixo
INSERT INTO usuarios (nome, email, senha) VALUES ('Administrador', 'admin@garagens.com', 'admin123');

-- testar se deu boa
SELECT * FROM usuarios;
SELECT * FROM garagens;

TRUNCATE TABLE garagens;