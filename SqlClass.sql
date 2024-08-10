
-- Criação do banco de dados
CREATE DATABASE escola;

-- Selecionando o banco de dados para ser usado
USE escola;

-- Criando a tabela alunos no banco de dados escola
CREATE TABLE aluno (
  ID INT AUTO_INCREMENT,
  NOME VARCHAR(100),
  EMAIL VARCHAR(100),
  ENDERECO VARCHAR(255),
  PRIMARY KEY (ID)
  );
  
  -- Selecionando a tabela alunos
  SELECT * FROM aluno;
