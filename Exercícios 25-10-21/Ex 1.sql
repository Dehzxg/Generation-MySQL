create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
categoria varchar(255) not null,
classificacao_etaria varchar (255) not null,
dtLancamento date,

primary key(id)
);
insert into tb_classe (categoria, classificacao_etaria,dtLancamento) values ("Corrida","Livre","2021-11-08");
insert into tb_classe (categoria, classificacao_etaria,dtLancamento) values ("Luta","18+","2019-04-22");
insert into tb_classe (categoria, classificacao_etaria,dtLancamento) values ("FPS","16","2020-03-10");
insert into tb_classe (categoria, classificacao_etaria,dtLancamento) values ("Esportes","Livre","2021-09-26");
insert into tb_classe (categoria, classificacao_etaria,dtLancamento) values ("Horror","18","2021-05-01");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar (255) not null,
nivel int not null,
moeda decimal(8,2) not null,
ataque bigint not null,
defesa bigint not null,
classe_id bigint,

primary key(id),
foreign key (classe_id) references tb_classe(id)
);

insert into tb_personagem (nome,nivel,moeda,ataque,defesa,classe_id) values ("Heron",19,3444, 245,543,1);
insert into tb_personagem (nome,nivel,moeda,ataque,defesa,classe_id) values ("Kenji",22,6234, 443,333,2);
insert into tb_personagem (nome,nivel,moeda,ataque,defesa,classe_id) values ("Luqsz",92,345423, 2342,2000,3);
insert into tb_personagem (nome,nivel,moeda,ataque,defesa,classe_id) values ("James",73,2445, 1001,234,4);
insert into tb_personagem (nome,nivel,moeda,ataque,defesa,classe_id) values ("Crow",34,22343, 245,180,1);
insert into tb_personagem (nome,nivel,moeda,ataque,defesa,classe_id) values ("Osborn",23,223564, 245,1040,5);
insert into tb_personagem (nome,nivel,moeda,ataque,defesa,classe_id) values ("Melody",65,26544, 690,335,2);
insert into tb_personagem (nome,nivel,moeda,ataque,defesa,classe_id) values ("Tchaik",33,56345, 543,1000,4);

select * from tb_personagem;

select * from tb_personagem order by nome;  

select * from tb_personagem order by nome desc;

select * from tb_personagem where ataque > 2000;

select * from tb_personagem where nome like "%C%";

select * from tb_classe where dtLancamento between "2019-04-22" and "2021-05-01"; 

select count(classe_id) from tb_personagem;

 select tb_personagem.nome, tb_personagem.nivel, tb_classe.classificacao_etaria 
    from tb_personagem inner join tb_classe
    on tb_classe.id = tb_personagem.classe_id;