CREATE DATABASE db_farmacia_bem_estar;

USE db_farmacia_bem_estar;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
estoque varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (descricao, estoque)
VALUES ("Cosméticos", "Disponível"),
("Higiene", "Disponível"),
("Medicamentos", "Disponível"),
("Naturais", "Indisponível"),
("Manipulados", "Solicitar encomenda");

SELECT * FROM tb_categorias;

CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
quantidade int NOT NULL,
preco decimal (5,2) NOT NULL,
dtvalidade date NOT NULL,
receita_medica varchar(255) NOT NULL,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_produtos(nome, quantidade, preco, dtvalidade, receita_medica, categoria_id) 
VALUES ("Base Líquida", 60, 65.00, "2024-07-23", "Não", 1),        
("Dipirona", 150, 10.00, "2025-03-15", "Sim", 3),        
("Sabonete", 79, 2.50, "2023-01-13", "Não", 2),        
("Topiramato", 0, 150.00, "2026-02-05", "Sim", 5),        
("Batom", 40, 18.00, "2023-09-14", "Não", 1),        
("Óleo Rícino", 0, 15.00, "2024-04-30", "Não", 4),        
("Amoxilina", 250, 55.00, "2025-07-20", "Sim", 3),        
("Famotidina", 0, 90.00, "2023-05-21", "Sim", 5);

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 50.00;

SELECT * FROM tb_produtos WHERE preco BETWEEN 5.00 AND 60.00;

SELECT * FROM tb_produtos WHERE nome LIKE "%c%";

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id;

SELECT * FROM tb_produtos INNER JOIN tb_categorias
ON tb_categorias.id = tb_produtos.categoria_id
WHERE tb_categorias.id = 1;