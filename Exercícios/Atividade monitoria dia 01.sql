create table Cliente (
codigoCliente int primary key auto_increment,
nomeCliente varchar (30),
dataNasc date,
genero varchar(30),
numeroTel varchar(10),
email varchar(30),
senha varchar(30)
);

create table Estabelecimento (
codigoEstabelecimento int primary key auto_increment,
nomeLegal varchar (30),
cnpj varchar (30),
endereco varchar (30),
numeroTelEstabelecimento varchar (30),
horaAtendimento time,
emailEstabelecimento varchar (30),
senhaEstabelecimento varchar (30)
);

create table Entregador (
idEntregador int primary key auto_increment,
nomeEntregador varchar (30),
cnh varchar (2),
cpf varchar (30),
endereco varchar (30),
veiculo varchar (30)
);

create table Pedido (
numero int,
dataEmissao date,
situacao boolean
);

create table Produto (
codigo int primary key auto_increment,
nomeProduto varchar (30),
descricao varchar (30),
preco double
);

create table pagamento (
codigo int primary key auto_increment,
troco double,
valorPagamento double,
formaPagamento varchar (30)
);

-- Inserção de registros na tabela cliente
INSERT INTO cliente (codigo, nome, data_nascimento, genero, endereco, numero_telefone, email, senha)
VALUES
  (1, 'Maria Oliveira', '1995-08-20', 'Feminino', 'Rua A, 123', '987654321', 'maria@example.com', 'senha123'),
  (2, 'Ana Santos', '1987-03-12', 'Feminino', 'Rua B, 456', '123456789', 'ana@example.com', 'senha456'),
  (3, 'João Silva', '1990-05-15', 'Masculino', 'Rua C, 789', '999999999', 'joao@example.com', 'senha789'),
  (4, 'Mariana Costa', '1998-07-10', 'Feminino', 'Rua D, 789', '888888888', 'mariana@example.com', 'senha987'),
  (5, 'Patricia Souza', '1985-11-25', 'Feminino', 'Rua E, 123', '777777777', 'patricia@example.com', 'senha654'),
  (6, 'Pedro Oliveira', '1992-09-02', 'Masculino', 'Rua F, 456', '666666666', 'pedro@example.com', 'senha321');

-- Inserção de registros na tabela estabelecimento
INSERT INTO estabelecimento (codigo, nome_legal, cnpj, endereco, numero_telefone, horario_atendimento, email, senha, codigo_produto)
VALUES
  (1, 'Restaurante A', '12345678901234', 'Avenida X, 123', '111111111', '08:00-18:00', 'restauranteA@example.com', 'senhaA', 1),
  (2, 'Restaurante B', '56789012345678', 'Avenida Y, 456', '222222222', '09:00-19:00', 'restauranteB@example.com', 'senhaB', 2),
  (3, 'Restaurante C', '90123456789012', 'Avenida Z, 789', '333333333', '10:00-20:00', 'restauranteC@example.com', 'senhaC', 3),
  (4, 'Restaurante D', '34567890123456', 'Avenida W, 321', '444444444', '11:00-21:00', 'restauranteD@example.com', 'senhaD', 4),
  (5, 'Restaurante E', '78901234567890', 'Avenida V, 654', '555555555', '12:00-22:00', 'restauranteE@example.com', 'senhaE', 5),
  (6, 'Restaurante F', '23456789012345', 'Avenida U, 987', '666666666', '13:00-23:00', 'restauranteF@example.com', 'senhaF', 6);

-- Inserção de registros na tabela entregador
INSERT INTO entregador (identificador, nome, cnh, cpf, endereco, veiculo)
VALUES
  (1, 'Carlos Silva', '12345678', '123.456.789-10', 'Rua G, 123', 'Carro'),
  (2, 'Fernanda Oliveira', '87654321', '987.654.321-10', 'Rua H, 456', 'Moto'),
  (3, 'José Santos', '45678912', '456.789.123-10', 'Rua I, 789', 'Bicicleta'),
  (4, 'Amanda Costa', '98765432', '654.321.987-10', 'Rua J, 321', 'Moto'),
  (5, 'Roberto Souza', '65432198', '321.654.987-10', 'Rua K, 654', 'Carro'),
  (6, 'Laura Fernandes', '23456789', '789.123.456-10', 'Rua L, 987', 'Moto');

-- Inserção de registros na tabela pedido
INSERT INTO pedido (numero, data_emissao, status, codigo_cliente, codigo_restaurante, identificador_entregador)
VALUES
  (1, '2023-05-10', 'Entregue', 1, 1, 1),
  (2, '2023-05-11', 'Pendente', 2, 2, 2),
  (3, '2023-05-12', 'Entregue', 3, 3, 3),
  (4, '2023-05-13', 'Pendente', 4, 4, 4),
  (5, '2023-05-14', 'Entregue', 5, 5, 5),
  (6, '2023-05-15', 'Pendente', 6, 6, 6);

-- Inserção de registros na tabela produto
INSERT INTO produto (codigo, nome, descricao, preco)
VALUES
  (1, 'Pizza Margherita', 'Molho de tomate, queijo e manjericão', 29.90),
  (2, 'Hambúrguer Simples', 'Pão, carne e queijo', 15.50),
  (3, 'Lasanha Bolonhesa', 'Massa, molho bolonhesa e queijo', 39.90),
  (4, 'Sushi Misto', 'Salmão, atum e camarão', 49.90),
  (5, 'Salada Caesar', 'Alface, croutons, parmesão e molho Caesar', 19.90),
  (6, 'Coxinha de Frango', 'Massa de trigo e recheio de frango', 4.90);

-- Inserção de registros na tabela pagamento
INSERT INTO pagamento (codigo, troco, valor_pagamento, forma_pagamento)
VALUES
  (1, 0.00, 29.90, 'Cartão'),
  (2, 10.00, 15.50, 'Dinheiro'),
  (3, 0.00, 39.90, 'Cartão'),
  (4, 50.00, 49.90, 'Dinheiro'),
  (5, 0.00, 19.90, 'Cartão'),
  (6, 5.00, 4.90, 'Dinheiro');

SELECT * FROM cliente WHERE genero = 'Feminino';
SELECT * FROM produto ORDER BY preco;
SELECT cnh FROM entregador WHERE veiculo = 'Moto';
