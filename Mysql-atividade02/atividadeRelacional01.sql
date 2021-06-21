create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint(5) auto_increment primary key,
Poder_Principal varchar(255) not null,
Poder_Ataque varchar(255) not null,
Poder_Defesa varchar(255) not null
);

insert into tb_classe (Poder_principal, poder_ataque, poder_defesa) values ("Fogo", 2500, 2000);
insert into tb_classe (Poder_principal, poder_ataque, poder_defesa) values ("Agua", 1800, 2300);
insert into tb_classe (Poder_principal, poder_ataque, poder_defesa) values ("Terra", 3500, 1000);
insert into tb_classe (Poder_principal, poder_ataque, poder_defesa) values ("Metal", 2300, 1600);
insert into tb_classe (Poder_principal, poder_ataque, poder_defesa) values ("Madeira", 1200, 3800);

select * from tb_classe;

create table tb_personagem(
id bigint(5) auto_increment,
Nome varchar (255) not null,
Nivel int not null,
Clã varchar (255) not null,
Vitorias int not null,
Derrotas int not null,
classe_id bigint,
primary key (id),
FOREIGN KEY (classe_id) REFERENCES tb_classe (id)
);

insert into tb_personagem (nome, nivel, clã, vitorias, derrotas,classe_id) values ("Felipe", 82, "Alcatraz", 23, 6, 1);
insert into tb_personagem (nome, nivel, clã, vitorias, derrotas,classe_id) values ("João", 79, "Immortals", 18, 12, 3);
insert into tb_personagem (nome, nivel, clã, vitorias, derrotas,classe_id) values ("Maria", 89, "United", 17, 16, 2);
insert into tb_personagem (nome, nivel, clã, vitorias, derrotas,classe_id) values ("Gustavo", 74, "Vortex", 28, 2, 4);
insert into tb_personagem (nome, nivel, clã, vitorias, derrotas,classe_id) values ("Luisa", 92, "Alliance", 67, 24, 1);
insert into tb_personagem (nome, nivel, clã, vitorias, derrotas,classe_id) values ("Rafa", 61, "Omega", 6, 1, 3);
insert into tb_personagem (nome, nivel, clã, vitorias, derrotas,classe_id) values ("Otavio", 90, "No mercy", 59, 3, 4);
insert into tb_personagem (nome, nivel, clã, vitorias, derrotas,classe_id) values ("Jony", 81, "Hunted", 31, 25, 5);

select * from tb_personagem;

select tb_personagem.nome, tb_personagem.nivel, tb_personagem.clã, tb_personagem.vitorias, tb_personagem.derrotas, tb_classe.poder_principal,
tb_classe.poder_ataque, tb_classe.poder_defesa from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where poder_ataque > 2000;

select tb_personagem.nome, tb_personagem.nivel, tb_personagem.clã, tb_personagem.vitorias, tb_personagem.derrotas, tb_classe.poder_principal,
tb_classe.poder_ataque, tb_classe.poder_defesa from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where poder_defesa < 2000;

select * from tb_personagem where nome like "%f%";

select tb_personagem.nome, tb_personagem.nivel, tb_personagem.clã, tb_personagem.vitorias, tb_personagem.derrotas, tb_classe.poder_principal,
tb_classe.poder_ataque, tb_classe.poder_defesa from tb_personagem inner join tb_classe on tb_classe.id = tb_personagem.classe_id where classe_id = 1;


















