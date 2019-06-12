SELECT codigo FROM Produto
WHERE codigo NOT IN (
    SELECT produto FROM Solicitacao
);
