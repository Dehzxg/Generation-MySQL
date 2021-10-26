create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(255),
tipo varchar (255),
refrigerante boolean not null,
primary key(id)
);

insert into tb_categoria(categoria, tipo, refrigerante) values ("Pizza", "Doce",true);
insert into tb_categoria(categoria, tipo, refrigerante) values ("Esfiha", "Doce",true);
insert into tb_categoria(categoria, tipo, refrigerante) values ("Pizza", "Salgada",false);
insert into tb_categoria(categoria, tipo, refrigerante) values ("Pizza", "Salgada",true);
insert into tb_categoria(categoria, tipo, refrigerante) values ("Esfiha", "Salgada",false);

create table tb_pizza(
id bigint auto_increment,
sabor varchar(255),
tamanho varchar(255),
tipoborda varchar(255),
valor decimal(8,2),
categoria_id bigint,
primary key  (id),
foreign key (categoria_id) references tb_categoria (id)
);

select * from tb_pizza;

insert into tb_pizza (sabor, tamanho, tipoborda, valor, categoria_id) values ("Calabresa", "Grande","Recheada", 27, 1);
insert into tb_pizza (sabor, tamanho, tipoborda, valor, categoria_id) values ("Mussarela", "Grande","Sem recheio", 22, 2);
insert into tb_pizza (sabor, tamanho, tipoborda, valor, categoria_id) values ("Chocolate", "Media","sem recheio", 38, 5);
insert into tb_pizza (sabor, tamanho, tipoborda, valor, categoria_id) values ("Frango c/ Catupiry", "Pequena","Recheada", 56, 1);
insert into tb_pizza (sabor, tamanho, tipoborda, valor, categoria_id) values ("Bacon", "Media","Recheada", 50, 4);
insert into tb_pizza (sabor, tamanho, tipoborda, valor, categoria_id) values ("Brocolis c Bacon", "Grande","Recheada", 60, 2);
insert into tb_pizza (sabor, tamanho, tipoborda, valor, categoria_id) values ("Romeu e Julieta", "Media","sem recheio", 39, 1);
insert into tb_pizza (sabor, tamanho, tipoborda, valor, categoria_id) values ("Portuguesa", "Pequena","Recheada", 25, 3);

select * from tb_pizza;

select * from tb_pizza where valor > 45;

select * from tb_pizza where valor between 29 and 60;

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.id;

select tb_categoria.categoria, tb_pizza.tamanho, tb_pizza.sabor, 
tb_pizza.tipoborda,tb_pizza.valor from tb_pizza inner join tb_categoria 
on tb_categoria.id = tb_pizza.categoria_id;