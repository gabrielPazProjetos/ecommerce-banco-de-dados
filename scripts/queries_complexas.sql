-- Quantos pedidos foram feitos por cada cliente
SELECT c.nome, COUNT(p.id) AS total_pedidos
FROM Cliente c
JOIN Pedido p ON c.id = p.cliente_id
GROUP BY c.nome;

-- Algum vendedor também é fornecedor?
-- (Simulação: se nomes coincidirem)
SELECT f.nome AS fornecedor, c.nome AS cliente
FROM Fornecedor f
JOIN Cliente c ON f.nome = c.nome;

-- Relação de produtos, fornecedores e estoques
SELECT p.nome AS produto, f.nome AS fornecedor, p.estoque
FROM Produto p
JOIN ProdutoFornecedor pf ON p.id = pf.produto_id
JOIN Fornecedor f ON pf.fornecedor_id = f.id;

-- Relação de nomes dos fornecedores e nomes dos produtos
SELECT f.nome AS fornecedor, p.nome AS produto
FROM ProdutoFornecedor pf
JOIN Produto p ON pf.produto_id = p.id
JOIN Fornecedor f ON pf.fornecedor_id = f.id;

-- Produtos com estoque abaixo de 10
SELECT nome, estoque
FROM Produto
WHERE estoque < 10;

-- Total de itens por pedido com HAVING
SELECT pedido_id, SUM(quantidade) AS total_itens
FROM ItemPedido
GROUP BY pedido_id
HAVING total_itens > 2;

-- Ordenar clientes por número de pedidos
SELECT c.nome, COUNT(p.id) AS pedidos
FROM Cliente c
JOIN Pedido p ON c.id = p.cliente_id
GROUP BY c.nome
ORDER BY pedidos DESC;
