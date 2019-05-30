create table Tipo ( /* do produto */
    codigo number(5, 0), /* PK */
    descricao varchar2(32)
);

create table Produto (
    codigo number(5, 0), /* PK */
    nome varchar2(128),
    tipo number(5, 0) /* FK para Tipo.codigo */
);

create table Cliente (
    codigo number(5, 0), /* PK */
    nome varchar2(128)
);

create table Tecnico (
    codigo number(5, 0), /* PK */
    nome varchar2(128)
);

create table Categoria (
    codigo number(5, 0), /* PK */
    descricao varchar2(128),
    precoHora number(8, 2) /* 999999.99 */
);

create table Ocorrencia (
    codigo number(5, 0), /* PK */
    solicitacao number(5, 0), /* FK para Solicitacao.codigo */
    tecnico number(5, 0), /* FK para Tecnico.codigo */
    dia date,
    descricao varchar2(128),
    duracao number(3)
);

create table Solicitacao (
    codigo number(5, 0), /* PK */
    produto number(5, 0), /* FK para Produto.codigo */
    categoria number(5, 0), /* FK para Categoria.codigo */
    cliente number(5, 0), /* FK para Cliente.codigo */
    dia date,
    custoTotal number(8, 2), /* 999999.99 */
    situacao varchar2(1) /* 1 | 2 | 3 = não atendida | aguardando peças | atendida */
);
