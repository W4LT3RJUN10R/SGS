/*
4.14 Dê exemplo de um comando utilizando subconsultas que utilize o operador exists
*/

/*
O operador EXISTS deve ser utilizado na cláusula WHERE e deve ser seguido de uma subconsulta do tipo SELECT. Se a subconsulta retornar uma ou mais linhas, a cláusula WHERE que precede EXISTS vai ser avaliada em TRUE. Por exemplo, a consulta abaixo lista, no dataset deste trabalho, os 54 clientes que estão associados a pelo menos uma solicitação. A subconsulta vai retornar um certo número de linhas para cada Cliente, com base em quantas ocorrências daquele cliente tem na tabela Solicitacao. O conjunto de resultados será zero quando o cliente da vez não tiver nenhum solicitação. Cada vez que isso acontece, o operador EXISTS faz com que a cláusula WHERE retorne FALSE e a linha da tabela Cliente não é selecionada.
*/

SELECT nome FROM Cliente
WHERE EXISTS (
    SELECT 1 FROM Solicitacao
    WHERE Solicitacao.cliente = Cliente.codigo
);
