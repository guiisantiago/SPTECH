CREATE DATABASE Venda;

USE Venda;

CREATE TABLE Cliente (
    idCliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45),
    email VARCHAR(45),
    endereco VARCHAR(45),
    fkindicacao INT,
    FOREIGN KEY (fkindicacao) REFERENCES Cliente(idCliente)
);

CREATE TABLE Venda (
    idVenda INT AUTO_INCREMENT PRIMARY KEY,
    total DECIMAL(7,2),
    dtVenda DATE,
    fkCliente INT,
    FOREIGN KEY (fkCliente) REFERENCES Cliente(idCliente)
);

CREATE TABLE Produto (
    idProduto INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(45) ,
    descricao VARCHAR(100),
    preco DECIMAL (7,2) 
);

CREATE TABLE notaFiscal (
    fkVenda INT,
    fkProduto INT,
    quantidade INT,
    desconto DECIMAL(7,2),
    FOREIGN KEY (fkVenda) REFERENCES Venda(idVenda),
    FOREIGN KEY (fkProduto) REFERENCES Produto(idProduto)
);

SELECT * FROM cliente;

SELECT * FROM produto;

SELECT * FROM venda;

-- Inserções na tabela Cliente
INSERT INTO Cliente (nome, email, endereco, fkindicacao) VALUES
('Neymar', 'neymar@gmail.com', 'São Bernardo', NULL),
('Pedro', 'pedro@hotmail.com', 'São Caetano', 1),
('Gabriel', 'gabriel@gmail.com', 'Santo André', NULL),
('Valeria', 'valeria@gmail.com', 'Paulista', 2);


INSERT INTO Produto (nome, descricao, preco) VALUES
('Macbook','Notebook Apple', 399.99),
('Celular','Smartphone Samsung', 499.99),
('Relogio','Smartwatch Apple', 199.99),
('Fone','Fone LG', 128.99);


INSERT INTO Venda (total, dtVenda, fkCliente) VALUES
(399.99, '2023-10-30', 1),
(499.99, '2023-10-30', 2),
(199.99, '2023-10-29', 3),
(128.99, '2023-10-29', 4);



INSERT INTO notaFiscal (fkVenda, fkProduto, quantidade, desconto) VALUES
(1, 1, 1, 0);


INSERT INTO notaFiscal (fkVenda, fkProduto, quantidade, desconto) VALUES
(2, 2, 1, 0);


INSERT INTO notaFiscal (fkVenda, fkProduto, quantidade, desconto) VALUES
(3, 3, 1, 0);


INSERT INTO notaFiscal (fkVenda, fkProduto, quantidade, desconto) VALUES
(4, 4, 1, 0);

SELECT CI.nome AS ClienteIndicado, C.nome AS ClienteIndicador
FROM Cliente CI
JOIN Cliente C ON CI.fkindicacao = C.idCliente
WHERE C.nome = 'Pedro';

SELECT C1.nome AS Cliente, C2.nome AS ClienteIndicador, V.total, P.nome AS Produto
FROM Cliente C1
LEFT JOIN Cliente C2 ON C1.fkindicacao = C2.idCliente
JOIN Venda V ON C1.idCliente = V.fkCliente
JOIN notaFiscal NF ON V.idVenda = NF.fkVenda
JOIN Produto P ON NF.fkProduto = P.idProduto;

SELECT V.dtVenda, P.nome AS Produto, NF.quantidade
FROM Venda V
JOIN notaFiscal NF ON V.idVenda = NF.fkVenda
JOIN Produto P ON NF.fkProduto = P.idProduto
WHERE V.idVenda = 1;


SELECT P.nome AS Produto, P.preco AS Valor, NF.quantidade AS QuantidadeVendida
FROM Produto P
JOIN notaFiscal NF ON P.idProduto = NF.fkProduto
GROUP BY P.nome, P.preco;


INSERT INTO Cliente (nome, email, endereco, fkindicacao) VALUES
('Ana', 'ana@gmail.com', 'Santa Teresa', NULL);

SELECT C.nome AS Cliente, V.total, V.dtVenda
FROM Cliente C
LEFT JOIN Venda V ON C.idCliente = V.fkCliente;
