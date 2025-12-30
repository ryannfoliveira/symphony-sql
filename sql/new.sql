-- Orders with missing data
INSERT INTO itens_pedidos (id_pedido, id_produto, quantidade, preco_venda_unitario)
VALUES
(57, 2, 1, (SELECT preco FROM produtos WHERE id = 2));

-- Not yet registered orders
INSERT INTO pedidos (id, id_cliente, data) VALUES
(63, 28, '2025-11-28' ),
(64, 30, '2025-12-23');


INSERT INTO itens_pedidos (id_pedido, id_produto, quantidade, preco_venda_unitario)
VALUES
(63, 9, 1, (SELECT preco FROM produtos WHERE id = 9)),
(64, 7, 1, (SELECT preco FROM produtos WHERE id = 7));

/*
NOTE:
I've manually assigned the rows' IDs in order to facilitate my inserts
*/
