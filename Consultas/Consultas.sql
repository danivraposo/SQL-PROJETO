
--			Ver todos os pedidos urgentes

SELECT p.ID_Trabalho, c.Nome AS Cliente, l.Nome AS Loja, p.Data_Entrega
FROM Pedido p
JOIN Cliente c ON p.ID_Cliente = c.ID_Cliente
JOIN Loja l ON p.ID_Loja = l.ID_Loja
WHERE p.Urgente = 1;


--			Ver peças de um pedido específico

SELECT pe.ID_Peca, pe.Tipo_Peca, pe.Cor, pe.Tamanho
FROM Pedido_Peca pp
JOIN Peca pe ON pp.ID_Peca = pe.ID_Peca
WHERE pp.ID_Trabalho = 1;


--			Clientes que fizeram pedidos urgentes

SELECT Nome
FROM Cliente
WHERE ID_Cliente IN (
    SELECT ID_Cliente
    FROM Pedido
    WHERE Urgente = 1
);


--			Arranjos mais caros que a média

SELECT Tipo_Arranjo, Preco_Base
FROM Arranjo
WHERE Preco_Base > (
    SELECT AVG(Preco_Base) FROM Arranjo
);


--			Ver nomes e contactos dos clientes com pedidos feitos

SELECT DISTINCT c.Nome, c.Telefone
FROM Cliente c
JOIN Pedido p ON c.ID_Cliente = p.ID_Cliente;


--			Pedidos com mais de uma peça associada

SELECT pp.ID_Trabalho, COUNT(pp.ID_Peca) AS Num_Pecas
FROM Pedido_Peca pp
GROUP BY pp.ID_Trabalho
HAVING COUNT(pp.ID_Peca) > 1;
