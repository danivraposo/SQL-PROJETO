--SELECT * FROM Encomenda

/*
					-- CLIENTES
INSERT INTO Cliente (ID_Cliente, Nome, Telefone, Email)
VALUES
(1, 'João Carlos', '912345678', 'joao@mail.com'),
(2, 'Ana Pinto da Costa', '935678123', 'ana@mail.com'),
(3, 'Jose Aguas', '964321987', 'aguas@mail.com');
*/

/*
					-- LOJAS
INSERT INTO Loja (ID_Loja, Morada, Nome)
VALUES
(1, 'Rua de Mertola, 341', 'Loja Primos'),
(2, 'Av. da Liberdade, 45', 'Loja XinXONG');
*/

/*
					-- PEDIDO
INSERT INTO Pedido (ID_Trabalho, Estado, Urgente, Data_Entrega, Data_Levantamento, Tipo, ID_Cliente, ID_Loja)
VALUES
(1, 'Concluído', 0, '2025-04-01', '2025-04-03', 'Tabelado', 1, 1),
(2, 'Em execução', 1, '2025-04-05', NULL, 'Orçamentado', 2, 2);
*/

/*
					-- PECA
INSERT INTO Peca (ID_Peca, Tipo_Peca, Cor, Tamanho, Tecido)
VALUES
(1, 'Calças', 'Azul', 'M', 'Algodão'),
(2, 'Camisa', 'Branca', 'L', 'Linho'),
(3, 'Casaco', 'Preto', 'XL', 'Poliéster');
*/

/*
					-- Arranjo
INSERT INTO Arranjo (ID_Arranjo, Tipo_Arranjo, Preco_Base)
VALUES 
(1, 'Fazer bainha', 5.00),
(2, 'Colocar fecho', 7.50),
(3, 'Coser manga', 6.00);
*/

/*
					-- Fornecedor
INSERT INTO Fornecedor (ID_Fornecedor, Nome, Prazo_Medio_Entrega)
VALUES 
(1, 'Tecidos Lda.', 5),
(2, 'Costura Express', 3);
*/

/*
					-- Material
INSERT INTO Material (ID_Material, Nome, Consumo_Medio_Diario, ID_Fornecedor)
VALUES 
(1, 'Linha branca', 10.5, 1),
(2, 'Botões metálicos', 5.2, 2);
*/

/*
					-- ReciboPagamento
INSERT INTO ReciboPagamento (ID_Recibo, Tipo_Pagamento, Data_Pagamento, Valor, ID_Trabalho)
VALUES 
(1, 'Dinheiro', '2025-04-03', 5.00, 1);
*/

/*
					-- Encomenda
INSERT INTO Encomenda (ID_Encomenda, Data, Estado, ID_Fornecedor)
VALUES 
(1, '2025-04-10', 'Pendente', 1);
*/

