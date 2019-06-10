/*
4.17 Dê exemplo de uma subconsulta utilizada dentro de um comando DELETE.
*/

/*
A comando DELETE abaixo apaga qualquer linha na tabela Produto que não seja referenciada pela tabela Solicitacao
*/

DELETE Produto WHERE NOT EXISTS (
    SELECT produto FROM Solicitacao WHERE Solicitacao.produto = Produto.codigo
);
