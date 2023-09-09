-- Criar banco de dados 'Loja'
CREATE DATABASE Loja;

-- Selecionar o banco de dados 'Loja'
USE Loja;

-- Criar tabela para Clientes
CREATE TABLE Loja.Clientes(
ClienteID INT AUTO_INCREMENT,
Nome VARCHAR(255) NOT NULL,
Email VARCHAR(255) NOT NULL,
Telefone VARCHAR(22),
PRIMARY KEY(ClienteID)

);

-- Criar tabela para Pedidos
CREATE TABLE Loja.Pedidos(
PedidoID INT AUTO_INCREMENT,
Descricao VARCHAR(255),
DataPedido DATE NOT NULL,
ValorTotal DOUBLE NOT NULL,
ClienteID INT NOT NULL,
PRIMARY KEY (PedidoID),
-- Indicando que a coluna ClienteID dessa tabela é uma chave estrangeira da tabela Clientes.
FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID) 

);

-- Inserir dados na tabela Clientes
INSERT INTO Loja.Clientes (Nome, Email, Telefone) 
VALUES 
('Andressa', 'andressa@hotmail.com', '(71)984541-9384'),
('João', 'joãozinho@gmail.com', '(41)91234-5674'),
('Paulo', 'paulinho@yahoo.com', '(44)91357-8532'),
('Milena', 'milenix@outlook.com', '(54)9564-2462'),
('Carol' , 'carol@gmail.com', '(21)97642-3154');

-- Inserir dados na tabela Pedidos
INSERT INTO Loja.Pedidos (Descricao, DataPedido, ValorTotal, ClienteID) 
VALUES
('PC Gamer de Andressa', '2023-09-10', 3600.50, 1),
('Bicicleta do João', '2023-09-09', 350, 2),
('Frigideira Antiaderente de Paulo', '2023-09-08', 40, 3),
('Caneca térmica de Milena ', '2023-09-07', 20, 4),
('Livro de Auto-Ajuda de Carol', '2023-09-06', 55, 5);

-- Consultar e exibir todos os registros da tabela Clientes
SELECT * FROM Loja.Clientes;
-- Consultar e exibir todos os registros da tabela Pedidos
SELECT * FROM Loja.Pedidos;



