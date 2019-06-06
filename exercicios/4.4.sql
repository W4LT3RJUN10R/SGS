/*
4.4 Criar uma visão com o custo total das manutenções realizadas para cada cliente. Considere apenas as solicitações atendidas. Esta visão é atualizável? Porque?
*/

CREATE OR REPLACE VIEW CustoPorCliente AS
SELECT Solicitacao.cliente, SUM(Ocorrencia.duracao * Categoria.precoHora) as custo
FROM Categoria INNER JOIN Solicitacao ON Solicitacao.categoria = Categoria.codigo
INNER JOIN Ocorrencia ON Ocorrencia.solicitacao = Solicitacao.codigo
WHERE Solicitacao.situacao = 3 GROUP BY Solicitacao.cliente;

SELECT * FROM CustoPorCliente;
