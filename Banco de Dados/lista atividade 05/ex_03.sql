create database PraticaFuncionario;
use PraticaFuncionario;

create table setor(
idSetor int primary key auto_increment,
nomesetor varchar(45),
andar int);

create table funcionario(
idFuncionario int primary key auto_increment,
nome varchar(45),
telefone char(11),
salario decimal(7,2),
fksetor int,
constraint fkset foreign key (fksetor)
	references setor (idSetor));


create table acompanhante (
idAcompanhante int primary key auto_increment,
nomeacomp varchar(45),
dtNasc date,
fkfuncionario int,
constraint fkfunc foreign key (fkfuncionario)
	references funcionario(idFuncionario));


insert into setor(nomesetor, andar) values 
('Logistica', 1),
('Tecnologia', 2),
('Manutenção', 3);

insert into funcionario(nome, telefone, salario, fksetor) values
('Guilherme', '11977145518', '800.00', 2),
('Carlos', '11988145518', '700.00', 1),
('João', '11988455518', '500.00', 3);

insert into acompanhante(nomeacomp, dtNasc, fkFuncionario) values
('Neymar', '2005-01-06', 3),
('Ronaldo', '2002-05-25', 2),
('Italo', '200-04-01', 1);


select * from setor;
select * from funcionario;
select * from acompanhante;

select * from setor join funcionario on idSetor = fksetor;

select * from setor  join funcionario  on idSetor = fksetor
	where nomesetor = 'Tecnologia';
    
select * from funcionario join acompanhante on idfuncionario = fkfuncionario;

select * from funcionario join acompanhante on fkfuncionario = idfuncionario
	where nome = 'Guilherme';
    
select * from setor join funcionario on idSetor = fksetor 
	join acompanhante on idfuncionario = fkfuncionario;
    


