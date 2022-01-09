USE sucos_vendas;

SELECT DISTINCT bairro FROM tabela_de_clientes;
SELECT DISTINCT bairro FROM tabela_de_vendedores;


SELECT DISTINCT bairro FROM tabela_de_clientes
UNION
SELECT DISTINCT bairro FROM tabela_de_vendedores;


SELECT DISTINCT bairro FROM tabela_de_clientes
UNION ALL
SELECT DISTINCT bairro FROM tabela_de_vendedores;