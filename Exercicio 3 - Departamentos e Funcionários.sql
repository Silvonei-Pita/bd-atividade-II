-- Criar banco de dados Empresa
CREATE DATABASE Empresa;

-- Selecionar banco de dados Empresa
USE Empresa;

-- Criar tabela de Departamentos
CREATE TABLE Empresa.Departamentos(
	DepartamentoID INT AUTO_INCREMENT,
    NomeDepartamento VARCHAR(255) NOT NULL,
    PRIMARY KEY (DepartamentoID)
);

-- Criar tabela de Funcionários
CREATE TABLE Empresa.Funcionarios(
	FuncionarioID INT AUTO_INCREMENT,
    Nome VARCHAR(255) NOT NULL,
    Cargo VARCHAR(100) NOT NULL,
    Salario DOUBLE NOT NULL,
    DepartamentoID INT NOT NULL,
    FOREIGN KEY (DepartamentoID) REFERENCES Empresa.Departamentos(DepartamentoID),
    PRIMARY KEY (FuncionarioID)

);

-- Inserir valores na tabela Departamento
INSERT INTO Empresa.Departamentos(NomeDepartamento) VALUES
('Recursos Humanos'), ('Controladoria'), ('Financeiro'), ('Vendas'), ('Operacional');

-- Inserir valores na tabela Funcionarios
INSERT INTO Empresa.Funcionarios(Nome, Cargo, Salario, DepartamentoID) VALUES
('João Pereira', 'Analista de RH', 5630.50, 1),
('Jéssica Oliveira', 'Coordenadora da Controladoria', 6000, 2),
('Mário', 'Assistente de Financeiro', 5000, 3),
('Katty Maria', 'Vendedora Sênior', 4600, 4),
('Lucas Babino', 'Operador Logístico', 7000, 5);

-- Exibir valores da tabela Departamento
SELECT * FROM Empresa.Departamentos;

-- Exibir valores da tabela Funcionarios
SELECT * FROM Empresa.Funcionarios;






