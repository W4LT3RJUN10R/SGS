/*
4.15 Dê exemplo de um comando utilizando subconsultas que utilize o operador not exists.
*/

/*
O operador NOT EXISTS funciona de maneira inversa ao EXISTS. Seu posicionamento é similar, insto é, na cláusua WHERE, seguido de uma subconsulta, e ele retorna TRUE apenas quando a subconsulta não retorna linha alguma. No exemplo abaixo, a subconsulta retorna uma linha para cada solicitação cujo código do cliente corresponde a o cliente da vez, de forma que são mostrados os nomes dos clientes que nunca fizerem nenhum pedido.
*/

SELECT nome FROM Cliente
WHERE NOT EXISTS (
    SELECT 1 FROM Solicitacao
    WHERE Solicitacao.cliente = Cliente.codigo
);
