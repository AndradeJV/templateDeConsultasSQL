USE sucos_vendas;

SELECT embalagem, tamanho FROM tabela_de_produtos;


SELECT DISTINCT embalagem, tamanho FROM tabela_de_produtos;

SELECT DISTINCT * FROM tabela_de_produtos WHERE sabor = 'Laranja';

SELECT DISTINCT bairro, cidade FROM tabela_de_clientes;