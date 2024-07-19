-- Consultas SQL avançadas --

uSE db_quitanda;
-- consulta específica ordenada asc de cima pra baixo desc de baixo pra cima (eu acho)
seLECT * FrOM Tb_produtos orDER By Nome_produto asC;

-- consulta específica em intervalos (de um determinado ponto a outro) 
SELECT * FROM TB_produtos WHERE PReco BETWEEN 3.00 AND 8.25;
-- procura algo especifico com o que vc colocar entre aspas e antes de %, por exemplo todos os produtos com a letra u, se coloca %no começo, ele presquisa as letras do final do registro
-- like é especifico pra busca de caractere
selecT * FRoM TB_Produtos where NOME_produto like "U%";
-- coloca o mouse na frente do q executar, se no final do ENGINE estiver ai_ci significa sensivel para acento, ele mapeia a estrutura
show CREAtE TABLe TB_Produtos;

-- Associação entre tabelas

create table tb_categorias(
id bigint auto_increment,
descricao varchar(255) not null,
primary key (id)
);

select * from tb_categorias;
select * from tb_produtos;

insert into tb_categorias (descricao) values ("Temperos"),("Ovos"),("Outros");

-- Modificando a estrutura da tabela - Criando o relacionamento

alter table tb_produtos add categoriaid bigint;

alter table tb_produtos add constraint fk_produtos_categorias foreign key (categoriaid) references tb_categorias (id);
INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Batata doce", 2000, "2022-03-09", 10.00, 3);

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Alface", 300, "2022-03-10", 7.00, 2);

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Cebola", 1020, "2022-03-08", 5.00, 3);

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES("Ovo Branco", 1000, "2022-03-07", 15.00, 5);

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES("Agrião", 1500, "2022-03-06", 3.00, 2);

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES("Cenoura", 1800, "2022-03-09", 3.50, 3);

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Pimenta", 1100, "2022-03-15", 10.00, 4);

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Alecrim", 130, "2022-03-10", 5.00, 4);

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Manga", 200, "2022-03-07", 5.49, 1);

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Couve", 100, "2022-03-12", 1.50, 2);

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES("Rabanete", 1200, "2022-03-15", 13.00, 3);

INSERT INTO tb_produtos (nome_produto, quantidade, datavalidade, preco, categoriaid)
VALUES ("Grapefruit", 3000, "2022-03-13", 50.00, 1);


-- Associações entre tabelas -- 

select nome_produto, quantidade, preco, tb_categorias.descricao from tb_produtos
inner join tb_categorias on tb_categorias.id = tb_produtos.categoriaid;

select nome_produto, quantidade, preco, tb_categorias.descricao from tb_produtos
LEFT JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoriaid;

select nome_produto, quantidade, preco, tb_categorias.descricao from tb_produtos
LEFT JOIN tb_categorias ON tb_categorias.id = tb_produtos.categoriaid;

