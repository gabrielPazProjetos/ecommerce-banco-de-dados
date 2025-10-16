-- Inserção de dados para testes

INSERT INTO Cliente (nome, tipo, cpf_cnpj, email)
VALUES ('João Silva', 'PF', '123.456.789-00', 'joao@email.com'),
       ('Empresa XYZ', 'PJ', '12.345.678/0001-99', 'contato@xyz.com');

INSERT INTO FormaPagamento (tipo_pagamento)
VALUES ('Cartão de Crédito'), ('Pix'), ('Boleto');

INSERT INTO ClienteFormaPagamento (cliente_id, pagamento_id)
VALUES (1, 1), (1, 2), (2, 3);

INSERT INTO Produto (nome, preco, estoque)
VALUES ('Mouse Gamer', 150.00, 20),
       ('Teclado Mecânico', 250.00, 15);

INSERT INTO Fornecedor (nome, contato)
VALUES ('TechDistribuidora', 'tech@distribuidora.com'),
       ('MegaEletrônicos', 'contato@megaeletronicos.com');

INSERT INTO ProdutoFornecedor (produto_id, fornecedor_id)
VALUES (1, 1), (2, 2);

INSERT INTO Pedido (cliente_id, data_pedido)
VALUES (1, '2025-10-15'), (2, '2025-10-16');

INSERT INTO Entrega (pedido_id, status, codigo_rastreio)
VALUES (1, 'Em trânsito', 'BR123456789'), (2, 'Entregue', 'BR987654321');

INSERT INTO ItemPedido (pedido_id, produto_id, quantidade)
VALUES (1, 1, 2), (1, 2, 1), (2, 2, 3);
