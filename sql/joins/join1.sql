SELECT c.id, c.nome
 FROM clientes c LEFT JOIN pedidos p
ON c.id = p.id_cliente
WHERE p.id IS NULL;
