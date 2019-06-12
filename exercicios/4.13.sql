/*
    O operador NOT IN verifica se um determinado dado (à esquerda do operador) não se encontra na lista de dados do mesmo tipo (à direita do operador). Se o dado não estiver no conjunto, o operador retorna TRUE. Basicamente, este operador faz o inverso do que IN faz. Por exemplo, na consulta abaixo, o operador NOT IN verifica, para cada linha da tabela Tecnico, se o valor da coluna codigo não está na tabela unidimencional retornada pela subconsulta. Como a subconsulta retorna uma lista de códigos de tecnicos que tem mais de 50 ocorrências, listamos os nomes dos técnicos que atenderam até 50 occorências.
*/

SELECT nome FROM Tecnico WHERE codigo NOT IN (
    SELECT tecnico FROM Ocorrencia
    GROUP BY tecnico
    HAVING COUNT(*) > 50
);
