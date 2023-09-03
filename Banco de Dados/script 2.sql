-- EXERCICIO 1
USE sprint1;

CREATE TABLE atleta (
idAtleta int primary key auto_increment ,
nome varchar(40), 
modalidade varchar(40),
qtdMedalha INT );

DESCRIBE atleta;

INSERT INTO atleta VALUES
(null, 'Neymar', 'Futebol', 5),
(null, 'Bolt', 'Atletismo', 3),
(null, 'Phelps', 'Natação', 4),
(null, 'Raissa', 'Skate', 2),
(null, 'Medina', 'Surf', 1);

SELECT * FROM atleta;

UPDATE atleta SET qtdMedalha = 3
	WHERE idAtleta = 1;

UPDATE atleta SET qtdMedalha = 7
	WHERE idAtleta IN (2,3);
    
UPDATE atleta SET nome = 'Medina'
	WHERE idAtleta = 4;
    
ALTER TABLE atleta ADD COLUMN dtNascimento DATE;

UPDATE atleta SET dtNascimento =  '2005-06-01'
	WHERE idAtleta = 1;
    
UPDATE atleta SET dtNascimento =  '2002-12-04'
	WHERE idAtleta = 2;

UPDATE atleta SET dtNascimento =  '1999-04-05'
	WHERE idAtleta = 3;
    
UPDATE atleta SET dtNascimento =  '1997-06-05'
	WHERE idAtleta = 4;
    
UPDATE atleta SET dtNascimento =  '2000-10-10'
	WHERE idAtleta = 5;
    
DELETE FROM atleta WHERE idAtleta = 5;

SELECT * FROM atleta 
	WHERE modalidade != 'Natação';
    
SELECT * FROM atleta
	WHERE qtdMedalha >= '3';
    
ALTER TABLE atleta MODIFY COLUMN modalidade varchar(60);

DESCRIBE atleta;

TRUNCATE TABLE atleta;

-- EXERCICIO 2

USE sprint1;

CREATE TABLE musica (
idMusica int primary key auto_increment,
titulo varchar(40),
artista varchar(40),
genero varchar(40)
);

DESCRIBE musica;

INSERT INTO musica VALUES
(null, 'Quer Voar', 'Matue', 'Trap'),
(null, 'Brasil', 'Kyan', 'Trap'),
(null, 'Meteoro', 'Luan Santa', 'Seretanejo'),
(null, 'Deixa acontecer', 'Revelação', 'Pagode'),
(null, 'Runaway', 'Kanye', 'Rap'),
(null, 'No woman', 'Bob Marley', 'Reggae'),
(null, 'Vampiro', 'Matue', 'Trap');

SELECT * FROM musica;

ALTER TABLE musica ADD COLUMN curtidas INT;

UPDATE musica SET curtidas = 25
	WHERE idMusica = 1;
    
UPDATE musica SET curtidas = 50
	WHERE idMusica = 2;
    
UPDATE musica SET curtidas = 20
	WHERE idMusica = 3;
    
UPDATE musica SET curtidas = 10
	WHERE idMusica = 4;
    
UPDATE musica SET curtidas = 13
	WHERE idMusica = 5;
    
UPDATE musica SET curtidas = 17
	WHERE idMusica = 6;
    
UPDATE musica SET curtidas = 35
	WHERE idMusica = 7;
    
ALTER TABLE musica MODIFY COLUMN artista varchar(80);

UPDATE musica SET curtidas = 15
	WHERE idMusica = 1;
    
UPDATE musica SET curtidas = 23
	WHERE idMusica IN (2,3);
    
UPDATE musica SET titulo = 'Violent Crimes'
	WHERE idMusica = 5;
    
DELETE FROM musica WHERE idMusica = 4;

SELECT * FROM musica
	WHERE genero <> 'Trap';
    
SELECT * FROM musica 
	WHERE curtidas >= 20;
    
TRUNCATE TABLE musica;

-- EXERCICIOS 3
USE sprint1;

CREATE TABLE filme (
idFilme int primary key auto_increment,
título varchar(50),
genero varchar(40),
diretor varchar(40)
);

DESCRIBE filme;

INSERT INTO filme VALUES
(NULL, 'REI LEÃO', 'DESENHO', 'ROB MINKOFF'),
(NULL, 'TROPA DE ELITE', 'AÇÃO', 'JOSE PADILHA'),
(NULL, 'CARROS', 'DESENHO', 'JOHN LASSETER'),
(NULL, 'GENTE GRANDE', 'COMEDIA', 'DENNIS DUGAN'),
(NULL, 'TITANIC', 'DRAMA', 'JAMES CAMERON'),
(NULL, 'AVATAR', 'AVENTURA', 'JAMES CAMERON'),
(NULL, 'TAXI DRIVER', 'SUSPENSE', 'MARTIN SCORSESE');

SELECT * FROM filme;

ALTER TABLE filme ADD COLUMN protagonista varchar(50);

UPDATE filme SET protagonista = 'Simba'
	WHERE idFilme = 1;
    
UPDATE filme SET protagonista = 'Nascimento'
	WHERE idFilme = 2;
    
UPDATE filme SET protagonista = 'Macquen'
	WHERE idFilme = 3;

