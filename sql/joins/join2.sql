SELECT c.nome, COUNT(p.id) AS quantidade_pedidos
FROM clientes c JOIN pedidos p
ON c.id = p.id_cliente
GROUP BY c.id
ORDER BY quantidade_pedidos DESC
LIMIT 15;
