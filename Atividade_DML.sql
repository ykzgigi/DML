#CREATE DATABASE EMPRESA3;


create table departamento(
dcodigo int auto_increment PRIMARY KEY,
dnome varchar (50)
);


create table funcionario(
funcodigo int auto_increment PRIMARY KEY,
dcodigo int,
nome varchar (50),
nascimento date,
salario int,
foreign key(dcodigo) references departamento(dcodigo)
);


create table dependente(
depcodigo int auto_increment PRIMARY KEY,
funcodigo int,
depnome varchar (50),
foreign key(funcodigo) references funcionario(funcodigo)
);


INSERT INTO departamento(dcodigo, dnome)
values (1,"Residência Executiva"),
(2,"Espaço Corporativo"),
(3,"Centro de Convivência"),
(4,"Estabelecimento de Carreira"),
(5,"Espaço Sinergia"),
(6,"Ponto de Inovação"),
(7,"Ateliê do Profissional"),
(8,"Centro de Competências"),
(9,"Estúdio de Conexões"),
(10,"Espaço de Networking");

INSERT INTO funcionario(dcodigo, nome, nascimento, salario)
values (2,"Ana Julya","2007-06-17",3500.00),
(3,"Maria Clara","2007-06-20",3500.00),
(4,"Rafaella Seabra","2007-06-20",3500.00),
(5,"Tainá Cristina","2007-06-20",3500.00),
(6,"Diogo Teixeira","2007-06-20",3500.00),
(7,"Vinícius Da Costa","2007-06-20",3500.00),
(8,"Giovanna Machado","2007-06-20",3500.00),
(9,"Lucas Gabriel","2007-06-20",3500.00),
(10,"Nhandeara Mourão","2007-06-20",3500.00);

desc funcionario;


INSERT INTO dependente(depnome)
values ("RE"),
("EC"),
("CC"),
("CE"),
("ES"),
("PI"),
("AP"),
("CCV"),
("EEC"),
("EN");

select * from departamento;







