create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
	id bigint auto_increment,
    categoria varchar(255) not null,
    multiplayer boolean not null,
    preco decimal not null,
    primary key (id)
);

alter table tb_classe modify column preco decimal (12,2) not null;

insert into tb_classe (categoria, multiplayer, preco) values ("RPG", true, 45.00);
insert into tb_classe (categoria, multiplayer, preco) values ("Futebol", true, 135.00);
insert into tb_classe (categoria, multiplayer, preco) values ("Luta", true, 89.99);
insert into tb_classe (categoria, multiplayer, preco) values ("Tiro", true, 75.00);
insert into tb_classe (categoria, multiplayer, preco) values ("Aventura", true, 55.00);

select * from tb_classe;

create table tb_personagem(
	id bigint auto_increment,
    nome varchar(100) not null,
    pontuação bigint not null,
    ataque bigint not null,
    defesa bigint not null,
    vidas bigint not null,
    classeID bigint,
    primary key(id),
    foreign key (classeID) references tb_classe(id)
);

alter table tb_personagem drop column pontuação;
alter table tb_personagem add column pontuacao bigint (100) not null;

insert into tb_personagem (nome, pontuacao, ataque, defesa, vidas, classeID) values ("Mago", 3000, 2000, 1000, 3, 1);
insert into tb_personagem (nome, pontuacao, ataque, defesa, vidas, classeID) values ("Coutinho", 2000, 1500, 1000, 1, 2);
insert into tb_personagem (nome, pontuacao, ataque, defesa, vidas, classeID) values ("Ryu", 1000, 3000, 1500, 3, 3);
insert into tb_personagem (nome, pontuacao, ataque, defesa, vidas, classeID) values ("Sniper", 1000, 1000, 3000, 3, 4);
insert into tb_personagem (nome, pontuacao, ataque, defesa, vidas, classeID) values ("Mario", 3000, 1200, 1000, 3, 5);
insert into tb_personagem (nome, pontuacao, ataque, defesa, vidas, classeID) values ("Bowser", 5000, 4000, 3000, 3, 5);
insert into tb_personagem (nome, pontuacao, ataque, defesa, vidas, classeID) values ("Lewandowski", 4000, 4000, 1000, 1, 2);
insert into tb_personagem (nome, pontuacao, ataque, defesa, vidas, classeID) values ("Chun-Li", 1000, 2500, 1000, 3, 3);

select * from tb_personagem;

-- mostrar personagens com o poder de ataque maior do que 2000.
select * from tb_personagem where ataque > 2000;

-- mostrar personagem com poder de defesa entre 1000 e 2000.
select*
from tb_personagem
where defesa between 1000 and 2000;

-- mostrar personagens com a letra C
select * 
from tb_personagem 
where nome like "C%";

-- junção de tabelas
select nome, pontuacao, ataque, defesa, vidas, tb_classe.categoria, tb_classe.multiplayer, tb_classe.preco
from tb_personagem
inner join tb_classe on tb_classe.id = tb_personagem.classeID;

-- mostrar personagens da categoria aventura
select nome, pontuacao, ataque, defesa, vidas, tb_classe.categoria, tb_classe.multiplayer, tb_classe.preco 
from tb_personagem 
left join tb_classe on tb_classe.id = tb_personagem.classeID
where tb_classe.categoria = "Aventura";