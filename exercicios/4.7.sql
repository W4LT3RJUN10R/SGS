/*
4.7 Liste o código do produto que nunca teve uma solicitação de manutenção.
*/

/*
1) quais as tabelas necessárias na consulta?
2) Quais as equações de junção requeridas para que apenas as linhas relacionadas sejam preservadas no resultado
3) Quais os filtros complementares necessários na cláusula WHERE para que as linhas desejadas sejam consideradas?
4) Precisa agrupar? Qual(is) coluna(s) é(são) critério(s) de agrupamento?
5) Precisa filtar os grupos na cláusula HAVING?
6) Quais colunas precisam ser projetadas?
7) Alguma ordenação é requerida?
*/

SELECT codigo FROM Produto
WHERE codigo NOT IN (
    SELECT produto FROM Solicitacao
);
