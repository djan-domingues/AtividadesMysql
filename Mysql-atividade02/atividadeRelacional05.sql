create database db_construindo_a_nossa_vida;

use db_construindo_a_nossa_vida;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
setor varchar(255) not null,
disponibilidade boolean not null,
primary key (id)
);

insert into tb_categoria (descricao, setor, disponibilidade) values ("Ferramentas", "A", true);
insert into tb_categoria (descricao, setor, disponibilidade) values ("Iluminação", "B", true);
insert into tb_categoria (descricao, setor, disponibilidade) values ("Móveis", "C", true);
insert into tb_categoria (descricao, setor, disponibilidade) values ("Eletros", "D", true);
insert into tb_categoria (descricao, setor, disponibilidade) values ("Decoração", "B", true);

select * from tb_categoria;

create table tb_produtos (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
qntd_estoque int not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produtos (nome, preco, qntd_estoque, categoria_id) values ("Trena", 30, 26, 1);
insert into tb_produtos (nome, preco, qntd_estoque, categoria_id) values ("Sofá", 1800, 3, 3);
insert into tb_produtos (nome, preco, qntd_estoque, categoria_id) values ("Lampada led", 26, 49, 2);
insert into tb_produtos (nome, preco, qntd_estoque, categoria_id) values ("Abajur", 190, 14, 2);
insert into tb_produtos (nome, preco, qntd_estoque, categoria_id) values ("Armário", 1700, 1, 3);
insert into tb_produtos (nome, preco, qntd_estoque, categoria_id) values ("Martelo", 16, 21, 1);
insert into tb_produtos (nome, preco, qntd_estoque, categoria_id) values ("Quadro", 430, 2, 5);
insert into tb_produtos (nome, preco, qntd_estoque, categoria_id) values ("Espelho", 120, 5, 3);
insert into tb_produtos (nome, preco, qntd_estoque, categoria_id) values ("Televisor", 2800, 6, 4);

select * from tb_produtos;


select tb_produtos.nome, tb_produtos.preco, tb_produtos.qntd_estoque, tb_categoria.descricao, tb_categoria.setor, tb_categoria.disponibilidade  
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id;

select tb_produtos.nome, tb_produtos.preco, tb_produtos.qntd_estoque, tb_categoria.descricao, tb_categoria.setor, tb_categoria.disponibilidade  
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where preco > 50;

select tb_produtos.nome, tb_produtos.preco, tb_produtos.qntd_estoque, tb_categoria.descricao, tb_categoria.setor, tb_categoria.disponibilidade  
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where preco between 10 and 50;

select tb_produtos.nome, tb_produtos.preco, tb_produtos.qntd_estoque, tb_categoria.descricao, tb_categoria.setor, tb_categoria.disponibilidade  
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where categoria_id = 3;

select tb_produtos.nome, tb_produtos.preco, tb_produtos.qntd_estoque, tb_categoria.descricao, tb_categoria.setor, tb_categoria.disponibilidade  
from tb_produtos inner join tb_categoria on tb_categoria.id = tb_produtos.categoria_id where nome like "%L%";