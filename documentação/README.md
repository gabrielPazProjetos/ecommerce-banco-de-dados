
##  Modelo EER

O modelo foi criado no diagrams.net e exportado como imagem. Ele representa:

- Entidades como Cliente, Produto, Pedido, etc.
- Relacionamentos N:N e 1:N com tabelas auxiliares
- Chaves primárias e estrangeiras

 Para visualizar o modelo, abra:  
 Modelo/modelo-eer.png

##  Consultas de Teste

O arquivo consultas.sql contém exemplos de perguntas que podem ser feitas ao banco, como:

- Listar clientes do tipo jurídico
- Ver pedidos de um cliente específico
- Consultar produtos com estoque baixo
- Ver fornecedores de um produto
- Métodos de pagamento disponíveis para um cliente

📄 Para testar, abra:  
Perguntas/consultas.sql

##  Como usar

1. Importe o modelo SQL no seu SGBD (ex: MySQL, PostgreSQL)
2. Execute os scripts de criação das tabelas
3. Insira dados de exemplo (se quiser)
4. Rode as queries do arquivo consultas.sql para testar
