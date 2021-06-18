create database db_registroEscolar;

use db_registroEscolar;

create table tb_alunos(
id bigint auto_increment primary key, 
Nome varchar(255) not null,
Matricula int not null, 
Ano_Letivo Varchar(255) not null,
Turma varchar(255) not null,
Media_Final decimal(6,2) not null
);

insert into tb_alunos(nome, matricula, ano_letivo, turma, media_final) values ("Felipe Presença", 6846, "Terceiro", "A", 9.8); 
insert into tb_alunos(nome, matricula, ano_letivo, turma, media_final) values ("Gabriel China", 8646, "Segundo", "C", 6.4);
insert into tb_alunos(nome, matricula, ano_letivo, turma, media_final) values ("Rafael Freire", 6584, "Terceiro", "D", 8.5);
insert into tb_alunos(nome, matricula, ano_letivo, turma, media_final) values ("Pedro Del Smart", 8187, "Segundo", "C", 10);
insert into tb_alunos(nome, matricula, ano_letivo, turma, media_final) values ("Vinicius David", 2222, "Segundo", "C", 4.2);
insert into tb_alunos(nome, matricula, ano_letivo, turma, media_final) values ("Allan Bonjorno", 5485, "Terceiro", "B", 9.7);
insert into tb_alunos(nome, matricula, ano_letivo, turma, media_final) values ("Bruno Bigato", 5482, "Primeiro", "F", 2.3);
insert into tb_alunos(nome, matricula, ano_letivo, turma, media_final) values ("Matheus Boka", 3875, "Primeiro", "O", 7);

select * from tb_alunos where Media_Final >= 7;
select * from tb_alunos where Media_Final < 7;

update tb_alunos set Turma = "G" where id = 5;