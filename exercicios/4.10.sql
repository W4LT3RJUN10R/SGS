/*
    A cláusula GROUP BY serve para regrupar as linhas de uma tabela em conjuntos que tem algo em comum. Aquilo que as linhas agrupadas tem em comum é o conteúdo da coluna informada logo após o comando GROUP BY. Por exemplo, no comando SQL abaixo, agrupamos as linhas da tabela Ocorrencia por técnico, de forma que subconjuntos de occorências, com o técnico em comum, são criados em memória principal. Projetamos o código do técnico (Ocorrencia.tecnico) e o número de ocorrências em cada subconjunto.
*/

SELECT Ocorrencia.tecnico, COUNT(*) FROM Ocorrencia
GROUP BY Ocorrencia.tecnico;
