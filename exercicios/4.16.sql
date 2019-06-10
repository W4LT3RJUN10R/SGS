/*
4.16 Dê exemplo de uma subconsulta utilizada dentro de um comando Update.
*/

/*
No comando UPDATE abaixo, 3 subconsultas são utilizadas.
A mais interna (a primeira a ser executada) identifica a categoria da Solicitação 10.
O resultado dela é utilizado para selecionar o preço por hora daquela categoria.
Este valor é multiplicado pelo resultado de uma terceira subconsulta, que retorna a soma de todas as ocorrências associadas à solicitação 10.
O resultado dessa multiplicação é ustilizado pelo UPDATE, para registrar, na coluna custoTotal da solicitação 10, seu custo total.

Note que o único valor constante neste update é o código 10. Esta consulta é, portanto, utilizável por uma PROCEDURE que recebe o código da Solicitação.
*/

UPDATE Solicitacao SET custoTotal = (
    (
        SELECT precoHora FROM Categoria WHERE codigo = (
            SELECT categoria FROM Solicitacao WHERE codigo = 10
        )
    ) * (
        SELECT SUM(duracao) FROM Ocorrencia WHERE solicitacao = 10
    )
) WHERE codigo = 10;
