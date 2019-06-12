/*
    A consulta abaixo apresenta os códigos das solicitações do cliente 5 que não dizem respeito ao produto 19. No dataset deste trabalho, há 5 solicitações do cliente 5 e 12 solicitações para o produto 19. Com a cláusula MINUS, podemos eliminar do resultado a interceção entre esses dois conjuntos.
*/

SELECT * FROM (
    SELECT Solicitacao.codigo as solicitacao, Solicitacao.produto, Solicitacao.cliente FROM Solicitacao INNER JOIN Produto
    ON Solicitacao.produto = Produto.codigo
    INNER JOIN Cliente
    ON Solicitacao.cliente = Cliente.codigo
    WHERE Cliente.codigo = 5

    MINUS

    SELECT Solicitacao.codigo as solicitacao, Solicitacao.produto, Solicitacao.cliente FROM Solicitacao INNER JOIN Produto
    ON Solicitacao.produto = Produto.codigo
    INNER JOIN Cliente
    ON Solicitacao.cliente = Cliente.codigo
    WHERE Produto.codigo = 19
);
