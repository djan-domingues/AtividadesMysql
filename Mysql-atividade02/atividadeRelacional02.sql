create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria(
id bigint(5) auto_increment primary key,
Qntd_pedacos int not null,
Tipo_massa varchar(255) not null,
Borda_recheada varchar(255) not null
);

insert into tb_categoria (qntd_pedacos, tipo_massa, borda_recheada) values (8, "Integral", "Recheada");
insert into tb_categoria (qntd_pedacos, tipo_massa, borda_recheada) values (6, "Normal", "Sem recheio");
insert into tb_categoria (qntd_pedacos, tipo_massa, borda_recheada) values (8, "Normal", "Recheada");
insert into tb_categoria (qntd_pedacos, tipo_massa, borda_recheada) values (6, "Integral", "Sem recheio");
insert into tb_categoria (qntd_pedacos, tipo_massa, borda_recheada) values (8, "Normal", "Sem recheio");
insert into tb_categoria (qntd_pedacos, tipo_massa, borda_recheada) values (6, "Integral", "Recheada");

select * from tb_categoria;

create table tb_pizza(
id bigint(5) auto_increment,
Nome varchar (255) not null,
tipo varchar(255) not null,
Ingredientes varchar (255) not null,
Preço int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_pizza (nome, tipo, ingredientes, preço, categoria_id) values ("Carijós", "Salgada", "Frango, milho e catupiry", 45, 1);
insert into tb_pizza (nome, tipo, ingredientes, preço, categoria_id) values ("Calabresa", "Salgada", "Calabresa fatiada e cebola", 38, 3);
insert into tb_pizza (nome, tipo, ingredientes, preço, categoria_id) values ("Mussarela", "Salgada", "Mussarela e tomate", 35, 5);
insert into tb_pizza (nome, tipo, ingredientes, preço, categoria_id) values ("Romeu e Julieta", "Doce", "Queijo e goiabada", 37, 4);
insert into tb_pizza (nome, tipo, ingredientes, preço, categoria_id) values ("Morango", "Doce", "Morango com chocolate", 40, 2);

select * from tb_pizza;

select tb_pizza.nome, tb_pizza.tipo, tb_pizza.ingredientes, tb_pizza.preço, tb_categoria.qntd_pedacos, tb_categoria.tipo_massa, tb_categoria.borda_recheada
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where preço > 38;

select tb_pizza.nome, tb_pizza.tipo, tb_pizza.ingredientes, tb_pizza.preço, tb_categoria.qntd_pedacos, tb_categoria.tipo_massa, tb_categoria.borda_recheada
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where preço between 30 and 40;

select tb_pizza.nome, tb_pizza.tipo, tb_pizza.ingredientes, tb_pizza.preço, tb_categoria.qntd_pedacos, tb_categoria.tipo_massa, tb_categoria.borda_recheada
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where nome like "%C%";

select tb_pizza.nome, tb_pizza.tipo, tb_pizza.ingredientes, tb_pizza.preço, tb_categoria.qntd_pedacos, tb_categoria.tipo_massa, tb_categoria.borda_recheada
from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where categoria_id = 2;



