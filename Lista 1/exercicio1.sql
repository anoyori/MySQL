-- Exercicio 1
-- criando banco de dados
create database db_RH;

-- acessando o banco de dados RH
use db_rh;

-- criando tabela
create table tb_employee(
	id bigint auto_increment,
    nome varchar(255) not null,
    sobrenome varchar (255) not null,
    salario decimal (10,2) not null,
    ativo boolean ,
    primary key (id)
);

-- adicionando mais um atributo
alter table tb_employee add idade bigint;

-- populando tabela com 5 dados
insert into tb_employee (nome, sobrenome, salario, ativo, idade) values ("Maria", "Silva", 2300.00, true, 23);
insert into tb_employee (nome, sobrenome, salario, ativo, idade) values ("Joao", "Souza", 1500.00, true, 18);
insert into tb_employee (nome, sobrenome, salario, ativo, idade) values ("Andre", "Carvalho", 3000.00, true, 40);
insert into tb_employee (nome, sobrenome, salario, ativo, idade) values ("Daniele", "Alcantara", 1800.00, true, 21);
insert into tb_employee (nome, sobrenome, salario, ativo, idade) values ("Amanda", "Noyori", 2700.00, true, 28);

select * from tb_employee;

-- funcionários com o salário maior do que 2000
select * from tb_employee where salario > 2000;

-- funcionários com o salário menor do que 2000
select * from tb_employee where salario < 2000;

-- atualizando dados
update tb_employee set salario = 2800.00 where id = 5;