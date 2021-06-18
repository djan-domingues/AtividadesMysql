create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment primary key, 
modelo varchar(255) not null,
marca varchar(255) not null, 
tamanho varchar(255) not null,
cor varchar(255) not null,
preco decimal(6,2) not null
);

insert into tb_produtos(modelo, marca, tamanho, cor, preco) values ("Calça", "Cyclone", "GG", "Preta", 600);
insert into tb_produtos(modelo, marca, tamanho, cor, preco) values ("Camiseta", "Oakley", "M", "Azul marinho", 150);
insert into tb_produtos(modelo, marca, tamanho, cor, preco) values ("Blusa", "Armani", "G", "Branca", 1900);
insert into tb_produtos(modelo, marca, tamanho, cor, preco) values ("Bone", "Dolce & Gabbana", "unico", "Vermelho", 1400);
insert into tb_produtos(modelo, marca, tamanho, cor, preco) values ("Cueca", "Calvin Klein", "P", "Rosa", 120);
insert into tb_produtos(modelo, marca, tamanho, cor, preco) values ("Meia", "Nike", "G", "Verde", 60); 
insert into tb_produtos(modelo, marca, tamanho, cor, preco) values ("Short", "Adidas", "GG", "Violeta", 140);
insert into tb_produtos(modelo, marca, tamanho, cor, preco) values ("Jaqueta", "Tommy", "G", "Laranja", 640);

select * from tb_produtos where preco > 500.00;
select * from tb_produtos where preco < 500.00;

update tb_produtos set preco = 850 where id = 7;