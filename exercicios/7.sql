/*
7- Escreva um trigger que ao excluir uma solicitação exclua também as suas ocorrências.
*/

CREATE OR REPLACE TRIGGER excluirOcorrenciasDependentes
BEFORE DELETE ON Solicitacao
FOR EACH ROW
BEGIN
    DELETE FROM Ocorrencia WHERE solicitacao = :OLD.codigo;
END excluirOcorrenciasDependentes;
/

/* TESTE
A solicitação 50 tem 8 ocorrências. Zero devem existir após sua exclusão.
PASSANDO */
SELECT COUNT(*) FROM Ocorrencia WHERE Ocorrencia.solicitacao = 50; /* 8 */
DELETE FROM Solicitacao WHERE codigo = 50;
SELECT COUNT(*) FROM Ocorrencia WHERE Ocorrencia.solicitacao = 50; /* 0 */
