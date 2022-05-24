CREATE DATABASE db_pizzaria_legal;

USE db_pizzaria_legal;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT,
descricao varchar(255) NOT NULL,
promocao varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias (descricao, promocao)
VALUES ("Pizzas Salgadas", "Em promoção"),
("Pizzas Doces", "Não"),
("Pizzas Veganas", "Em promoção"),
("Pizzas Vegetarianas", "Não"),
("Outros", "Não");

SELECT * FROM tb_categorias;

CREATE TABLE tb_pizzas(
id bigint AUTO_INCREMENT,
sabores varchar(255) NOT NULL,
recheio_borda varchar(255) NOT NULL,
preco decimal (4,2) NOT NULL,
data_validade date NOT NULL,
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_pizzas (sabores, recheio_borda, preco, data_validade, categoria_id)
VALUES ("Mussarela", "Borda Catupiry", 30.00, "2022-05-26", 4),
 ("Escarola", "Sem Borda", 25.00, "2022-05-26", 3),
 ("Frango c/ Catupiry", "Borda Catupiry", 55.00, "2022-05-26", 1),
  ("Chocolate", "Borda Chocolate", 46.00, "2022-05-26", 2),
   ("Beijinho", "Sem Borda", 30.00, "2022-05-26", 2),
    ("Atum", "Sem Borda", 25.00, "2022-05-26", 1),
     ("Palmito e Milho", "Sem Borda", 52.00, "2022-05-26", 3),
      ("Brócoles c/ queijo", "Borda Catupiry", 35.00, "2022-05-26", 4);

SELECT * FROM tb_pizzas;

SELECT * FROM tb_pizzas WHERE preco > 45.00;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50.00 AND 100.00;

SELECT * FROM tb_pizzas WHERE sabores LIKE "%M%";

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id;

SELECT * FROM tb_pizzas INNER JOIN tb_categorias
ON tb_categorias.id = tb_pizzas.categoria_id
WHERE tb_categorias.id = 2;

      