UPDATE filme SET protagonista = 'Adan Sandler'
	WHERE idFilme = 4;
    
UPDATE filme SET protagonista = 'Jackie'
	WHERE idFilme = 5;
    
UPDATE filme SET protagonista = 'Avatar'
	WHERE idFilme = 6;
    
UPDATE filme SET protagonista = 'Robert de Niro'
	WHERE idFilme = 7;
    
ALTER TABLE filme MODIFY COLUMN diretor varchar(150);	

UPDATE filme SET diretor = 'Guilherme'
	WHERE idFilme = 5;
    
UPDATE filme SET diretor = 'João'
	WHERE idFilme IN (2,7);
    
UPDATE filme SET título = 'Xtpo'
	WHERE idFilme = 6;
    
DELETE FROM filme WHERE idFilme = 3;

SELECT * FROM filme 
	WHERE genero <> 'drama';
    
SELECT * FROM filme
	WHERE genero = 'suspense';
    
DESCRIBE filme;

TRUNCATE TABLE filme;

-- EXERCIO 4

USE sprint1;

CREATE TABLE professor(
idProfessor int primary key auto_increment,
nome varchar(50),
especialidade varchar(40),
dtNasc date);

DESCRIBE professor;

INSERT INTO professor VALUES
(null, 'VIVIAN', 'GEOGRAFIA', '1984-09-10'),
(null,'GUILHERME', 'MATEMATICA', '2005-06-06'),
(null,'CAIO', 'ALGORITTMO', '1990-11-23'),
(null,'JP', 'ALGORITMO', '1970-02-05'),
(null,'RAISSA', 'SOCIOEMOCIONAL', '1991-08-24'),
(null,'ANA', 'PORTUGUES', '1975-01-25'),
(null,'ANTONIO', 'HISTORIA', '1969-09-13');

SELECT * FROM professor;

ALTER TABLE professor ADD COLUMN função varchar(50);

UPDATE professor SET função = 'Titular'
	WHERE idProfessor = 1;
    
UPDATE professor SET função = 'Monitor'
	WHERE idProfessor = 2;
    
UPDATE professor SET função = 'Assistente'
	WHERE idProfessor = 3;
    
UPDATE professor SET função = 'Monitor'
	WHERE idProfessor = 4;
    
UPDATE professor SET função = 'Titular'
	WHERE idProfessor = 5;
    
UPDATE professor SET função = 'Assistente'
	WHERE idProfessor = 6;
    
UPDATE professor SET função = 'Titular'
	WHERE idProfessor = 7;
    
INSERT INTO professor (nome, especialidade, dtNasc, função) VALUES
('Vivian', 'PI', '2000-05-06', 'Monitor');

DELETE FROM professor WHERE idProfessor = 5;

SELECT nome FROM professor 
	WHERE função = 'Titular'; 
    
SELECT especialidade, dtNasc  FROM professor 
	WHERE função = 'Monitor';
    
UPDATE professor SET dtNasc = '2005-06-01'
	WHERE idProfessor = 3;
    
TRUNCATE TABLE professor;

-- EXERCICIO 5
USE sprint1;

CREATE TABLE Curso (
idCurso int primary key auto_increment,
nome varchar(50),
sigla varchar(3),
coordernador varchar(50)
);

INSERT INTO Curso VALUES
(NULL, 'Banco de dados', 'BD', 'Vivian'),
(NULL, 'Tecnologia da informação', 'TI', 'Monica'),
(NULL, 'Pesquisa e Inovação', 'PI', 'Fernanda');

SELECT * FROM Curso;

SELECT coordernador FROM curso;

SELECT * FROM Curso WHERE sigla = 'BD';

SELECT * FROM Curso ORDER BY nome;

SELECT * FROM Curso ORDER BY coordernador DESC;

SELECT * FROM curso
WHERE nome LIKE 'B%';

SELECT * FROM curso
WHERE nome 	LIKE '%O';

SELECT * FROM curso 
WHERE nome LIKE '_E%';

SELECT * FROM curso
WHERE nome LIKE '%ã_';

DROP TABLE Curso;

-- EXERCICIO 6 

USE sprint1;

CREATE TABLE Revista2(
idRevista int primary key auto_increment,
nome varchar(40),
categoria varchar(30)
);

INSERT INTO Revista2 VALUES
(NULL, 'Veja', ''),
(NULL, 'Isto é', ''),
(NULL, 'Capricho', ''),
(NULL, 'Fama', '');

SELECT * FROM Revista2;

UPDATE revista2 SET categoria = 'Fofoca'
	WHERE idRevista = 1;

UPDATE revista2 SET categoria = 'Gastronomia'
	WHERE idRevista = 2;
    
UPDATE revista2 SET categoria = 'Juvenil'
	WHERE idRevista = 3;
    
UPDATE revista2 SET categoria = 'Fofoca'
	WHERE idRevista = 4;
    
SELECT * FROM Revista2;

DESCRIBE Revista2;

ALTER TABLE Revista2 MODIFY COLUMN categoria varchar(40);

DESCRIBE Revista2;

ALTER TABLE Revista2 ADD COLUMN periodicidade varchar(15);

SELECT * FROM Revista2;

ALTER TABLE revista2 DROP COLUMN periodicidade;