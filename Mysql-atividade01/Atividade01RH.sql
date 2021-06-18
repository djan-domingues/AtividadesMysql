create database db_RecursosHumanos;

use db_RecursosHumanos;

create table tb_Funcionarios(
id bigint auto_increment primary key, 
nome varchar(255) not null,
matricula int not null, 
funcao varchar(255) not null,
turno varchar(255) not null,
salario decimal(6,2) not null
);

insert into tb_Funcionarios(nome, matricula, funcao, turno, salario) values ("Gustavo Godoy", 1533, "motorista", "noturno", 3500.00);
insert into tb_Funcionarios(nome, matricula, funcao, turno, salario) values ("Gabriel Damassa", 1009, "professor", "diurno", 8000);
insert into tb_Funcionarios(nome, matricula, funcao, turno, salario) values ("João Gabigol", 4413, "reporter", "diurno", 2300);
insert into tb_Funcionarios(nome, matricula, funcao, turno, salario) values ("Felipe Djan", 6009, "cozinheiro", "noturno", 1300);

select * from tb_Funcionarios where salario > 2000.00;
select * from tb_Funcionarios where salario < 2000.00;

update tb_Funcionarios set salario = 5600 where id = 4;



 






