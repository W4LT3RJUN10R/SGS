CREATE OR REPLACE PROCEDURE custoManutencao(pCod Solicitacao.codigo%TYPE)
AS
custoHora Categoria.precoHora%TYPE;
totalDuracao NUMBER;
cTotal NUMBER(8, 2);
BEGIN
    SELECT precoHora INTO custoHora FROM Categoria
    WHERE codigo = (SELECT categoria FROM Solicitacao WHERE codigo = pCod);

    SELECT SUM(Ocorrencia.duracao) INTO totalDuracao FROM Ocorrencia WHERE solicitacao = pCod;

    cTotal := custoHora * totalDuracao;

    UPDATE Solicitacao SET custoTotal = cTotal WHERE pCod = Solicitacao.codigo;
END custoManutencao;
/
