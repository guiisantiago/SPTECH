create database treinador;

use treinador;

create table treinador (
idTreinador int primary key auto_increment,
nometreinador varchar(45),
telefone char(11),
email varchar(45),
fkexperiente int,
constraint Ftrei foreign key (fkexperiente)
	references treinador(idTreinador)) auto_increment = 10;


create table nadador (
idnadador int primary key auto_increment,
nome varchar(45),
estado varchar(45),
dtNasc date,
fktreinador int,
constraint Ftrain foreign key (fktreinador)
	references treinador(idTreinador))auto_increment = 100;


insert into treinador(nometreinador, telefone, email) values
('Rodrigo', '11940028922', 'rodrigo@sptech.com'),
('Italo', '11958924308', 'italo@gmail.com'),
('Antonio', '11986959688', 'antonio@sptech.com');

insert into nadador(nome, estado, dtNasc, fktreinador) values
('Guilherme', 'São Paulo', '2005-06-01', 10),
('Carlos', 'Ceará', '1975-04-23', 11),
('Pedro', 'São Paulo', '2000-10-02', 12);

select * from treinador;
select * from nadador;

update treinador set fkexperiente = 11
	where idTreinador = 10;
    
update treinador set fkexperiente = 12
	where idTreinador = 11;
    
update treinador set fkexperiente = 10
	where idTreinador = 12;
    
select * from  treinador join nadador on idTreinador = fktreinador;

select * from treinador join nadador on idTreinador = fktreinador
	where nometreinador = 'Italo';
    
select * from treinador as treinador join treinador as experiente on  treinador.fkexperiente = experiente.idTreinador;

select * from treinador as treinador 
	join treinador as experiente 
		on treinador.fkexperiente = experiente.idTreinador
			where treinador.nometreinador = 'Rodrigo';

select * from treinador as treinador 
	left join nadador on treinador.idTreinador = nadador.fktreinador
		 left join treinador as experiente 
			on treinador.fkexperiente = experiente.idTreinador;
            
select * from treinador as treinador
	join nadador on treinador.idTreinador = nadador.fktreinador
    join treinador as experiente on treinador.fkexperiente = experiente.idTreinador
		where treinador.nometreinador = 'Antonio';
    
            
update treinador set fkexperiente = 13
	where idTreinador = 10;
    
insert into nadador (nome, estado, dtNasc, fktreinador) values
('Pedro', 'Bahia', '2002-04-15', 13);


insert into treinador(nometreinador, telefone, email) values
('Jhonatan', '11958924580', 'jhon@hotmail.com');