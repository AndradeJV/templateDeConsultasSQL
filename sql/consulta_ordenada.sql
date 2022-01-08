USE sucos_vendas;

SELECT * FROM tabela_de_produtos;

SELECT * FROM tabela_de_produtos ORDER BY preco_de_lista;

# Do maior para o menor
SELECT * FROM tabela_de_produtos ORDER BY preco_de_lista DESC;


SELECT * FROM tabela_de_produtos ORDER BY nome_do_produto;

SELECT * FROM tabela_de_produtos ORDER BY nome_do_produto DESC;


SELECT * FROM tabela_de_produtos ORDER BY embalagem, nome_do_produto;

SELECT * FROM tabela_de_produtos ORDER BY embalagem DESC, nome_do_produto ASC;