CREATE OR REPLACE VIEW CustoPorCliente AS
SELECT Solicitacao.cliente, SUM(Ocorrencia.duracao * Categoria.precoHora) as custo
FROM Categoria INNER JOIN Solicitacao ON Solicitacao.categoria = Categoria.codigo
INNER JOIN Ocorrencia ON Ocorrencia.solicitacao = Solicitacao.codigo
WHERE Solicitacao.situacao = 3 GROUP BY Solicitacao.cliente;

SELECT * FROM CustoPorCliente;
