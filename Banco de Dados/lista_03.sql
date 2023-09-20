create database Sprint2;

use sprint2;

create table atleta(
idAtleta int primary key auto_increment,
nome varchar(40),
modalidade  varchar(40),
modalidade  varchar(40),
qtdMedalha int);

insert into atleta(nome, modalidade, qtdMedalha) values 
('Neymar', 'Futebol', '5'),
('Marta', 'Futebol', '1'),
('Bolt', 'Atletismo', '4'),
('Medina', 'Surf', '1'),
('Rayssa', 'Skate', '1');

create table pais(
idPais int primary key,
nome varchar(30),
capital varchar(40));

insert into pais values
('1','França', 'Paris'),
('2','Japão', 'Tóquio'),
('3','Chile', 'Santiago'),
('4','Brasil', 'Brasília');

describe atleta;

alter table atleta add column fkpais int;

alter table atleta add constraint fkP
	foreign key (fkpais) references pais(idPais);
    
select*from pais;

UPDATE `sprint2`.`atleta` SET `fkpais` = '1' WHERE (`idAtleta` = '1');
UPDATE `sprint2`.`atleta` SET `fkpais` = '3' WHERE (`idAtleta` = '2');
UPDATE `sprint2`.`atleta` SET `fkpais` = '4' WHERE (`idAtleta` = '3');
UPDATE `sprint2`.`atleta` SET `fkpais` = '2' WHERE (`idAtleta` = '4');
UPDATE `sprint2`.`atleta` SET `fkpais` = '3' WHERE (`idAtleta` = '5');

SELECT * FROM atleta JOIN pais
	ON idPais = fkpais;
    
select  Pais.nome as NomePais, Atleta.nome as NomeAtleta from Atleta 
    JOIN Pais
		ON fkPais = idPais;
	
    select  Pais.nome as NomePais, Atleta.nome as NomeAtleta from Atleta 
    JOIN Pais
		ON fkPais = idPais
			where Pais.capital = 'Brasilia';

select * from Atleta 
    JOIN Pais
		ON fkPais = idPais;
        
-- exercicio 2

use sprint2;

create table Musica (
idMusica int primary key auto_increment,
titulo char(40),
artista char(40),
genero char(40)
);

insert into Musica(titulo, artista, genero) values
	('Maquina do Tempo', 'Matue', 'TRAP'),
    ('Celebridade', 'L7nnon', 'RAP'),
    ('Esse cara sou eu', 'Roberto Carlos', 'Classica');
    
create table Album (
idAlbum int primary key auto_increment,
nome varchar(30),
tipo varchar(40),
constraint ck_tipo
	check (tipo in ('digital', 'fisico')),
dtLancamento date
);

insert into Album(nome, tipo, dtLancamento) values
('Cantando com a Alma', 'fisico', '2004-05-14'); 

insert into Album values
	(null, 'Nada como um dia após o outro', 'fisico', '2002-05-20');
    
insert into Album(nome, tipo, dtLancamento) values
	('Demo', 'digital', '2002-05-23');
    
select * from Musica;

delete from Musica where idMusica >= 4;

select * from Album;

alter table musica add column fkAlbum int;

alter table musica add constraint iptFk 
	foreign key (fkAlbum) references Album(idAlbum);
    
select * from Musica
	join Album on idAlbum = fkAlbum;

select Musica.titulo as Musica, Album.nome as Album from Musica
	join Album on idAlbum = fkAlbum;
    
select Musica.titulo as Musica, Album.nome as Album from Musica
	join Album on idAlbum = fkAlbum
		where tipo = 'fisico';

select * from Musica
	join Album on idAlbum = fkAlbum 
		where tipo = 'fisico';
        
SELECT * from Musica;

UPDATE `sprint2`.`Musica` SET `fkAlbum` = '1' WHERE (`idMusica` = '1');
UPDATE `sprint2`.`Musica` SET `fkAlbum` = '2' WHERE (`idMusica` = '2');
UPDATE `sprint2`.`Musica` SET `fkAlbum` = '3' WHERE (`idMusica` = '3');
