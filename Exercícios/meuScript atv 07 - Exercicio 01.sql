CREATE TABLE Agente (
  cpfA INT PRIMARY KEY,
  nomeA VARCHAR(255)
);

CREATE TABLE Pessoa (
  cpf INT PRIMARY KEY,
  nome VARCHAR(255),
  carteiraMotor INT
);

CREATE TABLE Veiculo (
  placaV VARCHAR(10) PRIMARY KEY,
  anoV INT,
  modelo VARCHAR(255),
  UF VARCHAR(2),
  cpf INT,
  FOREIGN KEY (cpf) REFERENCES Pessoa(cpf)
);

CREATE TABLE Caminhao (
  placaCaminhao VARCHAR(10) PRIMARY KEY,
  numeroEixo INT,
  peso FLOAT,
  FOREIGN KEY (placaCaminhao) REFERENCES Veiculo(placaV)
);

CREATE TABLE Carro (
  placaCarro VARCHAR(10) PRIMARY KEY,
  numPortas INT,
  descC VARCHAR(255),
  FOREIGN KEY (placaCarro) REFERENCES Veiculo(placaV)
);

CREATE TABLE Fones (
  cpf INT,
  numero VARCHAR(20),
  FOREIGN KEY (cpf) REFERENCES Pessoa(cpf)
);

CREATE TABLE TipoInfracao (
  idTipoInfra INT PRIMARY KEY,
  grauGravidade INT,
  valor FLOAT,
  descI VARCHAR(255)
);

CREATE TABLE Boleto (
  numBoleto INT PRIMARY KEY,
  dataVenc DATE
);

CREATE TABLE Localidade (
  idLocalidade INT PRIMARY KEY,
  velocPermitida INT,
  rua VARCHAR(255),
  posicao VARCHAR(255)
);

CREATE TABLE Infracao (
  idInfracao INT PRIMARY KEY,
  velocidade INT,
  dataInfra DATE,
  idTipoInfra INT,
  placaV VARCHAR(10),
  cpfA INT,
  idLocalidade INT,
  numBoleto INT,
  FOREIGN KEY (idTipoInfra) REFERENCES TipoInfracao(idTipoInfra),
  FOREIGN KEY (placaV) REFERENCES Veiculo(placaV),
  FOREIGN KEY (cpfA) REFERENCES Agente(cpfA),
  FOREIGN KEY (idLocalidade) REFERENCES Localidade(idLocalidade),
  FOREIGN KEY (numBoleto) REFERENCES Boleto(numBoleto)
);

-- Inserção de registros na tabela Agente
INSERT INTO Agente (cpfA, nomeA) VALUES
(1, 'Agente 1'),
(2, 'Agente 2'),
(3, 'Agente 3'),
(4, 'Agente 4'),
(5, 'Agente 5'),
(6, 'Agente 6'),
(7, 'Agente 7'),
(8, 'Agente 8'),
(9, 'Agente 9'),
(10, 'Agente 10');

-- Inserção de registros na tabela Pessoa
INSERT INTO Pessoa (cpf, nome, carteiraMotor) VALUES
(1001, 'Pessoa 1', 123456),
(1002, 'Pessoa 2', 654321),
(1003, 'Pessoa 3', 987654),
(1004, 'Pessoa 4', 456789),
(1005, 'Pessoa 5', 321654),
(1006, 'Pessoa 6', 789456),
(1007, 'Pessoa 7', 654987),
(1008, 'Pessoa 8', 987123),
(1009, 'Pessoa 9', 654789),
(1010, 'Pessoa 10', 321987);

-- Inserção de registros na tabela Veiculo
INSERT INTO Veiculo (placaV, anoV, modelo, UF, cpf) VALUES
('ABC1234', 2020, 'Modelo 1', 'SP', 1001),
('DEF5678', 2018, 'Modelo 2', 'RJ', 1002),
('GHI9012', 2019, 'Modelo 3', 'MG', 1003),
('JKL3456', 2021, 'Modelo 4', 'RS', 1004),
('MNO7890', 2017, 'Modelo 5', 'PR', 1005),
('PQR2345', 2022, 'Modelo 6', 'SC', 1006),
('STU6789', 2016, 'Modelo 7', 'BA', 1007),
('VWX0123', 2023, 'Modelo 8', 'ES', 1008),
('YZA4567', 2015, 'Modelo 9', 'CE', 1009),
('BCD8901', 2024, 'Modelo 10', 'GO', 1010);

