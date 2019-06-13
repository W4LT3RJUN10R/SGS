/* Criar tabela de mensagens */
CREATE TABLE Mensagem (
    codigo NUMBER(5, 0),
    codproduto NUMBER(5, 0),
    nomeproduto VARCHAR2(128 BYTE),
    classificacao VARCHAR2(128 BYTE)
);
ALTER TABLE Mensagem ADD CONSTRAINT codigo PRIMARY KEY (codigo);
CREATE SEQUENCE menSeq START WITH 1;

/* Criar PROCEDURE */
CREATE OR REPLACE PROCEDURE classificarSolicitacao(pCod Produto.codigo%TYPE)
AS
total NUMBER;
n Produto.nome%TYPE;
BEGIN
    SELECT nome INTO n FROM Produto WHERE Produto.codigo = pCod;
    SELECT COUNT(*) INTO total FROM Solicitacao WHERE Solicitacao.produto = pCod;
    
    IF total >= 15 THEN
        INSERT INTO Mensagem VALUES (menSeq.nextVal, pCod, n, 'Produto Ruim - não recomendar');
    ELSIF total >=5 AND total < 15 THEN
        INSERT INTO Mensagem VALUES (menSeq.nextVal, pCod, n, 'Produto a ser verificado');
    ELSIF total > 0 AND total < 5 THEN
        INSERT INTO Mensagem VALUES (menSeq.nextVal, pCod, n, 'Produto Bom');
    ELSIF total = 0 THEN
        INSERT INTO Mensagem VALUES (menSeq.nextVal, pCod, n, 'Produto Excelente - recomendar');
    END IF;

END classificarSolicitacao;
/

/* Executar PROCEDURE para os 10 primeiros produtos */
BEGIN
    FOR a IN 1 .. 10 LOOP
        classificarSolicitacao(a);
    END LOOP;
END;
/

/* Ler resultados */
SELECT * FROM Mensagem;
