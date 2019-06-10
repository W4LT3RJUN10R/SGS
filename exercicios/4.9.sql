/*
4.9 Acrescente uma coluna nova “data de inclusão” no formato date, na primeira tabela criada. Altere o valor desta coluna colocando a data do sistema.
*/

/* Comentários
    "na primeira tabela criada"?
    No nosso caso, a primeira tabela criada foi Tipo. Decidimos alterar a tabela Cliente, no lugar de Tipo, por nos parecer que, para um sistema como este, registrar a data de inserção de um cliente é mais útil do que a dos tipos recorrentes de problemas.
*/

ALTER TABLE Cliente ADD dataDeInclusao DATE;
UPDATE Cliente SET dataDeInclusao = SYSDATE;
