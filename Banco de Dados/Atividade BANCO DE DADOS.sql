-- EXERCICIO 1
CREATE DATABASE sprint1;

USE sprint1;

CREATE TABLE atleta (
idAtleta int primary key,
nome varchar(40),
modalidade varchar(40),
qtdMedalha int);

INSERT INTO atleta VALUES
(1, 'GUILHERME', 'FUTEBOL', 4),
(2, 'PEDRO', 'BASQUETE', 3),
(3, 'CARLOS', 'LUTA', 2),
(4, 'GABRIELLA', 'ATLETISMO', 2);

SELECT * FROM atleta;

SELECT nome, qtdMedalha FROM atleta;

SELECT *  FROM atleta WHERE modalidade = 'LUTA';

SELECT * FROM atleta ORDER BY modalidade;

SELECT *FROM atleta ORDER BY qtdMedalha DESC;

SELECT nome FROM atleta
	WHERE nome LIKE '%S%';

SELECT nome FROM atleta
	WHERE nome LIKE 'G%';
    
SELECT nome FROM atleta
	WHERE nome LIKE '%O';

SELECT nome FROM atleta
	WHERE nome LIKE '%R_';
    
DROP TABLE atleta;

-- EXERCICIO 2
USE sprint1;

CREATE TABLE Musica (
idMusica int primary key,
titulo varchar(40),
artista varchar(40),
genero varchar(40));

INSERT INTO musica VALUES
(1, 'INVISIVEL', 'VEIGH', 'TRAP'),
(2, 'QUER VOAR', 'MATUE', 'TRAP'),
(3, 'AMARELO', 'EMICIDA', 'RAP'),
(4, 'MELHOR SÓ', 'KAYBLACK', 'TRAP'),
(5, 'ANOS LUZ', 'MATUE', 'TRAP'),
(6, 'NOCAUTE', 'JORGE', 'SERTANEJO'),
(7, 'DEIXA ACONTECER', 'REVELAÇAO', 'PAGODE');

SELECT * FROM musica;

SELECT titulo, artista FROM musica;

SELECT * FROM musica WHERE genero = 'TRAP';

SELECT * FROM musica WHERE artista = 'MATUE';

SELECT * FROM musica ORDER BY titulo;

SELECT * FROM musica ORDER BY artista DESC;

SELECT titulo FROM musica
	WHERE titulo LIKE 'A%';

SELECT artista FROM musica
	WHERE artista LIKE '%E';
    
SELECT genero FROM musica
	WHERE genero LIKE '_a%';
    
SELECT titulo FROM musica
	WHERE titulo LIKE '%E_';
    
DROP TABLE musica;

-- EXERCICIO 3
USE sprint1;

CREATE TABLE filme(
idFilme int primary key,
titulo varchar(50),
genero varchar(40),
diretor varchar(40)
);

INSERT INTO filme VALUES
(1, 'REI LEÃO', 'DESENHO', 'ROB MINKOFF'),
(2, 'TROPA DE ELITE', 'AÇÃO', 'JOSE PADILHA'),
(3, 'CARROS', 'DESENHO', 'JOHN LASSETER'),
(4, 'GENTE GRANDE', 'COMEDIA', 'DENNIS DUGAN'),
(5, 'TITANIC', 'DRAMA', 'JAMES CAMERON'),
(6, 'AVATAR', 'AVENTURA', 'JAMES CAMERON'),
(7, 'TAXI DRIVER', 'DRAMA', 'MARTIN SCORSESE');

SELECT * FROM filme;

SELECT titulo, diretor FROM filme;

SELECT * FROM filme WHERE genero = 'DRAMA';

SELECT * FROM filme WHERE diretor = 'JAMES CAMERON';

SELECT * FROM filme ORDER BY titulo;

SELECT * FROM filme ORDER BY diretor DESC;

SELECT titulo FROM filme
	WHERE titulo LIKE 'T%';
    
SELECT diretor FROM filme
	WHERE diretor LIKE '%N';
    
SELECT genero FROM filme
	WHERE genero LIKE '_E%';
    
