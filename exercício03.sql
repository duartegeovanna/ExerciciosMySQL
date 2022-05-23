CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_alunos(
id bigint AUTO_INCREMENT,
nome varchar(255) NOT NULL,
serie varchar(255) NOT NULL,
materia varchar(255) NOT NULL,
nota decimal (3,1) NOT NULL, 
PRIMARY KEY (id)
);

INSERT INTO tb_alunos(nome, serie, materia, nota)
VALUE ("Samuel", "8° série", "português", 8.5);

INSERT INTO tb_alunos(nome, serie, materia, nota)
VALUE ("Adriana", "8° série", "português", 6.5);

INSERT INTO tb_alunos(nome, serie, materia, nota)
VALUE ("Henry", "8° série", "português", 5.5);

INSERT INTO tb_alunos(nome, serie, materia, nota)
VALUE ("Julia", "8° série", "português", 9.0);

INSERT INTO tb_alunos(nome, serie, materia, nota)
VALUE ("Daniel", "8° série", "português", 7.5);

INSERT INTO tb_alunos(nome, serie, materia, nota)
VALUE ("Gustavo", "8° série", "português", 6.0);

INSERT INTO tb_alunos(nome, serie, materia, nota)
VALUE ("Maria", "8° série", "português", 10.0);

INSERT INTO tb_alunos(nome, serie, materia, nota)
VALUE ("João", "8° série", "português", 4.5);

SELECT * FROM tb_alunos;

SELECT * FROM tb_alunos WHERE nota > 7.0;

SELECT * FROM tb_alunos WHERE nota < 7.0;

UPDATE tb_alunos SET nota = 5.0 WHERE id = 3;

