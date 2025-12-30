-- Creating the schema's tables
CREATE TABLE produtos (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(255),
    preco DECIMAL(10,2) NOT NULL CHECK (preco >= 0)
);

CREATE TABLE clientes (
    id INTEGER PRIMARY KEY,
    nome VARCHAR(255)
);

CREATE TABLE pedidos (
    id INTEGER PRIMARY KEY,
    id_cliente INTEGER NOT NULL,
    data DATE DEFAULT CURRENT_DATE,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id)
);

CREATE TABLE itens_pedidos (
    id INTEGER PRIMARY KEY,
    id_pedido INTEGER NOT NULL,
    id_produto INTEGER NOT NULL,
    quantidade INTEGER,
  	preco_venda_unitario DECIMAL(10,2) NOT NULL CHECK (preco_venda_unitario >= 0),
    FOREIGN KEY (id_pedido) REFERENCES pedidos(id) ON DELETE CASCADE,
    FOREIGN KEY (id_produto) REFERENCES produtos(id)
);
