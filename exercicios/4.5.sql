SELECT
    Ocorrencia.codigo,
    Ocorrencia.dia,
    Ocorrencia.descricao,
    Ocorrencia.duracao,
    Ocorrencia.tecnico,
    Ocorrencia.solicitacao
FROM Solicitacao INNER JOIN Ocorrencia
ON Solicitacao.codigo = Ocorrencia.solicitacao
WHERE Solicitacao.situacao = 1;
