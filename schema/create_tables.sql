CREATE TABLE Tipo ( /* do produto */
    codigo NUMBER(5, 0), /* PK */
    descricao VARCHAR2(32)
);

CREATE TABLE Produto (
    codigo NUMBER(5, 0), /* PK */
    nome VARCHAR2(128),
    tipo NUMBER(5, 0) /* FK para Tipo.codigo */
);

CREATE TABLE Cliente (
    codigo NUMBER(5, 0), /* PK */
    nome VARCHAR2(128)
);

CREATE TABLE Tecnico (
    codigo NUMBER(5, 0), /* PK */
    nome VARCHAR2(128)
);

CREATE TABLE Categoria (
    codigo NUMBER(5, 0), /* PK */
    descricao VARCHAR2(128),
    precoHora NUMBER(8, 2) /* 999999.99 */
);

CREATE TABLE Ocorrencia (
    codigo NUMBER(5, 0), /* PK */
    solicitacao NUMBER(5, 0), /* FK para Solicitacao.codigo */
    tecnico NUMBER(5, 0), /* FK para Tecnico.codigo */
    dia DATE,
    descricao VARCHAR2(512),
    duracao NUMBER(3)
);

CREATE TABLE Solicitacao (
    codigo NUMBER(5, 0), /* PK */
    produto NUMBER(5, 0), /* FK para Produto.codigo */
    categoria NUMBER(5, 0), /* FK para Categoria.codigo */
    cliente NUMBER(5, 0), /* FK para Cliente.codigo */
    dia DATE,
    custoTotal NUMBER(8, 2), /* 999999.99 */
    situacao NUMBER(1) /* 1 | 2 | 3 = não atendida | aguardando peças | atendida */
);
