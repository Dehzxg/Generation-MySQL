create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment, 
receita boolean not null,
tipoproduto varchar (255),
uso varchar(255) not null,

primary key(id)
);

insert into tb_categoria (receita, tipoproduto, uso) values 
(true,"Analgésico","Adulto");
insert into tb_categoria (receita, tipoproduto, uso) values 
(false,"Antibiotico","Adulto");
insert into tb_categoria (receita, tipoproduto, uso) values 
(true,"Analgésico","Adulto");
insert into tb_categoria (receita, tipoproduto, uso) values 
(false,"Anti-Inflamatório","Adulto");
insert into tb_categoria (receita, tipoproduto, uso) values 
(false,"Analgésico","Adulto");

create table tb_produtos(
id bigint auto_increment,
nome varchar(255),
preco decimal(8,2),
qtproduto int,
dtvalidade date,
categoria_id bigint,

primary key(id),
foreign key (categoria_id) references tb_categoria (id)
);

insert into tb_produtos (nome, preco, qtproduto,dtvalidade, categoria_id) values
 ("Ibuprofeno",61,12,"2021-12-08", 1);
insert into tb_produtos (nome, preco, qtproduto,dtvalidade, categoria_id) values 
("Dorflex",22,52, "2022-12-08", 5);
insert into tb_produtos (nome, preco, qtproduto,dtvalidade, categoria_id) values 
("Paracetamol",2,12,"2021-12-08", 3);
insert into tb_produtos (nome, preco, qtproduto,dtvalidade, categoria_id) values 
("Ibuprofeno eno",45,12,"2021-12-08", 3);
insert into tb_produtos (nome, preco, qtproduto,dtvalidade, categoria_id) values 
("Nimesulida",38,12,"2021-12-08", 2);
insert into tb_produtos (nome, preco, qtproduto,dtvalidade, categoria_id) values 
("Dipirona",38,12,"2021-12-08", 1);
insert into tb_produtos (nome, preco, qtproduto,dtvalidade, categoria_id) values 
("Dorflex ",12,12,"2021-12-08", 5);
insert into tb_produtos (nome, preco, qtproduto,dtvalidade, categoria_id) values 
("Amoxicilina",25,12,"2021-12-08", 2);

select * from tb_produtos where preco > 50;

select * from tb_produtos where preco between 3 and 60;

select * from tb_produtos where nome like "%c%";

select * from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.id;

select tb_produtos.nome, tb_produtos.preco, tb_categoria.tipoproduto, tb_categoria.uso 
from tb_produtos inner join
 tb_categoria on tb_categoria.id = tb_produtos.id; 