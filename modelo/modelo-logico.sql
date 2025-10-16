-- Modelo lógico: criação das tabelas principais

CREATE TABLE Cliente (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    tipo ENUM('PF', 'PJ') NOT NULL,
    cpf_cnpj VARCHAR(20) UNIQUE,
    email VARCHAR(100)
);

CREATE TABLE FormaPagamento (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo_pagamento VARCHAR(50)
);

CREATE TABLE ClienteFormaPagamento (
    cliente_id INT,
    pagamento_id INT,
    PRIMARY KEY (cliente_id, pagamento_id),
    FOREIGN KEY (cliente_id) REFERENCES Cliente(id),
    FOREIGN KEY (pagamento_id) REFERENCES FormaPagamento(id)
);

CREATE TABLE Produto (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    preco DECIMAL(10,2),
    estoque INT
);

CREATE TABLE Fornecedor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    contato VARCHAR(100)
);

CREATE TABLE ProdutoFornecedor (
    produto_id INT,
    fornecedor_id INT,
    PRIMARY KEY (produto_id, fornecedor_id),
    FOREIGN KEY (produto_id) REFERENCES Produto(id),
    FOREIGN KEY (fornecedor_id) REFERENCES Fornecedor(id)
);

CREATE TABLE Pedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    cliente_id INT,
    data_pedido DATE,
    FOREIGN KEY (cliente_id) REFERENCES Cliente(id)
);

CREATE TABLE Entrega (
    id INT PRIMARY KEY AUTO_INCREMENT,
    pedido_id INT,
    status VARCHAR(50),
    codigo_rastreio VARCHAR(50),
    FOREIGN KEY (pedido_id) REFERENCES Pedido(id)
);

CREATE TABLE ItemPedido (
    pedido_id INT,
    produto_id INT,
    quantidade INT,
    PRIMARY KEY (pedido_id, produto_id),
    FOREIGN KEY (pedido_id) REFERENCES Pedido(id),
    FOREIGN KEY (produto_id) REFERENCES Produto(id)
);
