/*
4.18 Dê exemplo de uma consulta utilizando a cláusula MINUS
*/

/*
A consulta abaixo apresenta os códigos das solicitações do cliente 49 que não dizem respeito ao produto 13. No dataset deste trabalho, há 4 solicitações do cliente 49 e 4 solicitações para o produto 13. Com a cláusula MINUS, podemos eliminar do resultado a interceção entre esses dois conjuntos.
*/

SELECT * FROM (
    SELECT Solicitacao.codigo as solicitacao, Solicitacao.produto, Solicitacao.cliente FROM Solicitacao INNER JOIN Produto
    ON Solicitacao.produto = Produto.codigo
    INNER JOIN Cliente
    ON Solicitacao.cliente = Cliente.codigo
    WHERE Cliente.codigo = 49
    
    MINUS
    
    SELECT Solicitacao.codigo as solicitacao, Solicitacao.produto, Solicitacao.cliente FROM Solicitacao INNER JOIN Produto
    ON Solicitacao.produto = Produto.codigo
    INNER JOIN Cliente
    ON Solicitacao.cliente = Cliente.codigo
    WHERE Produto.codigo = 13
);
