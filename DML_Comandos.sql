CREATE DATABASE gervenda1e;


CREATE TABLE produtos(
produto_id int auto_increment PRIMARY KEY,
nome VARCHAR (50),
preco decimal (10,2),
quantestoque int
);

CREATE TABLE vendas(
venda_id int auto_increment PRIMARY KEY,
produto_id int,
quantidade int,
data_venda date,
foreign key(produto_id) references produtos(produto_id)
);

INSERT INTO produtos(nome ,preco ,quantestoque)
values ("Notebook Dell",7000.00,35),
("Garrafa Pacco",250.50,10),
("Ipad 14",3.0000,50),
("Caderno Tilibra",40.50,5),
("Carregador",40.50,3),
("mouse",100.50,6);

select * from produtos;

INSERT INTO vendas(produto_id, quantidade, data_venda)
values (1,5,"2024-09-25");


INSERT INTO vendas(produto_id, quantidade, data_venda)
values (5,9,"2024-08-20");

update produtos
set preco = 6500.00
where produto_id = 1;

update vendas
set quantidade = 7
where venda_id = 1;


delete from produtos
where produto_id = 4;

select * from vendas;
select * from produtos;

select nome, quantestoque from produtos;
select quantidade, data_venda from vendas;




