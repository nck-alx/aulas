create database atividade;
use atividade;

create table pessoas(
	CÓDIGO varchar(4),
    NOME text,
    CPF varchar(11),
    RG varchar(11),
    EMAIL text
);

describe table pessoas;

alter table pessoas
rename to funcionarios;


alter table funcionarios
	add TELEFONE VARCHAR(11),
    add DATA_DE_NASCIMENTO date;

describe table funcionarios;

select * from funcionarios;

describe funcionarios;

alter table funcionarios
	modify column CÓDIGO varchar(4) not null,
    modify column NOME text not null,
    modify column CPF varchar(11) not null,
    modify column RG varchar(11) not null,
    modify column EMAIL text not null,
	modify column TELEFONE VARCHAR(11) not null,
	modify column DATA_DE_NASCIMENTO date not null;
     
alter table funcionarios
	modify column DATA_DE_NASCIMENTO date null;
    
alter table funcionarios
	drop column rg;
    
    
alter table funcionarios 
	change TELEFONE CELULAR varchar(11);
    
alter table funcionarios
	modify column CELULAR varchar(11) not null;
    
select * from funcionarios;

insert into funcionarios(
	CÓDIGO,
    NOME,
    CPF,
    EMAIL,
    CELULAR,
    DATA_DE_NASCIMENTO)
value(
	0001, 'Nicolas', 27163716217, 'email@gmail.com', 11981157869, 20051018);
    
insert into funcionarios(
	CÓDIGO,
    NOME,
    CPF,
    EMAIL,
    CELULAR,
    DATA_DE_NASCIMENTO)
value(0002, 'Bruno Oliveira', 23456789012, 'bruno.oliveira@email.com', 21976543210, 19900622),
(0003, 'Carla Santos', 34567890123, 'carla.santos@email.com', 31965432109, 19821109),
(0004, 'Diego Costa', 45678901234, 'diego.costa@email.com', 41954321098, 19870730);

insert into funcionarios(
	CÓDIGO,
    NOME,
    CPF,
    EMAIL,
    CELULAR,
    DATA_DE_NASCIMENTO)
value(0005, 'Elena Ribeiro', 56789012345, 'elena.ribeiro@email.com', 51943210987, 19911204),
(0006, 'Felipe Almeida', 67890123456, 'felipe.almeida@email.com', 61932109876, 19840218),
(0007, 'Gabriela Lima', 78901234567, 'gabriela.lima@email.com', 71921098765, 19930425),
(0008, 'Henrique Silva', 89012345678, 'henrique.silva@email.com', 81910987654, 19881103),
(0009, 'Isabela Martins', 90123456789, 'isabela.martins@email.com', 91909876543, 19921212),
(0010, 'Jorge Pereira', 01234567890, 'jorge.pereira@email.com', 01998765432, 19850522);

select EMAIL from funcionarios;

select CELULAR from funcionarios;

select NOME from funcionarios 
order by NOME ASC
;

SELECT *
from  funcionarios
where CÓDIGO between 0002 AND 0005;

