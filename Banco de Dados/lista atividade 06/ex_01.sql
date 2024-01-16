create database AlunoProjeto;

use AlunoProjeto;

create table aluno(
ra int primary key,
nome varchar(45),
telefone char(11),
fkprojeto int,
constraint Fkprojt foreign key (fkprojeto)
	references projeto(idProjeto),
fkrepresentante int,
constraint Fkrepre foreign key (fkrepresentante)
	references aluno(ra)
);


create table projeto(
idProjeto int primary key auto_increment,
nomeprojeto varchar(45),
descrição varchar(45));

create table acompanhantes(
idAcompanhante int primary key auto_increment,
nomeacomp varchar(45),
relação varchar(45),
fkaluno int,
constraint Fkalun foreign key (fkaluno)
	references aluno(ra));

insert into  projeto(nomeprojeto, descrição) values
('Aquatech', 'Gelo'),
('DataTempTrack', 'Data Center'),
('Epcontrol', 'Apicultura'),
('Gesso Arte', 'Gesso');

insert into aluno(ra, nome, telefone) values
(0123261, 'Guilherme','11977145516'),
(0123251, 'Pedro','11977145525'),
(0123245, 'Italo','11988145516'),
(0123228, 'Rodrigo','11999145516');

insert into acompanhantes(nomeacomp, relação) values
('João', 'Amigo'),
('Gabriel', 'Irmão'),
('Gabriela', 'Irmã'),
('Rafaela', 'Prima');

select * from projeto;
select * from aluno;
select * from acompanhantes;

update aluno set fkprojeto = '2' 
	where ra = 123228;
    
update aluno set fkprojeto = 3 
	where ra = 123245;
    
update aluno set fkprojeto = 4 
	where ra = 123251;
    
update aluno set fkprojeto = 1 
	where ra = 123261;
    
update aluno set fkrepresentante = 0123261 
	where ra = 123228;
    
update aluno set fkrepresentante = 0123245 
	where ra = 123251;
    
update acompanhantes set fkaluno = 0123261 
	where idAcompanhante = 1;

update acompanhantes set fkaluno = 0123251 
	where idAcompanhante = 2;

update acompanhantes set fkaluno = 0123245 
	where idAcompanhante = 3;

update acompanhantes set fkaluno = 0123245 
	where idAcompanhante = 4;

select * from aluno join projeto on fkprojeto = idProjeto;

select * from aluno  join acompanhantes on ra = fkaluno;

select aluno.*, representante.* from aluno as aluno 
	left join aluno as representante 
    on representante.fkrepresentante = aluno.ra;

select * from aluno  join projeto on fkprojeto = idProjeto
	where nomeprojeto = 'Aquatech';

select * from aluno 
	left join projeto on fkprojeto = idProjeto
    left join acompanhantes on fkaluno = ra;
	


