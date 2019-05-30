
alter table Cliente
    add constraint pkCliente primary key (codigo);

alter table Tecnico
    add constraint pkTecnico primary key (codigo);

alter table Tipo
    add constraint pkTipo primary key (codigo);

alter table Produto
    add constraint pkProduto primary key (codigo)
    add constraint fkTipoProduto foreign key (tipo) references Tipo;

alter table Categoria
    add constraint pkCategoria primary key (codigo);

alter table Solicitacao
    add constraint pkSolicitacao primary key (codigo)
    add constraint fkProdutoSolicitacao foreign key (produto) references Produto
    add constraint fkCategoriaSolicitacao foreign key (categoria) references Categoria
    add constraint fkClienteSolicitacao foreign key (cliente) references Cliente;

alter table Ocorrencia
    add constraint pkOcorrencia primary key (codigo)
    add constraint fkTecnicoOcorrencia foreign key (tecnico) references Tecnico
    add constraint fkSolicitacaoOcorrencia foreign key (solicitacao) references Solicitacao;

