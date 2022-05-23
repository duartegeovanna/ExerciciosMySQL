CREATE DATABASE db_papelaria;

USE db_papelaria;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
produto varchar(255) NOT NULL,
quantidade int,
valor decimal (5,2) NOT NULL,
ativo boolean,
PRIMARY KEY (id)
);

INSERT INTO tb_produtos(produto, quantidade, valor, ativo)
VALUE ("caneta azul", 16, 2.00, true);

INSERT INTO tb_produtos(produto, quantidade, valor, ativo)
VALUE ("Caderno", 50, 16.50, true);

INSERT INTO tb_produtos(produto, quantidade, valor, ativo)
VALUE ("Tinta impressora", 25, 129.90, true);

INSERT INTO tb_produtos(produto, quantidade, valor, ativo)
VALUE ("Impressora", 5, 550.00, true);

INSERT INTO tb_produtos(produto, quantidade, valor, ativo)
VALUE ("Estojo", 0, 6.00, false);

INSERT INTO tb_produtos(produto, quantidade, valor, ativo)
VALUE ("Lápis", 10, 1.50, true);

INSERT INTO tb_produtos(produto, quantidade, valor, ativo)
VALUE ("Agenda", 30, 45.00, true);

INSERT INTO tb_produtos(produto, quantidade, valor, ativo)
VALUE ("Papel cartolina", 0, 1.00, true);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE valor > 500.00;

SELECT * FROM tb_produtos WHERE valor < 500.00;

UPDATE tb_produtos SET produto = "Caneta preta" WHERE id = 1;

