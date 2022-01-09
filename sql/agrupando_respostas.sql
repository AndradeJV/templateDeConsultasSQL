USE sucos_vendas;


SELECT * FROM tabela_de_clientes;

SELECT estado, limite_de_credito FROM tabela_de_clientes;

SELECT estado, SUM(limite_de_credito) AS limite_total FROM tabela_de_clientes GROUP BY estado;


SELECT embalagem, preco_de_lista FROM tabela_de_produtos;

SELECT embalagem, MAX(preco_de_lista) AS maior_preco FROM tabela_de_produtos GROUP BY embalagem;


SELECT embalagem, COUNT(*) AS contador FROM tabela_de_produtos GROUP BY embalagem;


SELECT estado, AVG(limite_de_credito) AS limite_total FROM tabela_de_clientes GROUP BY estado;



SELECT * FROM tabela_de_clientes;
SELECT bairro, SUM(limite_de_credito) AS limite FROM tabela_de_clientes 
WHERE estado = 'SP' 
GROUP BY bairro
ORDER BY bairro;