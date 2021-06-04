-- COMANDO SELECT:

-- seleção, projeção e junção:

SELECT NOW() as DATA_HORA, 'FELIPE MAFRA' AS PROFESSOR;

SELECT 'FELIPE MAFRA';

SELECT 'BANCO DE DADOS';

-- alias de colunas: 

SELECT NOME AS CLIENTE, SEXO, EMAIL FROM CLIENTE;

SELECT NOME, SEXO, EMAIL, ENDERECO FROM CLIENTE;

SELECT   EMAIL, SEXO, ENDERECO, NOME FROM CLIENTE;

SELECT   EMAIL, SEXO, ENDERECO, NOME, NOW() AS DATA_HORA FROM CLIENTE;

-- usar este comando com * somente para fins acadêmicos, pois por mostrar todos os dados isso acarreta em trafégo de dados desnecessários pela rede:

SELECT * FROM CLIENTE;