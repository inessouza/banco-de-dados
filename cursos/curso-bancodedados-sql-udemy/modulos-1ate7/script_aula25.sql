-- FUNÇÕES DE AGREGAÇÃO:

-- Função count(*): Conta os regristros de uma tabela:

SELECT COUNT(*) FROM CLIENTE;

SELECT COUNT(*) AS "Quantidade de registros da tabela Cliente" FROM CLIENTE;

-- Operador Group By:

SELECT SEXO, COUNT(*) FROM CLIENTE GROUP BY SEXO;