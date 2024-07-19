CREATE DATABASE db_pizzaria_legal;
use db_pizzaria_legal;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
tamanho VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

describe tb_categorias;

-- inserindo os 5 registros
INSERT INTO tb_categorias(tipo, tamanho) 
values ("salgada","grande");
INSERT INTO tb_categorias(tipo, tamanho) 
values ("salgada","pequena");
INSERT INTO tb_categorias(tipo, tamanho) 
values ("doce","media");
INSERT INTO tb_categorias(tipo, tamanho)  
values ("doce","grande");
INSERT INTO tb_categorias(tipo, tamanho) 
values ("doce","pequena");

-- visualizando a tabela
select * from tb_categorias;

-- criando a segunda tabela
create table tb_pizzas(
id bigint auto_increment,
sabor varchar(255) not null,
descricao varchar(255) not null,
quantidade int,
preco decimal(4,2)  not null,
primary key (id),
categoria_id BIGINT, 
CONSTRAINT fk_categoria FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);


describe tb_pizzas;

-- inserindo os 8 registros
INSERT INTO tb_pizzas(sabor, descricao, quantidade, preco) 
values ("mussarela","molho, mussarela e azeitona", 1, 40);
INSERT INTO tb_pizzas(sabor, descricao, quantidade, preco) 
values ("calabresa","molho, mussarela, calabresa e azeitona", 3, 45);
INSERT INTO tb_pizzas(sabor, descricao, quantidade, preco) 
values ("frango","molho, mussarela, frango, milho e azeitona", 4, 50);
INSERT INTO tb_pizzas(sabor, descricao, quantidade, preco) 
values ("atum","molho, mussarela, atum e cebola", 1, 45);
INSERT INTO tb_pizzas(sabor, descricao, quantidade, preco) 
values ("brigadeiro","brigadeiro e granulado de chocolate", 1, 60);
INSERT INTO tb_pizzas(sabor, descricao, quantidade, preco) 
values ("nutella com morango","nutella com morangos cortados", 2, 85);
INSERT INTO tb_pizzas(sabor, descricao, quantidade, preco) 
values ("pistache","creme de pistache com pistache triturado", 2, 90);
INSERT INTO tb_pizzas(sabor, descricao, quantidade, preco) 
values ("brocolis com bacon","molho, mussarela, brocolis, bacon e azeitona", 1, 50);

-- visualizando a tabela
select * from tb_pizzas;

-- Atualizando a categoria_id --

UPDATE tb_pizzas SET categoria_id = 1 WHERE id = 1;
UPDATE tb_pizzas SET categoria_id = 1 WHERE id = 2;
UPDATE tb_pizzas SET categoria_id = 1 WHERE id = 3;
UPDATE tb_pizzas SET categoria_id = 2 WHERE id = 4;
UPDATE tb_pizzas SET categoria_id = 5 WHERE id = 5;
UPDATE tb_pizzas SET categoria_id = 4 WHERE id = 6;
UPDATE tb_pizzas SET categoria_id = 3 WHERE id = 7;
UPDATE tb_pizzas SET categoria_id = 2 WHERE id = 8;

-- pizzas > 45,00
select * from tb_pizzas where preco > 45;

-- pizzas entre 50,00 e 100,00
select * from tb_pizzas WHERE preco between 50 AND 100;

-- pizzas com M no nome
select * from tb_pizzas where sabor like "M%";

-- unindo os dados da tabela
SELECT sabor, descricao, quantidade, preco, tb_categorias.tipo,tamanho
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_categorias.id = tb_pizzas.categoria_id;

-- visualizando somente a categoria de pizzas doces
SELECT sabor, descricao, quantidade, preco, tb_categorias.tipo,tamanho
FROM tb_pizzas INNER JOIN tb_categorias 
ON tb_categorias.id = tb_pizzas.categoria_id
where tb_categorias.tipo = "doce";
