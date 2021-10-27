create database db_cidade_das_frutas;

use db_cidade_das_frutas;

create table tb_categoria(
id bigint auto_increment,
descricao varchar (255),
primary key (id) 
);

select * from tb_categoria;

insert into tb_categoria (descricao) values ("Frutas");
insert into tb_categoria (descricao) values ("Legumes");
insert into tb_categoria (descricao) values ("Verduras");
insert into tb_categoria (descricao) values ("Raízes e Tubérculos");
insert into tb_categoria (descricao) values ("Condimentos");

create table tb_produto(
id bigint auto_increment,
nome varchar(255),
preco decimal(8,2),
qtproduto varchar(255),
categoria_id bigint,
primary key(id),
foreign key(categoria_id) references tb_categoria (id)
);

insert into tb_produto (nome, preco, qtproduto, categoria_id) values ("Banana Nanica", 4.99, "Dúzia",1);
insert into tb_produto (nome, preco, qtproduto, categoria_id) values ("Tomate", 5.99, "Kilo",1);
insert into tb_produto (nome, preco, qtproduto, categoria_id) values ("Couve ", 2.99, "Unidade",3);
insert into tb_produto (nome, preco, qtproduto, categoria_id) values ("Pimenta do Reino", 3.99, "Unidade",5);
insert into tb_produto (nome, preco, qtproduto, categoria_id) values ("Mandioca", 71.00, "Kilo",4);
insert into tb_produto (nome, preco, qtproduto, categoria_id) values ("Banana Nanica", 4.99, "Dúzia",1);
insert into tb_produto (nome, preco, qtproduto, categoria_id) values ("Abobrinha", 1.99, "Kilo",2);
insert into tb_produto (nome, preco, qtproduto, categoria_id) values ("Laranja", 20.99, "Kilo",1);
insert into tb_produto (nome, preco, qtproduto, categoria_id) values ("Banana Prata", 4.99, "Dúzia",1);


select * from tb_produto;

select * from tb_produto where preco > 60;

select * from tb_produto where preco between 3 and 60;

select * from tb_produto where nome like "%C%";

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id;

select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id
 where tb_categoria.id = 5;

