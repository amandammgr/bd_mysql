CREATE DATABASE db_rh;
use db_rh;

CREATE TABLE tb_informacoes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
cargo VARCHAR(255) NOT NULL,
datacontrato DATE,
salario DECIMAL(6,2)  NOT NULL,
PRIMARY KEY(id)
);

describe tb_informacoes;

INSERT INTO tb_informacoes(nome, cargo, datacontrato, salario) 
values ("Mara","CEO", "2020-04-30", 5000);
INSERT INTO tb_informacoes(nome, cargo, datacontrato, salario) 
values ("Laura","Secretaria", "2022-12-16", 1900);
INSERT INTO tb_informacoes(nome, cargo, datacontrato, salario)
values ("Rafael","Atendente", "2021-01-13", 2500);
INSERT INTO tb_informacoes(nome, cargo, datacontrato, salario) 
values ("Joaquim","Segurança", "2020-07-25", 2000);
INSERT INTO tb_informacoes(nome, cargo, datacontrato, salario)
values ("Joana","Gerente", "2020-08-30", 3500);

-- visualizando 
select * from tb_informacoes;

-- salario > 2000
select * from tb_informacoes where salario > 2000;

-- salario < 2000
select * from tb_informacoes where salario < 2000;

-- atualizando salario do Seguranca de 2000 para 2200
update tb_informacoes set salario = 2200 where id = 4;

-- atualizando o cargo da Secretaria para Estagiaria
update tb_informacoes set cargo = "Estagiaria" where id = 2;