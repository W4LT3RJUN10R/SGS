SELECT * from Cliente INNER JOIN Solicitacao
ON Cliente.codigo = Solicitacao.cliente
WHERE to_char(dia, 'MM-YYYY') = '06-2019';
