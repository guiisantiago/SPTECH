use sprint2;

create table curso (
idCurso int primary key auto_increment,
nome varchar(50),
sigla varchar(3), 
coordenador varchar(45));

insert into curso(nome, sigla, coordenador) values
('Banco de dados', 'BD', 'Vivian'),
('Pesquisa e Inovação', 'PI', 'Fernanda'),
('Arq Comp', 'AC', 'Marise');

create table aluno (
idAluno int primary key auto_increment,
nome varchar(40),
semestre varchar(45));

insert into aluno(nome, semestre) values
('Guilherme', 'Primeiro'),
('Pedro', 'Segundo'),
('Marcos', 'Terceiro');


alter table aluno add column fkcurso int;
alter table aluno add constraint fkcur
	foreign key (fkcurso) references curso(idCurso);
    
update aluno set fkcurso = '1' 
    where idAluno = 1;

update aluno set fkcurso = '2' 
	where idAluno = 2;

update aluno set fkcurso = '3' 
	where idAluno = 3;
    
select curso.*, aluno.* from curso join aluno on fkcurso = idcurso;

select aluno.*, curso.nome from curso join aluno on fkcurso = idcurso
	where coordenador = 'Vivian';
    
alter table curso add column funcao varchar(35),
	add constraint chkFuncao
		check (funcao in('Empregado', 'Desligado'));
        
update curso set funcao = 'Empregado' 
	where idCurso = 1;
update curso set funcao = 'Desligado' 
	where idCurso = 2;
update curso set funcao = 'Desligado' 
	where  idCurso = 3;
    
select*from curso;
