create database db_escola;
-- usando o db escola
use db_escola;
-- criando tabela
create table tb_alunos(
id bigint auto_increment,
nome varchar (255) not null,
idade int not null,
classe varchar (255) not null,
nota int not null,
periodo varchar (255) not null,

primary key(id)
);
-- populando tabela
insert into tb_alunos (nome, idade, classe, nota, periodo) values ("Alex", 14, "9 Ano", 3, "Manhã"); 
insert into tb_alunos (nome, idade, classe, nota, periodo) values ("Alexa", 16, "2 Ano", 8, "Manhã"); 
insert into tb_alunos (nome, idade, classe, nota, periodo) values ("Alexandra", 14, " 9 Ano", 7, "Manhã"); 
insert into tb_alunos (nome, idade, classe, nota, periodo) values ("Alexandre", 17, "3 Ano", 8, "Manhã"); 
insert into tb_alunos (nome, idade, classe, nota, periodo) values ("Alexsandro", 12, "3Ano", 9, "Manhã"); 
insert into tb_alunos (nome, idade, classe, nota, periodo) values ("Alexsandra", 11, " 2 Ano", 4, "Manhã"); 
insert into tb_alunos (nome, idade, classe, nota, periodo) values ("Alexcsandro", 18, "3 Ano", 6, "Manhã"); 
insert into tb_alunos (nome, idade, classe, nota, periodo) values ("Alexc", 14, "9 Ano", 10, "Manhã"); 
-- mostrando lista de alunos
select * from tb_alunos;
-- alunos com notas maiores que 7
select nome, nota from tb_alunos where nota>7;
-- alunos com notas menores que 7
select nome, nota from tb_alunos where nota<7;
-- atualização de dados
 update tb_alunos set nota=4 where id=2;
 -- verificação de alunos 
 select * from tb_alunos;