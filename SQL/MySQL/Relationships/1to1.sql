-- criando database: 
    CREATE DATABASE IF NOT EXISTS relationships;

-- selecionando database:
    USE relationships;

-- criando tabela cliente: 
    CREATE TABLE IF NOT EXISTS cliente(
    id_cliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(20),
    sexo_cliente ENUM('M','F') NOT NULL,
    STATUS ENUM('Aprovado','Reprovado') NOT NULL
);

-- mostra a estrutura da tabela: 
    describe cliente / desc cliente;

-- inserindo dados tabela cliente: 
    INSERT INTO cliente(nome, sexo_cliente, STATUS) VALUES('Carlos Souza', 'M', 'Aprovado');
    INSERT INTO cliente(nome, sexo_cliente, STATUS) VALUES('Maria Cristina', 'F', 'Aprovado');
    INSERT INTO cliente(nome, sexo_cliente, STATUS) VALUES('Eustaquio', 'M', 'Aprovado');

-- criando tabela documento: 
    CREATE TABLE IF NOT EXISTS documento(
    id_documento INT NOT NULL PRIMARY KEY auto_increment,
    id_clienteFK INT NOT NULL, 
    tipo_documento enum('RG', 'CPF') NOT NULL,
    numero_documento VARCHAR(14) NOT NULL,
    FOREIGN KEY(id_clienteFK) references cliente(id_cliente)
);

-- comando para esvaziar a tabela e mantém a sua estrutura:
    TRUNCATE cliente; 

-- inserindo dados tabela documento: 
    INSERT INTO documento(id_clienteFK, tipo_documento, numero_documento) values(1, 'RG', '44.722.563-2');
    INSERT INTO documento(id_clienteFK, tipo_documento, numero_documento) values(2, 'CPF', '356.763.551-01');
    INSERT INTO documento(id_clienteFK, tipo_documento, numero_documento) values(3, 'RG', '23.422.122-X');

-- selecionar por colunas: 
   SELECT tipo_documento FROM documento;
   SELECT tipo_documento, numero_documento FROM documento;

-- selecionar tudo (*) tabela: 
   SELECT * FROM cliente;
   SELECT * FROM documento;
