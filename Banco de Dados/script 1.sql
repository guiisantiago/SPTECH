-- CRIANDO O BANCO DE DADOS / DATABASE
-- todo comando sql termina com ponto e vírgula;
CREATE DATABASE bd1adsb;

-- SELECIONAR O BANCO DE DADOS
USE bd1adsb;

-- CRIANDO NOSSA PRIMEIRA TABELA
CREATE TABLE empresa (
id int primary key,
nome varchar(50),
responsavel varchar(40)
);

-- DESCRIBE
DESCRIBE empresa;

-- INSERIR DADOS
INSERT INTO empresa VALUES
	(100, 'STEFANINI', 'RAFAEL');
    
-- EXIBIR OS DADOS
SELECT * FROM empresa;

INSERT INTO empresa VALUES
	(101, 'C6', 'ANDRESA'),
    (102, 'AACENTURE', 'RENATA');
    
SELECT * FROM empresa;

-- EXIBIR APENAS O RESPONSAVEL DA EMPRESA
SELECT responsavel FROM empresa;

SELECT nome FROM empresa;

SELECT id, nome FROM empresa;

-- exibir apenas a empresa que tem o responsavel Andresa
SELECT * FROM empresa WHERE responsavel = 'ANDRESA';

SELECT * FROM empresa WHERE nome = 'STEFANINI';

CREATE TABLE turma (
id int primary key,
nome varchar(10)
);

INSERT INTO turma VALUES
(1, 'GUILHERME'),
(2, 'PEDRO'),
(3, 'CARLOS');

SELECT * FROM turma;
 
 -- ATUALIZAR UM DADO DA TABELA
 UPDATE empresa SET nome = 'ACCENTURE'
	WHERE id = 102;

SELECT * FROM empresa;

-- EXIBIR APENAS O RESPONSAVEL QUE COMEÇA COM a
SELECT responsavel FROM empresa
	WHERE responsavel LIKE 'A%';

SELECT responsavel FROM empresa
	WHERE responsavel LIKE 'R%';
    
SELECT responsavel FROM empresa
	WHERE responsavel LIKE '%A';

SELECT responsavel FROM empresa
	WHERE responsavel LIKE 'A%A';
    
UPDATE empresa SET nome = 'C6'
	WHERE id = 101;
SELECT * FROM empresa;

UPDATE empresa SET responsavel = 'ANDRESSA SILVA'
	WHERE id = 101;

SELECT responsavel FROM  empresa 
	WHERE responsavel LIKE '%SILVA%';
    
DELETE FROM empresa WHERE id = 100;
SELECT * FROM empresa;

-- renomear uma coluna da tabela
ALTER TABLE empresa RENAME COLUMN id TO idempresa;

DESCRIBE empresa;

-- alterar a quantidade de caracteres do campo nome 
ALTER TABLE empresa MODIFY COLUMN nome varchar(100);

-- adicionar uam nova coluna
ALTER TABLE empresa ADD COLUMN salario int;

DESCRIBE empresa;

-- excluir uma coluna
ALTER TABLE empresa DROP COLUMN salario;

-- ordenar os dados da tabela empresa pelo campo responsavel 
SELECT * FROM empresa;

UPDATE empresa SET responsavel = 'ANDRESSA'
	WHERE idempresa = 101;
    
SELECT * FROM empresa ORDER BY nome;
