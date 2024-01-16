create database sistema;

use sistema;

create table pessoa (
idPessoa int primary key auto_increment,
nome varchar(45),
dtNasc date, 
profissão varchar(45));

create table gasto (
idGasto int, 
data date,
valor decimal(7,2), 
descrição varchar(45),
fkPessoa int,
constraint fkPessoa foreign key (fkPessoa)
	references pessoa(idPessoa));
    
describe gasto;
    
insert into pessoa(nome, dtNasc, profissão) values
('Guilherme', '2005-06-01', 'Desenvolveedor'),
('Pedro', '2005-10-29', 'Artista'),
('Beatriz', '2006-09-09', 'Frentista');

insert into gasto values
(1, '2023-05-10', '300.00', 'Aluguel', 2),
(2, '2023-06-25', '250.00', 'Conta  de água', 1),
(3, '2023-01-01', '450.00', 'Roupas', 3);

select * from pessoa;
select * from gasto;


select nome, profissão from pessoa;
select valor, descrição from gasto;

select * from pessoa join gasto on fkpessoa = idPessoa;

select * from pessoa join gasto on fkPessoa = idPessoa
	where idpessoa = 1;
    
update pessoa set profissão = 'Advogada'
	where idpessoa = 3;
    
delete from gasto where idGasto = 3 and fkPessoa = 3;



