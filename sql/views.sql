USE sucos_vendas;

SELECT x.embalagem, x.preco_maximo 
  FROM (
    SELECT embalagem, MAX(preco_de_lista) AS preco_maximo FROM tabela_de_produtos
    GROUP BY embalagem
  ) 
  x WHERE x.preco_maximo >= 10;

CREATE VIEW `VW_Maiores_Embalagens` AS 
  SELECT x.embalagem, x.preco_maximo 
  FROM (
    SELECT embalagem, MAX(preco_de_lista) AS preco_maximo FROM tabela_de_produtos
    GROUP BY embalagem
  ) 
  x WHERE x.preco_maximo >= 10;


SELECT A.nome_do_produto, A.embalagem, A.preco_de_lista, X.preco_maximo
  FROM tabela_de_produtos A
  INNER JOIN vw_maiores_embalagens X
  ON A.embalagem = X.embalagem;