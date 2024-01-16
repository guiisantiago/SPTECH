use sprint2;

create table pet(
idPet int primary key auto_increment,
tipo_de_animal varchar(45),
nome varchar(45),
raça varchar(45),
Dtnasc date) auto_increment = 101;
 
alter table pet add column fkcliente int;
alter table pet add constraint fkclint
	foreign key (fkcliente) references cliente(idCliente);

create table cliente(
idCliente int primary key auto_increment,
nome varchar(45),
telefone_fixo char(10),
telefone_celular char(11),
endereço varchar(100));

insert into pet(tipo_de_animal, nome, raça, Dtnasc) values
('Cachorro', 'Bolt', 'Dalmata', '2015-10-03'),
('Gato', 'Fred', 'Siamês', '2017-01-10'),
('Cachorro', 'Tobi', 'Golden', '2010-07-20'),
('Cachorro', 'Pipoca', 'Labrador', '2023-02-28');

insert into cliente(nome, telefone_fixo, telefone_celular, endereço) values
('Guilherme Santiago', '1142295438', '11977145516', 'Rua Teffé, 299. Bairro Santa Maria'),
('Pedro Ortiz', '1142295539', '11942295438', 'Rua Haddok Lobo, 295. Bairro Paulista'),
('Rodrigo Santiago', '1140028922', '11986959688', 'Alameda São Caetano, 544. Bairro Barcelona');

select * from pet;

select * from cliente;

UPDATE pet SET fkcliente = 1 
	WHERE idPet = 101;

UPDATE pet SET fkcliente = 2 
	WHERE idPet = 102;
    
UPDATE pet SET fkcliente = 3
	WHERE idPet = 103;
    
UPDATE pet SET fkcliente = 2 
	WHERE idPet = 104;
    
alter table cliente modify column nome varchar(50);

select * from pet where tipo_de_animal 
	like  '%cachorro%';
    
select nome, Dtnasc from pet;

select * from pet order by nome;
select * from cliente order by endereço desc;

select * from pet where nome
	like 'p%';
    
select * from cliente where nome 
	like '%_ Santiago%';
    
update cliente set telefone_fixo = '1144445555'
	where idCliente = 1;
select * from cliente;

select * from pet join cliente on fkcliente = idCliente; 
select * from pet join cliente on fkcliente = idCliente 
	 where idCliente = 1;

delete from pet where idPet = 101;

select * from pet;
drop table pet;
describe cliente;