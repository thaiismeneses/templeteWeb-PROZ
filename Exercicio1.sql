CREATE DATABASE empresa;

USE empresa;

CREATE TABLE departamentos (
    departamento_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    localizacao VARCHAR(100)
);

CREATE TABLE funcionarios (
    funcionario_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    sobrenome VARCHAR(100),
    salario DECIMAL(10, 2),
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES departamentos(departamento_id)
);

CREATE TABLE projetos (
    projeto_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    departamento_id INT,
    FOREIGN KEY (departamento_id) REFERENCES departamentos(departamento_id)
);

INSERT INTO departamentos (nome, localizacao) VALUES
('Recursos Humanos', 'São Paulo'),
('TI', 'Rio de Janeiro'),
('Financeiro', 'Belo Horizonte');

INSERT INTO funcionarios (nome, sobrenome, salario, departamento_id) VALUES
('João', 'Silva', 5000.00, 1),
('Maria', 'Santos', 6000.00, 2),
('José', 'Oliveira', 7000.00, 3);


INSERT INTO projetos (nome, departamento_id) VALUES
('Projeto A', 2),
('Projeto B', 1),
('Projeto C', 3);


 --Funcionarios e seus departamentos

 SELECT f.nome AS Funcionario, f.sobrenome, d.nome AS Departamento
FROM funcionarios f
JOIN departamentos d ON f.departamento_id = d.departamento_id;


--Projetos e os departamentos responsaveis

SELECT p.nome AS Projeto, d.nome AS Departamento, d.localizacao
FROM projetos p
JOIN departamentos d ON p.departamento_id = d.departamento_id;

--Funcionarios e seus projetos

SELECT f.nome AS Funcionario, f.sobrenome, p.nome AS Projeto
FROM funcionarios f
JOIN projetos p ON f.departamento_id = p.departamento_id;
