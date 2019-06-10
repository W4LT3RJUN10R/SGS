/*
4.8 Listar o nome dos técnicos que tenham solicitações parcialmente atendidas e para quem que já exista mais de 2 ocorrências para a solicitação.
*/

SELECT nome FROM Tecnico WHERE codigo IN (
    SELECT Ocorrencia.tecnico FROM Solicitacao INNER JOIN Ocorrencia
    ON Ocorrencia.solicitacao = Solicitacao.codigo INNER JOIN Tecnico
    ON Ocorrencia.tecnico = Tecnico.codigo
    WHERE situacao = 2
    GROUP BY Ocorrencia.tecnico
    HAVING COUNT(*) > 2
);
