-- Exercicio 3
-- criando banco de dados
create database db_escola;

-- acessando banco de dados
use db_escola;

-- criando tabela
create table tb_alune(
	id bigint auto_increment,
    nome varchar(255) not null,
    sobrenome varchar(255) not null,
    matricula bigint not null,
    idade bigint not null,
    media decimal (10,2) not null,
    primary key (id)
);

-- populando tabela
insert into tb_alune (nome, sobrenome, matricula, idade, media) values ("Amanda", "Noyori", 0001, 28, 8.9);
insert into tb_alune (nome, sobrenome, matricula, idade, media) values ("Bruna", "Bonifacio", 124, 25, 7.6);
insert into tb_alune (nome, sobrenome, matricula, idade, media) values ("Livia", "Lima", 125, 28, 9.5);
insert into tb_alune (nome, sobrenome, matricula, idade, media) values ("Joao", "Silva", 126, 27, 6.5);
insert into tb_alune (nome, sobrenome, matricula, idade, media) values ("Andre", "Carvalho", 127, 25, 6.8);
insert into tb_alune (nome, sobrenome, matricula, idade, media) values ("Rodrigo", "Santos", 128, 29, 7.2);
insert into tb_alune (nome, sobrenome, matricula, idade, media) values ("Maria", "Julia", 129, 30, 10.0);
insert into tb_alune (nome, sobrenome, matricula, idade, media) values ("Paula", "Torres", 130, 26, 5.5);

-- mostrar / filtrar dados da tabela
select * from tb_alune;
select * from tb_alune where media > 7;
select * from tb_alune where media < 7;

-- atualizando um dado
update tb_alune set matricula = 123 where id = 1;





