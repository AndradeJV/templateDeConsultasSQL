USE sucos_vendas;

SELECT * FROM tabela_de_produtos WHERE sabor = 'Manga'
OR tamanho = '470 ml';

SELECT * FROM tabela_de_produtos WHERE sabor = 'Manga'
AND tamanho = '470 ml';

SELECT * FROM tabela_de_produtos WHERE NOT( sabor = 'Manga'
AND tamanho = '470 ml');

SELECT * FROM tabela_de_produtos WHERE NOT( sabor = 'Manga'
OR tamanho = '470 ml');

SELECT * FROM tabela_de_produtos WHERE NOT( sabor = 'Manga')
AND tamanho = '470 ml';


SELECT * FROM tabela_de_produtos WHERE sabor IN  ('Laranja', 'Manga');



SELECT * FROM tabela_de_clientes WHERE cidade IN ('Rio de Janeiro', 'São Paulo') 
AND idade >= 20
AND NOT (sexo = 'F')
AND limite_de_credito > 1000
AND NOT (primeira_compra = 1);