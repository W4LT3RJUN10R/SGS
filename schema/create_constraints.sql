ALTER TABLE Cliente
    ADD CONSTRAINT pkCliente PRIMARY KEY (codigo);

ALTER TABLE Tecnico
    ADD CONSTRAINT pkTecnico PRIMARY KEY (codigo);

ALTER TABLE Tipo
    ADD CONSTRAINT pkTipo PRIMARY KEY (codigo);

ALTER TABLE Produto
    ADD CONSTRAINT pkProduto PRIMARY KEY (codigo)
    ADD CONSTRAINT fkTipoProduto FOREIGN KEY (tipo) REFERENCES Tipo;

ALTER TABLE Categoria
    ADD CONSTRAINT pkCategoria PRIMARY KEY (codigo);

ALTER TABLE Solicitacao
    ADD CONSTRAINT pkSolicitacao PRIMARY KEY (codigo)
    ADD CONSTRAINT fkProdutoSolicitacao FOREIGN KEY (produto) REFERENCES Produto
    ADD CONSTRAINT fkCategoriaSolicitacao FOREIGN KEY (categoria) REFERENCES Categoria
    ADD CONSTRAINT fkClienteSolicitacao FOREIGN KEY (cliente) REFERENCES Cliente;

ALTER TABLE Ocorrencia
    ADD CONSTRAINT pkOcorrencia PRIMARY KEY (codigo)
    ADD CONSTRAINT fkTecnicoOcorrencia FOREIGN KEY (tecnico) REFERENCES Tecnico
    ADD CONSTRAINT fkSolicitacaoOcorrencia FOREIGN KEY (solicitacao) REFERENCES Solicitacao;
