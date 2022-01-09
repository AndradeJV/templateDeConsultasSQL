USE sucos_vendas;

SELECT DISTINCT bairro FROM tabela_de_vendedores;

SELECT * FROM tabela_de_clientes WHERE bairro IN ('Tijuca', 'Jardins', 'Copacabana', 'Santo Amaro');

SELECT * FROM tabela_de_clientes WHERE bairro 
  IN (
    SELECT DISTINCT bairro FROM tabela_de_vendedores
    WHERE bairro <> 'Tijuca'
  );


SELECT x.embalagem, x.preco_maximo 
  FROM (
    SELECT embalagem, MAX(preco_de_lista) AS preco_maximo FROM tabela_de_produtos
    GROUP BY embalagem
  ) 
  x WHERE x.preco_maximo >= 10;