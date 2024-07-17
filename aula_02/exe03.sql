CREATE DATABASE db_escola;
use db_escola;

CREATE TABLE tb_informacoes(
id BIGINT AUTO_INCREMENT,
nome VARCHAR(255) NOT NULL,
idade INT,
sala VARCHAR(255) NOT NULL,
nota DECIMAL(4,2)  NOT NULL,
PRIMARY KEY(id)
);

describe tb_informacoes;

INSERT INTO tb_informacoes(nome, idade, sala, nota) 
values ("Alice", 5, "Sala da Borboleta", 10);
INSERT INTO tb_informacoes(nome, idade, sala, nota) 
values ("Antonio", 3, "Sala da Borboleta", 8);
INSERT INTO tb_informacoes(nome, idade, sala, nota) 
values ("Gabriela", 2, "Sala da Borboleta", 8);
INSERT INTO tb_informacoes(nome, idade, sala, nota)  
values ("Rodrigo", 4, "Sala da Coruja", 5);
INSERT INTO tb_informacoes(nome, idade, sala, nota) 
values ("Ramon", 4, "Sala da Coruja", 9);
INSERT INTO tb_informacoes(nome, idade, sala, nota) 
values ("Maria", 3, "Sala da Coruja", 10);
INSERT INTO tb_informacoes(nome, idade, sala, nota) 
values ("Joana", 3, "Sala da Coruja", 6);
INSERT INTO tb_informacoes(nome, idade, sala, nota) 
values ("Enzo", 5, "Sala da Coruja", 4);

-- visualizando a tabela
select * from tb_informacoes;

-- visualizando nota > 7
select * from tb_informacoes where nota > 7;

-- visualizando nota < 7
select * from tb_informacoes where nota < 7;

-- atualizando a idade da Joana de 3 para 2
update tb_informacoes set idade = 2 where id = 7;

-- atualizando a sala do Ramon para Sala da Borboleta
update tb_informacoes set sala = "Sala da Borboleta" where id = 5;