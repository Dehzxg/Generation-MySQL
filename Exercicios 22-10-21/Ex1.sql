create database db_eCommere;

use db_eCommerce;
-- criando tabela
create table db_produtos(
id bigint auto_increment,
produto varchar(255),
valor bigint not null,
cor varchar(255),
quantidade bigint not null,
tamanho int not null,

primary key (id) -- chave primaria
);
-- populando tabela
insert into db_produtos (produto, valor, cor, quantidade, tamanho) values ("Máscara Descartavel", 40.99, "Azul", 100, "2");
insert into db_produtos (produto, valor, cor, quantidade, tamanho) values ("Álcool em Gel", 500.99, "Transparente", 1, "2");
insert into db_produtos(produto, valor, cor, quantidade, tamanho) values ("Lenço Umedecido", 12.99, "Branco", 100, 2);
insert into db_produtos(produto, valor, cor, quantidade, tamanho) values ("Shampoo", 12.99, "Amarelo", 1, 2);
insert into db_produtos(produto, valor, cor, quantidade, tamanho) values ("Condicionador", 12.99, "Laranja", 1, 2);
insert into db_produtos(produto, valor, cor, quantidade, tamanho) values ("Copo Descartavel", 10.99, "Vermelho", 200, 2);
insert into db_produtos(produto, valor, cor, quantidade, tamanho) values ("Talher Descartavel", 25.99, "Cinza", 12, 2);
insert into db_produtos(produto, valor, cor, quantidade, tamanho) values ("Prato Descartavel", 11.99, "Rosa", 11, 2);
insert into db_produtos(produto, valor, cor, quantidade, tamanho) values ("Escova Descartavel", 12.99, "Roxo", 10, 2);
	
-- alterando valor para decimal
alter table db_produtos modify valor decimal(8,2);
-- ver lista de produtos
select * from db_produtos;
-- produto com valor maior que 500
select produto, valor from db_produtos where valor>500;
-- produto com valor menor que 500
select produto, valor from db_produtos where valor<500;
-- alterando quantidade de produto
update db_produtos set quantidade = 133 where id = 1; 
-- verificação de tabela atualizada
select * from db_produtos;
