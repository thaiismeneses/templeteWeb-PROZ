-- Criação da tabela de clientes
CREATE TABLE clientes (
    cliente_id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    data_cadastro DATE NOT NULL
);

-- Criação da tabela de vendas (opcional, para outros contextos)
CREATE TABLE vendas (
    venda_id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    produto VARCHAR(100),
    valor DECIMAL(10, 2),
    data_venda DATE,
    FOREIGN KEY (cliente_id) REFERENCES clientes(cliente_id)
);

DELIMITER //

-- Criação da função para contar clientes cadastrados em um dia específico
CREATE FUNCTION contar_clientes_por_data(data_cadastro DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE total_clientes INT;

    -- Contar o número de clientes cadastrados na data fornecida
    SELECT COUNT(*)
    INTO total_clientes
    FROM clientes
    WHERE data_cadastro = data_cadastro;

    RETURN total_clientes;
END //

DELIMITER ;

-- Exemplo de uso da função para contar clientes cadastrados em 2024-08-23
SELECT contar_clientes_por_data('2024-08-23') AS total_clientes_cadastrados;
