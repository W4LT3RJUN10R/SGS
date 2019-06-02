/*
4.2 Listar o produto que possui o maior número de solicitações cadastradas já atendidas.
*/

select * from Produto where Produto.codigo = (
    select Solicitacao.produto from Solicitacao
    group by Solicitacao.produto
    having count(*) = (
        select max(count(*)) from Solicitacao group by produto
    )
);
