CREATE OR REPLACE PROCEDURE custoManutencao(pCod NUMBER)
AS
custoHora NUMBER(8,2);
totalDuracao NUMBER(3,0);
cTotal  NUMBER(8,2);
BEGIN

SELECT precoHora INTO custoHora FROM Categoria
WHERE codigo = (SELECT categoria FROM Solicitacao WHERE codigo = pCod);

SELECT SUM (ocorrencia.duracao) INTO totalDuracao FROM Ocorrencia WHERE solicitacao = pCod;

cTotal := custoHora * totalDuracao;

UPDATE solicitacao SET custoTotal = cTotal WHERE pCod = solicitacao.codigo;
END;