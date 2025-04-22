INSERT INTO Pedido_Peca (ID_Trabalho, ID_Peca)
VALUES 
(1, 1), -- Pedido 1 tem a peça 1 (Calças)
(1, 2), -- Pedido 1 também tem a camisa
(2, 3); -- Pedido 2 tem o casaco

INSERT INTO Peca_Arranjo (ID_Peca, ID_Arranjo)
VALUES 
(1, 1), -- Calças → Fazer bainha
(2, 2), -- Camisa → Colocar fecho
(3, 3); -- Casaco → Coser manga

INSERT INTO Material_Encomenda (ID_Encomenda, ID_Material, Quantidade)
VALUES 
(1, 1, 50), -- Encomenda 1: 50 unidades de Linha branca
(1, 2, 20); -- Encomenda 1: 20 botões metálicos
