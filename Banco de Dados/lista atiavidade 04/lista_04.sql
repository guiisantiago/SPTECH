use sprint1;

create table professor (
idProfessor int primary key auto_increment,
nome varchar(50),
sobrenome varchar(30),
especialidade1 varchar(40),
especialidade2 varchar(40));


insert into professor(nome, sobrenome, especialidade1, especialidade2) values
('Vivian', 'Silva', 'Banco de Dados', 'Dados'),
('Guilherme', 'Santiago', 'Algorítmo', 'Sistemas'),
('Pedro', 'Otiz', 'Pesquisa e Inovação', 'Sociemocional'),
('Carlos', 'Eduardo', 'Cinema', 'Aviação'),
('Rafael', 'Conde', 'Medicina', 'Pediatra'),
('Guilherme', 'Cruci', 'Adm', 'Economia');

create table disciplina (
idDisc int primary key auto_increment,
nomeDisc varchar(45));

alter table disciplina add column fkprofessor int;
alter table disciplina add constraint fkprof
	foreign key (fkprofessor) references professor(idProfessor);
    
insert into disciplina(nomeDisc) values
('Analise e Desenvolvimento de Sitesmas'),
('Ciência da computação'),
('Sistema da Informação');

select * from professor join disciplina on fkprofessor = idProfessor;

select * from disciplina;

UPDATE disciplina SET fkprofessor = '1' 
	WHERE idDisc = 1;
UPDATE disciplina SET fkprofessor = '2' 
	WHERE idDisc = 2;
UPDATE disciplina SET fkprofessor = '3' 
	WHERE idDisc = 3;

select disciplina.nomeDisc, professor.nome from disciplina join professor on fkprofessor = idProfessor;

select professor.*, disciplina.nomeDisc from professor join disciplina on fkprofessor = idProfessor
	where professor.sobrenome = 'Santiago';
    
select professor.especialidade1, disciplina.nomeDisc from professor join disciplina on fkprofessor = idProfessor
	where professor.nome = 'Guilherme' order by especialidade1;

