USE sucos_vendas;

SELECT estado, SUM(limite_de_credito) AS soma_limite FROM tabela_de_clientes
GROUP BY estado
HAVING SUM(limite_de_credito) > 820000;

SELECT embalagem, MAX(preco_de_lista) AS maior_preco, MIN(preco_de_lista) as menor_preco FROM tabela_de_produtos
WHERE embalagem <> 'pet'
GROUP BY embalagem
HAVING SUM(preco_de_lista) <= 80
AND MAX(preco_de_lista) >= 5;


SELECT * FROM notas_fiscais;

  SELECT CPF, COUNT(*) FROM notas_fiscais
  WHERE YEAR(DATA_VENDA) = 2016
  GROUP BY CPF
  HAVING COUNT(*) > 2000