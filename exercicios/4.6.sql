/*
4.6 Listar a descrição da categoria de problema que mais ocorreu nos últimos 2 meses.
*/

SELECT descricao FROM Categoria
WHERE codigo = (
    SELECT codigo FROM (
        SELECT Categoria.codigo, COUNT(Categoria.codigo) as c FROM Categoria INNER JOIN Solicitacao ON Categoria.codigo = Solicitacao.categoria
        WHERE Solicitacao.dia >= SYSDATE-60
        GROUP BY Categoria.codigo
    ) WHERE c = (
        SELECT MAX(COUNT(Categoria.codigo)) FROM Categoria INNER JOIN Solicitacao ON Categoria.codigo = Solicitacao.categoria
        WHERE Solicitacao.dia >= SYSDATE-60
        GROUP BY Categoria.codigo
    )
);
