create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint(5) auto_increment primary key,
descricao varchar (255) not null,
setor varchar (255) not null,
Disponibilidade boolean not null
);

insert into tb_categoria (descricao, setor, disponibilidade) values ("Fitoterápico", "A", false);
insert into tb_categoria (descricao, setor, disponibilidade) values ("Alopático", "B", true);
insert into tb_categoria (descricao, setor, disponibilidade) values ("Homeopático", "C", true);
insert into tb_categoria (descricao, setor, disponibilidade) values ("Manipulado", "A", true);


create table tb_produto(
id bigint(5) auto_increment,
nome varchar (255) not null,
código int not null,
faixa varchar (255) not null,
preco int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (nome, código, faixa, preco, categoria_id) values ("Dorflex", 8279, "vermelho", 12, 3);
insert into tb_produto (nome, código, faixa, preco, categoria_id) values ("Advil", 9865, "azul", 8, 2);
insert into tb_produto (nome, código, faixa, preco, categoria_id) values ("Neosaldina", 3512, "branco", 36, 1);
insert into tb_produto (nome, código, faixa, preco, categoria_id) values ("Allegra", 4215, "azul", 27, 4);
insert into tb_produto (nome, código, faixa, preco, categoria_id) values ("Loratamed", 1586, "branco", 78, 1);
insert into tb_produto (nome, código, faixa, preco, categoria_id) values ("Histamin", 8156, "vermelho", 56, 4);
insert into tb_produto (nome, código, faixa, preco, categoria_id) values ("Cimegripe", 1786, "preto", 47, 2);
insert into tb_produto (nome, código, faixa, preco, categoria_id) values ("Luftal", 8436, "azul", 18, 3);




select tb_produto.nome, tb_produto.código, tb_produto.faixa, tb_produto.preco, tb_categoria.descricao, tb_categoria.setor, tb_categoria.disponibilidade 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;

select tb_produto.nome, tb_produto.código, tb_produto.faixa, tb_produto.preco, tb_categoria.descricao, tb_categoria.setor, tb_categoria.disponibilidade 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where preco > 50;

select tb_produto.nome, tb_produto.código, tb_produto.faixa, tb_produto.preco, tb_categoria.descricao, tb_categoria.setor, tb_categoria.disponibilidade 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where preco between 3 and 60;

select tb_produto.nome, tb_produto.código, tb_produto.faixa, tb_produto.preco, tb_categoria.descricao, tb_categoria.setor, tb_categoria.disponibilidade 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where nome like "%L%";  
  
select tb_produto.nome, tb_produto.código, tb_produto.faixa, tb_produto.preco, tb_categoria.descricao, tb_categoria.setor, tb_categoria.disponibilidade 
from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id where categoria_id = 2;
  
  