 USE db_recursoshumanos;
 
 CREATE TABLE tb_funcionarios(
 id bigint AUTO_INCREMENT,
 nome varchar(255) NOT NULL,
 setor varchar(255) NOT NULL,
 salario decimal(7,2) NOT NULL,
 data_adimissao date,
 PRIMARY KEY (id)
 );
 
INSERT INTO tb_funcionarios(nome, setor, salario, data_adimissao)
VALUE ("rodrigo", "logistica", 2100.00, "2021-04-05");

INSERT INTO tb_funcionarios(nome, setor, salario, data_adimissao)
VALUE ("luciana", "financeiro", 2700.00, "2020-06-15");

INSERT INTO tb_funcionarios(nome, setor, salario, data_adimissao)
VALUE ("daniela", "recepcao", 1500.00, "2022-02-20");

INSERT INTO tb_funcionarios(nome, setor, salario, data_adimissao)
VALUE ("bruno", "telemarketing", 1300.00, "2021-11-08");

INSERT INTO tb_funcionarios(nome, setor, salario, data_adimissao)
VALUE ("fabiana", "administracao", 1900.00, "2019-05-17");

SELECT * FROM tb_funcionarios;

SELECT * FROM tb_funcionarios WHERE salario > 2000.00;

SELECT * FROM tb_funcionarios WHERE salario < 2000.00;

UPDATE tb_funcionarios SET salario = 1350.00 WHERE id = 4;
 