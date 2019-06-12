/*
8- Escreva uma procedure que calcule o custo de uma manutenção. Esta procedure deve receber como parâmetro o código da Solicitação e somar as horas de todas as ocorrências realizadas para esta solicitação. Considerar que a unidade é sempre horas inteiras (desconsiderar minutos). O custo base é

se  tipoProd = ´HW´     custo = r$20,00 por hora
    tipoProd = ´SW´     custo = r$30,00 por hora

O custo total não pode ser menor do que o preço mínimo para a categoria.
*/

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
