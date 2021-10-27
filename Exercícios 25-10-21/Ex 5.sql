create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint auto_increment,
categoriamovel varchar(255),
materialmovel varchar(255),
uso varchar(255),
primary key (id)
);

select * from tb_categoria;

insert into tb_categoria (categoriamovel,materialmovel,uso) values ("Decoração","Madeira","Banheiro");
insert into tb_categoria (categoriamovel,materialmovel,uso) values ("Construção","Cerâmica","Banheiro");
insert into tb_categoria (categoriamovel,materialmovel,uso) values ("Decoração","Ferro","Sala");
insert into tb_categoria (categoriamovel,materialmovel,uso) values ("Eletroméstico","Vidro","Cozinha");
insert into tb_categoria (categoriamovel,materialmovel,uso) values ("Construção","Acrilico","Garagem");

create table tb_produto(
id bigint auto_increment,
movel varchar(255),
nome varchar(255),
preco varchar(255),
qtproduto int,
categoria_id bigint,
primary key (id),
foreign key (categoria_id) references tb_categoria(id)
);

select * from tb_produto;

insert into tb_produto (movel, nome, preco, qtproduto, categoria_id)
 values ("Suporte","Suporte Ita",25.00,26,1);
 insert into tb_produto (movel, nome, preco, qtproduto, categoria_id)
 values ("Vaso","Vaso Royal Leroy ",850.00,15,2);
 insert into tb_produto (movel, nome, preco, qtproduto, categoria_id)
 values ("Quadro","AbstractLines",3599.99,2,3);
 insert into tb_produto (movel, nome, preco, qtproduto, categoria_id)
 values ("COOCKTOP","FlushMagnun",6000.00,10,4);
 insert into tb_produto (movel, nome, preco, qtproduto, categoria_id)
 values ("Caixa de Energia","UltraLight",300,50,5);
 insert into tb_produto (movel, nome, preco, qtproduto, categoria_id)
 values ("Lampada","Fulllight",2.00,150,4);
 insert into tb_produto (movel, nome, preco, qtproduto, categoria_id)
 values ("Piso","Piso Crown",33.99,250,2);
 insert into tb_produto (movel, nome, preco, qtproduto, categoria_id)
 values ("Mesa de canto","TableboxWHT",45,90,12,1);
 
 select * from tb_produto where preco > 50;
 
 select * from tb_produto where preco between 3 and 60;
 
 select * from tb_produto where nome like "%C%";
 
 select * from tb_produto inner join tb_categoria on tb_produto.categoria_id = tb_categoria.id; 
 
 select * from tb_produto inner join tb_categoria 
 on tb_produto.categoria_id = tb_categoria.id where tb_categoria.id = 4;