/*
    No nosso caso, a primeira tabela criada foi Tipo. Decidimos alterar a tabela Cliente, no lugar de Tipo, por nos parecer que, para um sistema como este, registrar a data de inserção de um cliente é mais útil do que a dos tipos recorrentes de problemas.
*/

ALTER TABLE Cliente ADD dataDeInclusao DATE;
UPDATE Cliente SET dataDeInclusao = SYSDATE;
