/*
    A função abaixo recebe o código de um produto e, através da junção das tabelas Solicitacao e Ocorrencia, calcula a média de duração das ocorrências para aquele produto. Isso pode ser útil para prever, com base em ocorrências passadas, quanto tempo uma nova ocorrência pode levar.
*/

CREATE OR REPLACE FUNCTION tempoMedioDeOcorrenciaPorProduto(p IN Produto.codigo%TYPE)
RETURN NUMBER
AS
duracaoMedia NUMBER;
BEGIN
    SELECT AVG(duracao) INTO duracaoMedia FROM Solicitacao INNER JOIN Ocorrencia
    ON Ocorrencia.solicitacao = Solicitacao.codigo
    WHERE produto = p;

    RETURN duracaoMedia;
END tempoMedioDeOcorrenciaPorProduto;
/

/* TESTE: produto 1 -> 26,2608696 */
SELECT tempoMedioDeOcorrenciaPorProduto(1) FROM Dual;
