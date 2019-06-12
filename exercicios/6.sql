/*
6- Escreva um trigger que, ao incluir-se uma ocorrência, se já houver mais de 3 ocorrências da mesma solicitação, grava em uma tabela de log a mensagem "Situação Grave – grande número de ocorrências <cod_solicitacao> <nome_cliente> <qtde>".
*/

/* Criar tabela de logs */
CREATE TABLE Log (
    codigo NUMBER(5, 0),
    mensagem VARCHAR2(256)
);
ALTER TABLE Log ADD CONSTRAINT pkLog PRIMARY KEY (codigo);
CREATE SEQUENCE LogSeq START WITH 1;

/* Criar trigger */
CREATE OR REPLACE TRIGGER MuitasOcorrencias
BEFORE INSERT ON Ocorrencia
FOR EACH ROW
DECLARE
n NUMBER;
cod_cli Cliente.codigo%TYPE;
nome_cli Cliente.nome%TYPE;
BEGIN
    SELECT COUNT(*) INTO n FROM Ocorrencia WHERE solicitacao = :NEW.solicitacao;
    SELECT cliente INTO cod_cli FROM Solicitacao WHERE codigo = :NEW.solicitacao;
    SELECT nome INTO nome_cli FROM Cliente WHERE codigo = cod_cli;

    IF n > 3 THEN
        INSERT INTO Log (codigo, mensagem) VALUES (LogSeq.nextval, 'Situação Grave – grande número de ocorrências ' || :NEW.solicitacao || ' ' || nome_cli || ' ' || (n+1));
    END IF;
END MuitasOcorrencias;
/

/* TESTES */
/*
    A solicitação 71 tem apenas uma ocorrência. Incluir mais uma não deve acionar o trigger. PASSANDO
*/
insert into Ocorrencia
(codigo, solicitacao, tecnico, dia, descricao, duracao)
values
(514, 71, 8, '1/11/2018', 'abc', 1);
SELECT * FROM Log;

/*
    A solicitação 6 tem 3 ocorrências. Incluir uma 4ª não deve acionar o trigger, mas incluir uma 5ª deve. 
*/
/* +1 PASSANDO */
insert into Ocorrencia
(codigo, solicitacao, tecnico, dia, descricao, duracao)
values
(515, 6, 10, '1/11/2018', 'abc', 1);
SELECT * FROM Log;

/* +2 PASSANDO */
insert into Ocorrencia
(codigo, solicitacao, tecnico, dia, descricao, duracao)
values
(516, 6, 10, '1/11/2018', 'abc', 1);
SELECT * FROM Log;

/*
    A solicitação 52 tem 4 ocorrências. Incluir mais uma deve acionar o trigger. PASSANDO
*/
insert into Ocorrencia
(codigo, solicitacao, tecnico, dia, descricao, duracao)
values
(517, 52, 10, '1/11/2018', 'abc', 1);
SELECT * FROM Log;

/*
    A solicitação 64 tem 5 ocorrências. Incluir mais uma deve acionar o trigger. PASSANDO
*/
insert into Ocorrencia
(codigo, solicitacao, tecnico, dia, descricao, duracao)
values
(518, 64, 10, '1/11/2018', 'abc', 1);
SELECT * FROM Log;

/*
    A solicitação 50 tem 7 ocorrências. Incluir mais uma deve acionar o trigger. PASSANDO
*/
insert into Ocorrencia
(codigo, solicitacao, tecnico, dia, descricao, duracao)
values
(519, 50, 10, '1/11/2018', 'abc', 1);
SELECT * FROM Log;
