CREATE DATABASE db_cidade_das_carnes;

USE db_cidade_das_carnes;

CREATE TABLE tb_categorias(
id bigint AUTO_INCREMENT NOT NULL,
classificacao varchar(255) NOT NULL,
distribuidora varchar(255) NOT NULL,
PRIMARY KEY (id)
);

INSERT INTO tb_categorias(classificacao, distribuidora)
VALUES ("Carne bovina", "Fazenda do Juca"),
	   ("Carne de frango", "Granja Dona Dina"),
       ("Carne suína", "Fazenda Goia"),
       ("Peixes", "Pescaria Mar Azul"),
       ("Outros", "Fazenda Dois Irmãos");
       
       SELECT * FROM tb_categorias;
       
CREATE TABLE tb_produtos(
id bigint AUTO_INCREMENT NOT NULL,
nome varchar(255) NOT NULL,
preco_kg decimal(5,2) NOT NULL,
dtvalidade date,
estoque varchar(255) NOT NULL,
em_promocao varchar(255),
categoria_id bigint,
PRIMARY KEY (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

INSERT INTO tb_produtos(nome, preco_kg, dtvalidade, estoque, em_promocao, categoria_id)
VALUES ("Carne Moída", 20.00, "2022-07-16", "Disponível", "Não", 1),
       ("Filé de frango", 15.00, "2022-06-05", "Disponível", "Sim", 2),
       ("Salmão", 70.00, "2022-07-30", "Disponível", "Não", 4),
       ("Bisteca Suína", 60.00, "2022-08-10", "Disponível", "Não", 3),
       ("Alcatra", 110.00, "2022-08-21", "Disponível", "Não", 1),
       ("Carne de Bode", 90.00, "2022-06-24", "Indisponível", "Não", 5),
       ("Frango inteiro", 35.50, "2022-08-06", "Disponível", "Sim", 2),
       ("Atum", 55.00, "2022-09-18", "Disponível", "Sim", 4);
       
       SELECT * FROM tb_produtos;
       
       SELECT * FROM tb_produtos WHERE preco_kg > 50.00;
       
       SELECT * FROM tb_produtos WHERE preco_kg BETWEEN 50.00 AND 150.00;
       
       SELECT * FROM tb_produtos WHERE nome LIKE "%C%";
       
       SELECT * FROM tb_produtos INNER JOIN tb_categorias
       ON tb_produtos.categoria_id = tb_categorias.id;
       
       SELECT * FROM tb_produtos INNER JOIN tb_categorias
       ON tb_produtos.categoria_id = tb_categorias.id
       WHERE tb_categorias.id = 2;

