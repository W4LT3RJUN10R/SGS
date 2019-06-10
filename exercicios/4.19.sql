/*
4.19 Dê exemplo de uma consulta utilizando a cláusula INTERSECT.
*/

/*
    As mesmas seleções do exercício 4.18 são utilizadas aqui para demonstrar a cláusula INTERSECT. Nota-se que a obrigatoriedade de operar sobre tabelas de estrutura idência é compartilhada entre estes dois recusos.
    O resultado neste caso é a seleção da interseção entre o conjunto de solicitações do cliente 5 e o conjunto de solicitações sobre o produto 19.
    No dataset destre trabalho, apenas duas linhas pertencem a interseção
*/

SELECT * FROM (
    SELECT Solicitacao.codigo as solicitacao, Solicitacao.produto, Solicitacao.cliente FROM Solicitacao INNER JOIN Produto
    ON Solicitacao.produto = Produto.codigo
    INNER JOIN Cliente
    ON Solicitacao.cliente = Cliente.codigo
    WHERE Cliente.codigo = 5
    
    INTERSECT
    
    SELECT Solicitacao.codigo as solicitacao, Solicitacao.produto, Solicitacao.cliente FROM Solicitacao INNER JOIN Produto
    ON Solicitacao.produto = Produto.codigo
    INNER JOIN Cliente
    ON Solicitacao.cliente = Cliente.codigo
    WHERE Produto.codigo = 19
);
