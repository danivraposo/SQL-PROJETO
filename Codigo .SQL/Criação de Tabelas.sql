CREATE TABLE Cliente (
	ID_Cliente INT PRIMARY KEY,
	Nome NVARCHAR(100), --suporta acentos
	Telefone VARCHAR(15), -- Nao Usamos INT pois os numeros de telefone podem ter espaços, ou traços
	Email VARCHAR(100)--texto normal
);

CREATE TABLE Loja (
	ID_Loja INT PRIMARY KEY,
	Nome NVARCHAR(100),
	Morada NVARCHAR(200)
	);

CREATE TABLE Pedido (
    ID_Trabalho INT PRIMARY KEY,
    Estado NVARCHAR(50),
    Urgente BIT, -- Boolean (1 ou 0) (true or false)
    Data_Entrega DATE,
    Data_Levantamento DATE,
    Tipo NVARCHAR(50),
    ID_Cliente INT,
    ID_Loja INT,
    FOREIGN KEY (ID_Cliente) REFERENCES Cliente(ID_Cliente),
    FOREIGN KEY (ID_Loja) REFERENCES Loja(ID_Loja)
);

CREATE TABLE Peca (
    ID_Peca INT PRIMARY KEY,
    Tipo_Peca NVARCHAR(50), --(calças, camisas, etc..)
    Cor NVARCHAR(30),	
    Tamanho NVARCHAR(10), --(S, M, L, etc..)
    Tecido NVARCHAR(50) --(algodão, seda…)
);

CREATE TABLE Arranjo (
    ID_Arranjo INT PRIMARY KEY,
    Tipo_Arranjo NVARCHAR(50),
    Preco_Base DECIMAL(10, 2)
);

CREATE TABLE Fornecedor (
    ID_Fornecedor INT PRIMARY KEY,
    Nome NVARCHAR(100),
    Prazo_Medio_Entrega INT --Quantidades de dia para a entrega
);

CREATE TABLE Material (
    ID_Material INT PRIMARY KEY,
    Nome NVARCHAR(100),
    Consumo_Medio_Diario DECIMAL(10, 2),
    ID_Fornecedor INT,
    FOREIGN KEY (ID_Fornecedor) REFERENCES Fornecedor(ID_Fornecedor)
);

CREATE TABLE ReciboPagamento (
    ID_Recibo INT PRIMARY KEY,
    Tipo_Pagamento NVARCHAR(50), --(Dinheiro, MBWay, Cartão..)
    Data_Pagamento DATE,
    Valor DECIMAL(10, 2),
    ID_Trabalho INT,
    FOREIGN KEY (ID_Trabalho) REFERENCES Pedido(ID_Trabalho)
);

CREATE TABLE Encomenda (
    ID_Encomenda INT PRIMARY KEY,
    Data DATE, --Data da encomenda
    Estado NVARCHAR(50),
    ID_Fornecedor INT,
    FOREIGN KEY (ID_Fornecedor) REFERENCES Fornecedor(ID_Fornecedor)
);


