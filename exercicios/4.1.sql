/*
4.1 Listar o código do cliente, o nome do cliente e todas as solicitações efetuados por ele no mês de junho/2019.
*/

SELECT * from Cliente INNER JOIN Solicitacao
ON Cliente.codigo = Solicitacao.cliente
WHERE to_char(dia, 'MM-YYYY') = '06-2019';
