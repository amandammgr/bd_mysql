-- Create database --DDL

CREATE DATABASE db_quitanda;
use db_quitanda;
-- drop database e o nome do db serve para apagar ele

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
quantidade INT,
datavalidade DATE,
preco DECIMAL  NOT NULL,
PRIMARY KEY(id)
);

describe tb_produtos;

INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("tomate",100, "2023-12-15", 8.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("maçã",20, "2023-12-15", 5.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("laranja",50, "2023-12-15", 10.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("banana",200, "2023-12-15", 12.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("uva",1200, "2023-12-15", 30.00);
INSERT INTO tb_produtos(nome, quantidade, datavalidade, preco) 
values ("pêra",500, "2023-12-15", 2.99);




select * from tb_produtos;

select nome, preco from tb_produtos;

select * from tb_produtos where id in (2,4);

-- selecionando dados com os operadores relacionais

select * from tb_produtos where preco < 5.00;

-- selecionando dados com operadores lógicos

select * from tb_produtos where preco > 5 and quantidade < 100;



-- --------------------------------------
describe tb_produtos;
select * from tb_produtos;
-- criou uma nova linha na tabela
alter table tb_produtos add descricao varchar(255);
-- apagou a linha
alter table tb_produtos drop  descricao;

alter table tb_produtos change  nomeproduto nome_produto varchar(255);
-- ----------------------------------
SET SQL_SAFE_UPDATES = 1;

-- alterando dados

update tb_produtos set preco = 5.99 where id = 1;

delete from tb_produtos where id = 8;
-- delete from tb_produtos where id in (8,1); apaga mais de um de uma vez

-- ---------------------------------

alter table tb_produtos modify preco decimal(6,2);