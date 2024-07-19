CREATE DATABASE db_cidade_dos_vegetais;
use db_cidade_dos_vegetais;

CREATE TABLE tb_categorias(
id BIGINT AUTO_INCREMENT,
tipo VARCHAR(255) NOT NULL,
descricao VARCHAR(255) NOT NULL,
PRIMARY KEY(id)
);

describe tb_categorias;

-- inserindo os 5 registros
INSERT INTO tb_categorias(tipo, descricao) 
values ("Leguminosas","Graos");
INSERT INTO tb_categorias(tipo, descricao) 
values ("Cereais","Sementes ou frutos comestiveis");
INSERT INTO tb_categorias(tipo, descricao)  
values ("Oleaginosas","Sementes com alto teor calorico");
INSERT INTO tb_categorias(tipo, descricao)   
values ("Raizes","Vegetais onde a parte comestível cresce debaixo da terra.");
INSERT INTO tb_categorias(tipo, descricao) 
values ("Tuberculos","Especie de raiz que armazena nutrientes.");

-- visualizando a tabela
select * from tb_categorias;

-- criando a segunda tabela
create table tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
data_validade varchar(255) not null,
quantidade int,
preco decimal(6,2)  not null,
primary key (id),
categoria_id BIGINT, 
CONSTRAINT fk_categoria FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id)
);


describe tb_produtos;

-- inserindo os 8 registros (aumentei o preco apenas para conseguir seguir os valores do exercício)
INSERT INTO tb_produtos(nome, data_validade, quantidade, preco) 
values ("Batata","2024-09-22", 1000, 50);
INSERT INTO tb_produtos(nome, data_validade, quantidade, preco) 
values ("Beterraba","2024-09-22", 1500, 40);
INSERT INTO tb_produtos(nome, data_validade, quantidade, preco) 
values ("Rabanete","2024-09-22", 500, 100);
INSERT INTO tb_produtos(nome, data_validade, quantidade, preco)
values ("Lentilha","2024-09-22", 2000, 120);
INSERT INTO tb_produtos(nome, data_validade, quantidade, preco) 
values ("Arroz","2024-09-22", 1000, 130);
INSERT INTO tb_produtos(nome, data_validade, quantidade, preco) 
values ("Castanha de Caju","2024-09-22", 1300, 150);
INSERT INTO tb_produtos(nome, data_validade, quantidade, preco) 
values ("Ervilha","2024-09-22", 300, 40);
INSERT INTO tb_produtos(nome, data_validade, quantidade, preco) 
values ("Aveia","2024-09-22", 100, 30);

-- visualizando a tabela
select * from tb_produtos;

-- Atualizando a categoria_id --

UPDATE tb_produtos SET categoria_id = 5 WHERE id = 1;
UPDATE tb_produtos SET categoria_id = 4 WHERE id = 2;
UPDATE tb_produtos SET categoria_id = 4 WHERE id = 3;
UPDATE tb_produtos SET categoria_id = 1 WHERE id = 4;
UPDATE tb_produtos SET categoria_id = 2 WHERE id = 5;
UPDATE tb_produtos SET categoria_id = 3 WHERE id = 6;
UPDATE tb_produtos SET categoria_id = 1 WHERE id = 7;
UPDATE tb_produtos SET categoria_id = 2 WHERE id = 8;

-- produtos > 50,00
select * from tb_produtos where preco > 50;

-- produtos entre 50,00 e 150,00
select * from tb_produtos WHERE preco between 50 AND 150;

-- produtos com C no nome
select * from tb_produtos where nome like "C%";

-- unindo os dados da tabela
SELECT nome, data_validade, quantidade, preco, tb_categorias.tipo,descricao
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_categorias.id = tb_produtos.categoria_id;

-- visualizando somente a categoria de cereais
SELECT nome, data_validade, quantidade, preco, tb_categorias.tipo,descricao
FROM tb_produtos INNER JOIN tb_categorias 
ON tb_categorias.id = tb_produtos.categoria_id
where tb_categorias.tipo = "cereais";

