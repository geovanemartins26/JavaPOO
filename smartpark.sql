-- Criação do Banco de Dados
CREATE DATABASE smartpark_db;
USE smartpark_db;

-- Tabela Cliente
CREATE TABLE cliente (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    cpf VARCHAR(14) UNIQUE NOT NULL,
    telefone VARCHAR(15),
    email VARCHAR(100)
);

-- Tabela Veiculo
CREATE TABLE veiculo (
    id_veiculo INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(8) UNIQUE NOT NULL,
    modelo VARCHAR(50) NOT NULL,
    cor VARCHAR(30),
    fk_id_cliente INT,
    FOREIGN KEY (fk_id_cliente) REFERENCES cliente(id_cliente)
);

-- Tabela Vaga
CREATE TABLE vaga (
    id_vaga INT AUTO_INCREMENT PRIMARY KEY,
    numero VARCHAR(10) UNIQUE NOT NULL,
    tipo_vaga ENUM('CARRO', 'MOTO', 'GRANDE') NOT NULL,
    status ENUM('LIVRE', 'OCUPADA', 'MANUTENCAO') DEFAULT 'LIVRE'
);

-- Tabela Estacionamento (registra a entrada e saída de veículos nas vagas)
CREATE TABLE estacionamento (
    id_estacionamento INT AUTO_INCREMENT PRIMARY KEY,
    fk_id_veiculo INT NOT NULL,
    fk_id_vaga INT NOT NULL,
    data_hora_entrada DATETIME NOT NULL,
    data_hora_saida DATETIME,
    valor_total DECIMAL(10, 2) DEFAULT 0.00,
    status_pagamento ENUM('PENDENTE', 'PAGO') DEFAULT 'PENDENTE',
    FOREIGN KEY (fk_id_veiculo) REFERENCES veiculo(id_veiculo),
    FOREIGN KEY (fk_id_vaga) REFERENCES vaga(id_vaga)
);

-- Tabela Pagamento (registra os pagamentos efetuados)
CREATE TABLE pagamento (
    id_pagamento INT AUTO_INCREMENT PRIMARY KEY,
    fk_id_estacionamento INT NOT NULL,
    valor_pago DECIMAL(10, 2) NOT NULL,
    forma_pagamento ENUM('DINHEIRO', 'CARTAO_CREDITO', 'CARTAO_DEBITO', 'PIX') NOT NULL,
    data_hora_pagamento DATETIME NOT NULL,
    FOREIGN KEY (fk_id_estacionamento) REFERENCES estacionamento(id_estacionamento)
);