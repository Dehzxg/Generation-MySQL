create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint auto_increment,
descricao varchar (255),
duracao varchar (255),
instrutor varchar (255),
certificado boolean,
primary key (id)
);

insert into tb_categoria (descricao, duracao, instrutor, certificado) values ("Curso Java","56 horas","Leandro",true);
insert into tb_categoria (descricao, duracao, instrutor, certificado) values ("FullStack Java Jr.","3 meses","Jorge",true);
insert into tb_categoria (descricao, duracao, instrutor, certificado) values ("JavaScript","16 horas","Lucas",false);
insert into tb_categoria (descricao, duracao, instrutor, certificado) values ("ReactJS","23 horas","Henrique",true);

select * from tb_categoria;

create table tb_produto(
id bigint auto_increment,
nome varchar (255),
preco decimal (8,2),
dtinicio date,
categoria_id bigint,
primary key(id),
foreign key (categoria_id) references tb_categoria(id)
);

insert into tb_produto(nome, preco, dtinicio, categoria_id) values ("Jonathan",61,"2021-07-28",1);
insert into tb_produto(nome, preco, dtinicio, categoria_id) values ("James",0,"2021-10-26",3);
insert into tb_produto(nome, preco, dtinicio, categoria_id) values ("Yuri",80.00,"2021-04-13",4);
insert into tb_produto(nome, preco, dtinicio, categoria_id) values ("Rafael",49.99,"2021-12-03",2);
insert into tb_produto(nome, preco, dtinicio, categoria_id) values ("Michelly",2.00,"2021-01-10",1);
insert into tb_produto(nome, preco, dtinicio, categoria_id) values ("Micael",3.00,"2021-02-12",2);
insert into tb_produto(nome, preco, dtinicio, categoria_id) values ("Adriana",400.00,"2021-08-30",4);
insert into tb_produto(nome, preco, dtinicio, categoria_id) values ("Isaias",250.00,"2021-08-12",1);

update tb_categoria set certificado = true where id = 3;

select * from tb_categoria;

select * from tb_produto;

select * from tb_produto where preco > 50;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%J%";

select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id; 

select * from tb_produto inner join tb_categoria
on tb_produto.categoria_id = tb_categoria.id
where tb_categoria.id = 1;