SELECT titulo FROM filme
	WHERE titulo LIKE '%A_';
    
DROP TABLE filme;

-- EXERCICIO 4

CREATE TABLE professor(
idProfessor int primary key,
nome varchar(50),
especialidade varchar(40),
dtNasc date
);

INSERT INTO professor VALUES
(1, 'VIVIAN', 'GEOGRAFIA', '1984-09-10'),
(2, 'GUILHERME', 'MATEMATICA', '2005-06-06'),
(3, 'CAIO', 'ALGORITTMO', '1990-11-23'),
(4, 'JP', 'ALGORITMO', '1970-02-05'),
(5, 'RAISSA', 'SOCIOEMOCIONAL', '1991-08-24'),
(6, 'ANA', 'PORTUGUES', '1975-01-25'),
(7, 'ANTONIO', 'HISTORIA', '1969-09-13');

SELECT * FROM professor;

SELECT especialidade FROM professor;

SELECT * FROM professor WHERE especialidade = 'PORTUGUES';

SELECT * FROM professor ORDER BY nome;

SELECT * FROM professor ORDER BY dtNasc DESC;

SELECT nome FROM professor 
	WHERE nome LIKE 'A%';
    
SELECT nome FROM professor 
	WHERE nome LIKE '%O';
    
SELECT nome FROM professor
	WHERE nome LIKE '_N%';
    
SELECT nome FROM professor 
	WHERE nome LIKE '%I_';
    
DROP TABLE professor;

-- EXERCICIO 5

CREATE TABLE curso (
idCurso int primary key, 
nome varchar(50),
sigla varchar(3),
cordernador varchar(50)
);

INSERT INTO curso VALUES
(1, 'Banco de Dados', 'BD', 'Vivian'),
(2, 'Tecnologia da Informação', 'TI', 'Vivian'),
(3, 'Arquitetura Computacional', 'AC', 'Vivian'),
(4, 'Pesquisa e Inovação', 'PI', 'Vivian');

UPDATE curso SET cordernador = 'Guilherme'
	WHERE idCurso = 2;

UPDATE curso SET cordernador = 'Gabriella'
	WHERE idCurso = 3;
    
UPDATE curso SET cordernador = 'Rodrigo'
	WHERE idCurso = 4;

SELECT * FROM curso;

SELECT cordernador FROM curso;

SELECT sigla FROM curso
	WHERE sigla = 'BD';

SELECT * FROM curso ORDER BY nome;

SELECT * FROM curso ORDER BY cordernador DESC;

SELECT nome FROM curso
	WHERE nome LIKE 'T%';

SELECT nome FROM curso
	WHERE nome LIKE '%O';

SELECT nome FROM curso
	WHERE nome LIKE '_E%';

SELECT nome FROM curso
	WHERE nome LIKE '%A_';
    
DROP TABLE curso;

-- EXERCICIOS 6

CREATE TABLE revista(
idRevista int auto_increment primary key,
nome varchar(40),
categoria varchar(30)
);

INSERT INTO revista (nome) VALUES
('Isto é'),
('Veja'),
('Epoca'),
('Claudia');

SELECT * FROM revista;

UPDATE revista SET categoria = 'Jornal'
	WHERE idRevista = 1;

UPDATE revista SET categoria = 'Jornal'
	WHERE idRevista = 2;
    
UPDATE revista SET categoria = 'Jornal'
	WHERE idRevista = 3;

UPDATE revista SET categoria = 'Jornal'
	WHERE idRevista = 4;

SELECT * FROM revista;

INSERT INTO revista (nome, categoria) VALUES
('Globo', 'Fofoca'),
('Quatro Rodas', 'Carros'),
('Record', 'Esporte');

SELECT * FROM revista;

DESCRIBE revista;

ALTER TABLE revista MODIFY categoria VARCHAR(40);

DESCRIBE revista;

ALTER TABLE revista ADD periodicidade VARCHAR(15);

SELECT * FROM revista;

ALTER TABLE revista DROP COLUMN periodicidade;

SELECT * FROM revista;
