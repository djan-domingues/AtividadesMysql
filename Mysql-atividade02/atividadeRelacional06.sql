create database db_cursoDaMinhaVida;

use db_cursoDaMinhaVida;

create table tb_categoria(
id bigint(5) auto_increment,
descricao varchar(255) not null,
turno varchar (255) not null,
Duracao varchar (255) not null,
primary key (id)
);

insert into tb_categoria (descricao, turno, duracao) values ("Idioma", "manhã", "6 meses");
insert into tb_categoria (descricao, turno, duracao) values ("Idioma", "noite", "6 meses");
insert into tb_categoria (descricao, turno, duracao) values ("Tecnico", "manhã", "18 meses");
insert into tb_categoria (descricao, turno, duracao) values ("Tecnico", "noite", "18 meses");
insert into tb_categoria (descricao, turno, duracao) values ("Arte", "manhã", "12 meses");
insert into tb_categoria (descricao, turno, duracao) values ("Arte", "noite", "12 meses");


select * from tb_categoria;

create table tb_cursos (
id bigint(5) auto_increment,
nome varchar (255) not null,
preco decimal(6,2) not null,
desconto varchar(255) not null,
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_cursos (nome, preco, desconto, categoria_id) values ("Inlgês", 850, "20%", 2);
insert into tb_cursos (nome, preco, desconto, categoria_id) values ("Espanhol", 600, "15%", 1);
insert into tb_cursos (nome, preco, desconto, categoria_id) values ("Mecatronica", 1600, "5%", 3);
insert into tb_cursos (nome, preco, desconto, categoria_id) values ("Desenvolvedor Full stack", 4600, "20%", 4);
insert into tb_cursos (nome, preco, desconto, categoria_id) values ("Produção musical", 2200, "10%", 5);
insert into tb_cursos (nome, preco, desconto, categoria_id) values ("BeatMaker", 1400, "5%", 6);

select * from tb_cursos;


select tb_cursos.nome, tb_cursos.preco, tb_cursos.desconto, tb_categoria.descricao, tb_categoria.turno, tb_categoria.duracao 
from tb_cursos inner join tb_categoria on tb_categoria.id = tb_cursos.categoria_id;

select tb_cursos.nome, tb_cursos.preco, tb_cursos.desconto, tb_categoria.descricao, tb_categoria.turno, tb_categoria.duracao 
from tb_cursos inner join tb_categoria on tb_categoria.id = tb_cursos.categoria_id where preco >1000;

select tb_cursos.nome, tb_cursos.preco, tb_cursos.desconto, tb_categoria.descricao, tb_categoria.turno, tb_categoria.duracao 
from tb_cursos inner join tb_categoria on tb_categoria.id = tb_cursos.categoria_id where preco between 1000 and 2000;

select tb_cursos.nome, tb_cursos.preco, tb_cursos.desconto, tb_categoria.descricao, tb_categoria.turno, tb_categoria.duracao 
from tb_cursos inner join tb_categoria on tb_categoria.id = tb_cursos.categoria_id where nome like "%B%";

select tb_cursos.nome, tb_cursos.preco, tb_cursos.desconto, tb_categoria.descricao, tb_categoria.turno, tb_categoria.duracao 
from tb_cursos inner join tb_categoria on tb_categoria.id = tb_cursos.categoria_id where descricao = "Arte";













