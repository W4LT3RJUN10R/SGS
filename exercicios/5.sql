/*
5-Escreva uma função que seja útil para a lógica de negócios de seu sistema e indique o contexto de sua utilização.
*/

/*
A função abaixo recebe o código de uma solicitação e:
1) consulta o preço por hora da categoria de problema associada à solicitação, guardando este valor na variável preco;
2) consulta o somatório das durações das ocorrências associadas à solicitação, guardando o total na variável duracaoTotal;
3) retorna o produto destes dois números.

A função é útil para determinar o custo total de uma solicitação.
*/

CREATE OR REPLACE FUNCTION calcularCustoTotal(s IN Solicitacao.codigo%TYPE)
RETURN NUMBER
AS
preco NUMBER(11, 2);
ducaraoTotal NUMBER(11, 2);
BEGIN
    SELECT precoHora INTO preco FROM Categoria WHERE codigo = (
        SELECT categoria FROM Solicitacao WHERE codigo = s
    );

    SELECT SUM(duracao) INTO ducaraoTotal FROM Ocorrencia WHERE solicitacao = s;

    RETURN preco*ducaraoTotal;
END;
/