-- Inserção de registros na tabela Caminhao
INSERT INTO Caminhao (placaCaminhao, numeroEixo, peso) VALUES
('ABC1234', 2, 10000),
('DEF5678', 3, 15000),
('GHI9012', 4, 20000),
('JKL3456', 3, 12000),
('MNO7890', 2, 9000),
('PQR2345', 4, 18000),
('STU6789', 2, 11000),
('VWX0123', 3, 14000),
('YZA4567', 4, 22000),
('BCD8901', 3, 13000);

-- Inserção de registros na tabela Carro
INSERT INTO Carro (placaCarro, numPortas, descC) VALUES
('ABC1234', 4, 'Carro 1'),
('DEF5678', 4, 'Carro 2'),
('GHI9012', 2, 'Carro 3'),
('JKL3456', 4, 'Carro 4'),
('MNO7890', 2, 'Carro 5'),
('PQR2345', 4, 'Carro 6'),
('STU6789', 2, 'Carro 7'),
('VWX0123', 4, 'Carro 8'),
('YZA4567', 2, 'Carro 9'),
('BCD8901', 4, 'Carro 10');

-- Inserção de registros na tabela Fones
INSERT INTO Fones (cpf, numero) VALUES
(1001, '11111111'),
(1002, '22222222'),
(1003, '33333333'),
(1004, '44444444'),
(1005, '55555555'),
(1006, '66666666'),
(1007, '77777777'),
(1008, '88888888'),
(1009, '99999999'),
(1010, '00000000');

-- Inserção de registros na tabela TipoInfracao
INSERT INTO TipoInfracao (idTipoInfra, grauGravidade, valor, descI) VALUES
(1, 1, 100, 'Infracao 1'),
(2, 2, 200, 'Infracao 2'),
(3, 3, 300, 'Infracao 3'),
(4, 1, 150, 'Infracao 4'),
(5, 2, 250, 'Infracao 5'),
(6, 3, 350, 'Infracao 6'),
(7, 1, 120, 'Infracao 7'),
(8, 2, 220, 'Infracao 8'),
(9, 3, 320, 'Infracao 9'),
(10, 1, 130, 'Infracao 10');

-- Inserção de registros na tabela Boleto
INSERT INTO Boleto (numBoleto, dataVenc) VALUES
(10001, '2023-05-15'),
(10002, '2023-05-16'),
(10003, '2023-05-17'),
(10004, '2023-05-18'),
(10005, '2023-05-19'),
(10006, '2023-05-20'),
(10007, '2023-05-21'),
(10008, '2023-05-22'),
(10009, '2023-05-23'),
(10010, '2023-05-24');

-- Inserção de registros na tabela Localidade
INSERT INTO Localidade (idLocalidade, velocPermitida, rua, posicao) VALUES
(1, 60, 'Rua 1', 'Posicao 1'),
(2, 50, 'Rua 2', 'Posicao 2'),
(3, 70, 'Rua 3', 'Posicao 3'),
(4, 40, 'Rua 4', 'Posicao 4'),
(5, 55, 'Rua 5', 'Posicao 5'),
(6, 65, 'Rua 6', 'Posicao 6'),
(7, 45, 'Rua 7', 'Posicao 7'),
(8, 75, 'Rua 8', 'Posicao 8'),
(9, 55, 'Rua 9', 'Posicao 9'),
(10, 65, 'Rua 10', 'Posicao 10');

-- Inserção de registros na tabela Infracao
INSERT INTO Infracao (idInfracao, velocidade, dataInfra, idTipoInfra, placaV, cpfA, idLocalidade, numBoleto) VALUES
(1, 80, '2023-05-01', 1, 'ABC1234', 1, 1, 10001),
(2, 70, '2023-05-02', 2, 'DEF5678', 2, 2, 10002),
(3, 60, '2023-05-03', 3, 'GHI9012', 3, 3, 10003),
(4, 75, '2023-05-04', 4, 'JKL3456', 4, 4, 10004),
(5, 65, '2023-05-05', 5, 'MNO7890', 5, 5, 10005),
(6, 55, '2023-05-06', 6, 'PQR2345', 6, 6, 10006),
(7, 50, '2023-05-07', 7, 'STU6789', 7, 7, 10007),
(8, 45, '2023-05-08', 8, 'VWX0123', 8, 8, 10008),
(9, 40, '2023-05-09', 9, 'YZA4567', 9, 9, 10009),
(10, 35, '2023-05-10', 10, 'BCD8901', 10, 10, 10010);

-- Elimina os registros de carros que possuem duas portas:
DELETE FROM Carro WHERE numPortas = 2;



