/*
6- Escreva um trigger que, ao incluir-se uma ocorrência, se já houver mais de 3 ocorrências da mesma solicitação, grava em uma tabela de log a mensagem "Situação Grave – grande número de ocorrências <cod_solicitacao> <nome_cliente> <qtde>".
*/

-- Criar tabela de logs
CREATE TABLE LOG (
    codigo NUMBER(5, 0),
    mensagem VARCHAR2(256)
);

-- Função que conta o número de ocorrências para a solicitação informada
CREATE OR REPLACE FUNCTION contaOcorrencias(s Solicitacao.codigo%TYPE)
AS
BEGIN
    RETURN SELECT
END contaOcorrencias
/

CREATE OR REPLACE TRIGGER MuitasOcorrencias
BEFORE INSERT ON Ocorrencia
BEGIN
    IF 
    THEN
        -- 
    END IF;
END MuitasOcorrencias;
/
