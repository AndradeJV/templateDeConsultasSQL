USE sucos_vendas;


SELECT * FROM tabela_de_clientes;

SELECT *,
  CASE
    WHEN idade >= 25 THEN 'Cliente experiente'
    WHEN idade < 25 THEN 'Cliente não experiente'
    ELSE 'Cliente menor de idade'
  END
FROM tabela_de_clientes
WHERE sexo = 'M'
ORDER BY nome;