/*
4.11 Explique para que serve a claúsula having e dê 1 exemplo de sua utilização.
*/

/*
A cláusula HAVING serve para limitar o conjunto resultante de uma pesquisa que contém uma função de agregação. Por exemplo, se utilizarmos uma função SUM, que é de agregação, na cláusula SELECT, podemos filtrar com base na adição fornecida pela função SUM, através da cláusula HAVING. Por exemplo, na requisição abaixo, regrupamos as ocorrências em suconjuntos que tem o técnico em comum, contamos os elementos em cada subconjunto e selecionamos apenas os conjuntos que tem mais de 50 ocorrências, através da cláusula HAVING.
*/

SELECT tecnico, COUNT(*) as ocorrencias
FROM Ocorrencia
GROUP BY tecnico
HAVING COUNT(*) > 50;
