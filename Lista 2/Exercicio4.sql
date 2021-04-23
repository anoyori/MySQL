create database db_cidade_das_carnes2;

use db_cidade_das_carnes2;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
ativo boolean not null,
primary key (id)
);

insert tb_categoria (descricao, ativo) values ("Bovino",true);
insert tb_categoria (descricao, ativo) values ("Suino",true);
insert tb_categoria (descricao, ativo) values ("Aves",true);
insert tb_categoria (descricao, ativo) values ("Embutidos",true);
insert tb_categoria (descricao, ativo) values ("Outros",true);

select * from tb_categoria;

create table tb_produtos (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal not null,
qtProduto int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Picanha",20.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("coxa de frango",20.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Bacon",30.00,30,2);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("hamburguer",60.00,30,5);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Cupim",20.00,30,1);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Peito de frango",25.00,30,3);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Salame",18.00,30,4);
insert tb_produtos (nome, preco, qtProduto, categoria_id) values ("Linguiça",50.00,30,4);

select * from tb_produtos;

-- Produtos com o valor maior do que 50 reais.
select * from tb_produtos where preco > 50;

-- Produtos com valor entre 3 e 60 reais.
select * from tb_produtos where preco between 3.00 and 60.00;

-- Produtos com a letra C
select * from tb_produtos where nome Like "C%";

-- Inner join entre  tabela categoria e produto
select nome, preco, qtProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria
 from tb_produtos 
 inner join tb_categoria 
 on  tb_categoria.id = tb_produtos.categoria_id;
 
 -- Produtos de uma categoria da categoria bovino
select nome, preco, qtProduto, tb_categoria.descricao as descricao_da_categoria ,tb_categoria.ativo as estado_da_categoria
 from tb_produtos 
 inner join tb_categoria 
 on  tb_categoria.id = tb_produtos.categoria_id 
 where tb_categoria.descricao = "bovino";