USE sucos_vendas;

SELECT * FROM tabela_de_produtos WHERE sabor LIKE '%Maçã%';

SELECT * FROM tabela_de_produtos WHERE sabor LIKE '%Maçã%'
AND embalagem = 'PET';


# Buscando clientes com último nome Mattos que sejam de fora de SP
SELECT * FROM tabela_de_clientes WHERE nome LIKE '%Mattos%'
AND NOT (cidade = 'São Paulo');