CREATE OR REPLACE PROCEDURE CustoTotalManutencao(pCod Solicitacao.codigo%TYPE)

AS

TotalDuracao NUMBER;

CustoHora Categoria.precoHora%TYPE;

CustoTotal NUMBER(8, 2);

	BEGIN

		SELECT precoHora INTO custoHora FROM Categoria
	
		WHERE codigo = (SELECT categoria FROM Solicitacao WHERE codigo = pCod);

		SELECT SUM(Ocorrencia.duracao) INTO TotalDuracao FROM Ocorrencia WHERE solicitacao = pCod;

		CustoTotal := totalDuracao * CustoHora;

		UPDATE Solicitacao SET custoTotal = CustoTotal WHERE pCod = Solicitacao.codigo;

	END CustoTotalManutencao;/
