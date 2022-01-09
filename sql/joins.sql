USE sucos_vendas;

SELECT * FROM tabela_de_vendedores;
SELECT * FROM notas_fiscais;

SELECT * FROM tabela_de_vendedores A
INNER JOIN notas_fiscais B
ON A.matricula = B.matricula;


SELECT A.matricula, A.nome, COUNT(*) FROM tabela_de_vendedores A
INNER JOIN notas_fiscais B
ON A.matricula = B.matricula
GROUP BY A.matricula, A.nome;