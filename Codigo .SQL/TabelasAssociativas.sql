CREATE TABLE Pedido_Peca (
    ID_Trabalho INT,
    ID_Peca INT,
    PRIMARY KEY (ID_Trabalho, ID_Peca),
    FOREIGN KEY (ID_Trabalho) REFERENCES Pedido(ID_Trabalho),
    FOREIGN KEY (ID_Peca) REFERENCES Peca(ID_Peca)
);

CREATE TABLE Peca_Arranjo (
    ID_Peca INT,
    ID_Arranjo INT,
    PRIMARY KEY (ID_Peca, ID_Arranjo),
    FOREIGN KEY (ID_Peca) REFERENCES Peca(ID_Peca),
    FOREIGN KEY (ID_Arranjo) REFERENCES Arranjo(ID_Arranjo)
);

CREATE TABLE Material_Encomenda (
    ID_Encomenda INT,
    ID_Material INT,
    Quantidade INT,
    PRIMARY KEY (ID_Encomenda, ID_Material),
    FOREIGN KEY (ID_Encomenda) REFERENCES Encomenda(ID_Encomenda),
    FOREIGN KEY (ID_Material) REFERENCES Material(ID_Material)
);
