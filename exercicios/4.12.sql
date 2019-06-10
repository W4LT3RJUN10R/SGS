/*
4.12 Dê exemplo de um comando utilizando subconsultas que utilize o operador in.
*/

/*
O operador IN serve para verificar se um determinado dado se encontra em um conjunto de dados do mesmo tipo. Por exemplo, na consulta abaixo, usamos o resultado unidimencional da subconsulta (que retorna uma lista de códigos de tecnicos com mais de 50 ocorrências), para apresentar os nomes desses técnicos. O operador IN verifica, para cada linha da tabela Tecnico, se o código figura dentro da lista de códigos retornados pela subconsulta.
*/

SELECT nome FROM Tecnico WHERE codigo IN (
    SELECT tecnico FROM Ocorrencia
    GROUP BY tecnico
    HAVING COUNT(*) > 50
);
