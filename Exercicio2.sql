CREATE DATABASE Loja;

USE Loja;

CREATE TABLE Produtos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    preco DECIMAL(10, 2) NOT NULL,
    quantidade INT NOT NULL
);


CREATE TABLE Logs (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(255),
    data_hora DATETIME DEFAULT CURRENT_TIMESTAMP
);

--Acao de Trigger

CREATE TRIGGER after_insert_produto
AFTER INSERT ON Produtos
FOR EACH ROW
BEGIN
    INSERT INTO Logs (descricao)
    VALUES (CONCAT('Produto cadastrado: ', NEW.nome, ', Preço: ', NEW.preco, ', Quantidade: ', NEW.quantidade));
END;

--Testando
INSERT INTO Produtos (nome, preco, quantidade)
VALUES ('Notebook', 3500.00, 10);

SELECT * FROM Logs;
