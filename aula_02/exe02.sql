CREATE DATABASE db_e_commerce;
use db_e_commerce;

CREATE TABLE tb_produtos(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
estoque INT,
preco DECIMAL(6,2)  NOT NULL,
PRIMARY KEY(id)
);

describe tb_produtos;

INSERT INTO tb_produtos(nome, descricao, estoque, preco) 
values ("TV","TV de 50 polegadas", 5, 2300);
INSERT INTO tb_produtos(nome, descricao, estoque, preco) 
values ("Babyliss","Modelador de cachos", 13, 260);
INSERT INTO tb_produtos(nome, descricao, estoque, preco) 
values ("Geladeira","Geladeira Eletrolux 2 portas", 2, 6200);
INSERT INTO tb_produtos(nome, descricao, estoque, preco) 
values ("Relogio","Relogio digital", 19, 330);
INSERT INTO tb_produtos(nome, descricao, estoque, preco) 
values ("Air Fryer","Fritadeira sem oleo", 10, 680);

-- visualizando a tabela
select * from tb_produtos;

-- visualizando preco > 500
select * from tb_produtos where preco > 500;

-- visualizando preco < 500
select * from tb_produtos where preco < 500;

-- atualizando estoque da geladeira de 2 para 4
update tb_produtos set estoque = 4 where id = 3;

-- atualizando a descricao da TV
update tb_produtos set descricao = "Smart TV de 50 polegadas" where id = 1;