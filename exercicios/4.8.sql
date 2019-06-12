SELECT nome FROM Tecnico WHERE codigo IN (
    SELECT Ocorrencia.tecnico FROM Solicitacao INNER JOIN Ocorrencia
    ON Ocorrencia.solicitacao = Solicitacao.codigo INNER JOIN Tecnico
    ON Ocorrencia.tecnico = Tecnico.codigo
    WHERE situacao = 2
    GROUP BY Ocorrencia.tecnico
    HAVING COUNT(*) > 2
);
