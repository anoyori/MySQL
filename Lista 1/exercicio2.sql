-- criando banco de dados
create database db_ecommerce;

-- acessando banco de ecommerce
use db_ecommerce;

-- criando tabela
create table tb_produtos(
	id bigint auto_increment,
    marca varchar(255) not null,
    tipo varchar(255) not null,
    preco decimal (10,2) not null,
    estoque bigint not null,
    disponivel boolean,
    primary key(id)
);

-- populando a tabela com até 8 dados;
insert into tb_produtos (marca, tipo, preco, estoque, disponivel) values ("LG", "Monitor", 799.99, 20, true);
insert into tb_produtos (marca, tipo, preco, estoque, disponivel) values ("Samsung", "Monitor", 450.99, 2, true);
insert into tb_produtos (marca, tipo, preco, estoque, disponivel) values ("AOC", "Monitor", 520.50, 10, true);
insert into tb_produtos (marca, tipo, preco, estoque, disponivel) values ("Dell", "Monitor", 999.99, 5, true);
insert into tb_produtos (marca, tipo, preco, estoque, disponivel) values ("Acer", "Monitor", 420.00, 7, true);
insert into tb_produtos (marca, tipo, preco, estoque, disponivel) values ("LG", "Monitor", 1200.00, 30, true);
insert into tb_produtos (marca, tipo, preco, estoque, disponivel) values ("Samsung", "Monitor", 899.00, 1, true);
insert into tb_produtos (marca, tipo, preco, estoque, disponivel) values ("AOC", "Monitor", 499.99, 6, true);

alter table tb_produtos modify column preco decimal(10,2);

select * from tb_produtos;
select * from tb_produtos where preco > 500;
select * from tb_produtos where preco < 500;

update tb_produtos set preco = 455.00 where id = 1;


