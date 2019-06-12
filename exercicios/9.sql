CREATE TABLE Mensagem (
    codigo NUMBER(5, 0),
    produto VARCHAR2(128 BYTE),
    classificacao VARCHAR2(128 BYTE)
);
ALTER TABLE Mensagem ADD CONSTRAINT codigo PRIMARY KEY (codigo);
CREATE SEQUENCE Mensagem START WITH 1;

CREATE OR REPLACE PROCEDURE classificarRequisicao(pCod NUMBER)
AS
total NUMBER;
nome varchar2(128 BYTE);
BEGIN

    SELECT produto.nome INTO nome FROM produto WHERE produto.codigo = pCod;
    SELECT COUNT(solicitacao.codigo) INTO total FROM solicitacao WHERE solicitacao.produto = pCod;

IF total >= 15 THEN
    INSERT INTO Mensagem VALUES (pCod, nome, 'Produto Ruim – nao recomendar');
    END IF;
IF total >=5 AND total < 15 THEN
    INSERT INTO Mensagem VALUES (pCod, nome, 'Produto a ser verificado');
    END IF;
IF total > 0 AND total < 5 THEN
    INSERT INTO Mensagem VALUES (pCod, nome, 'Produto Bom');
    END IF;
IF total = 0 THEN
    INSERT INTO Mensagem VALUES (pCod, nome, 'Produto Excelente – recomendar');
    END IF;
END;



/*exec classificarrequisicao(8);*/
