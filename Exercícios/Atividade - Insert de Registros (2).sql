create table Contribuinte(
cpf int primary key,
nome VARCHAR(45),
endereco varchar(60),
telefone varchar(15)
);
create table Contribuinte_malhaFina(
malha_Fina_Identificador int,
contribuinte_cpf  int,
valor int,
quantidadePrestacoes int,

FOREIGN KEY (malha_Fina_Identificador) references MalhaFina (identificador),
FOREIGN KEY (contribuinte_cpf) references Contribuinte (cpf)
);
create table MalhaFina(
identificador int primary key auto_increment,
anoExercicio date
);
create table Declaracao_Imposto_de_Renda(

contribuinte_cpf int,
anoExercicio date primary key,
anoBase date,
valor int,
restituicao boolean,
foreign key (contribuinte_cpf) references Contribuinte (cpf)
);


INSERT INTO Contribuinte (cpf, nome, endereco, telefone)
VALUES
  (12345678901, 'João Silva', 'Rua A, 123', '(11) 1234-5678'),
  (32948023948, 'Maria Santos', 'Av. B, 456', '(22) 9876-5432'),
  (23923492389, 'Carlos Ferreira', 'Rua C, 789', '(33) 5555-5555'),
  (29343294848, 'Ana Oliveira', 'Av. D, 321', '(44) 1111-2222'),
  (28039123912, 'Pedro Souza', 'Rua E, 654', '(55) 9999-8888');


INSERT INTO Contribuinte_malhaFina (malha_Fina_Identificador, contribuinte_cpf, valor, quantidadePrestacoes)
VALUES
  (1, 12345678901, 1000, 3),
  (2, 34567890123, 2000, 2),
  (3, 56789012345, 1500, 4),
  (4, 90123456789, 500, 1),
  (5, 98765432109, 3000, 5);


INSERT INTO MalhaFina (identificador, anoExercicio)
VALUES
  (1, '2022-01-01'),
  (2, '2021-01-01'),
  (3, '2023-01-01'),
  (4, '2020-01-01'),
  (5, '2024-01-01');


INSERT INTO Declaracao_Imposto_de_Renda (contribuinte_cpf, anoExercicio, anoBase, valor, restituicao)
VALUES
  (12345678901, '2022-01-01', '2021-01-01', 5000, true),
  (34567890123, '2021-01-01', '2020-01-01', 4000, false),
  (56789012345, '2023-01-01', '2022-01-01', 3000, false),
  (90123456789, '2020-01-01', '2019-01-01', 2000, true),
  (98765432109, '2024-01-01', '2023-01-01', 6000, true);