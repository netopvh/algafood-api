SET foreign_key_checks = 0;

DELETE FROM cidade;
DELETE FROM cozinha;
DELETE FROM estado;
DELETE FROM forma_pagamento;
DELETE FROM grupo;
DELETE FROM grupo_permissao;
DELETE FROM permissao;
DELETE FROM produto;
DELETE FROM restaurante;
DELETE FROM restaurante_forma_pagamento;
DELETE FROM usuario;
DELETE FROM usuario_grupo;
DELETE FROM restaurante_usuario_responsavel;
DELETE FROM pedido;
DELETE FROM item_pedido;

SET foreign_key_checks = 1;

ALTER TABLE cidade AUTO_INCREMENT = 1;
ALTER TABLE cozinha AUTO_INCREMENT = 1;
ALTER TABLE estado AUTO_INCREMENT = 1;
ALTER TABLE forma_pagamento AUTO_INCREMENT = 1;
ALTER TABLE grupo AUTO_INCREMENT = 1;
ALTER TABLE permissao AUTO_INCREMENT = 1;
ALTER TABLE produto AUTO_INCREMENT = 1;
ALTER TABLE restaurante AUTO_INCREMENT = 1;
ALTER TABLE usuario AUTO_INCREMENT = 1;
ALTER TABLE pedido AUTO_INCREMENT = 1;
ALTER TABLE item_pedido AUTO_INCREMENT = 1;

INSERT INTO cozinha (id, nome) VALUES (1, 'Tailandesa');
INSERT INTO cozinha (id, nome) VALUES (2, 'Indiana');
INSERT INTO cozinha (id, nome) VALUES (3, 'Argentina');
INSERT INTO cozinha (id, nome) VALUES (4, 'Brasileira');

INSERT INTO estado (id, nome) VALUES (1, 'Minas Gerais');
INSERT INTO estado (id, nome) VALUES (2, 'São Paulo');
INSERT INTO estado (id, nome) VALUES (3, 'Ceará');

INSERT INTO cidade (id, nome, estado_id) VALUES (1, 'Uberlândia', 1);
INSERT INTO cidade (id, nome, estado_id) VALUES (2, 'Belo Horizonte', 1);
INSERT INTO cidade (id, nome, estado_id) VALUES (3, 'São Paulo', 2);
INSERT INTO cidade (id, nome, estado_id) VALUES (4, 'Campinas', 2);
INSERT INTO cidade (id, nome, estado_id) VALUES (5, 'Fortaleza', 3);

INSERT INTO restaurante (id, nome, taxa_frete, cozinha_id, data_cadastro, data_atualizacao, ativo, aberto, endereco_cidade_id, endereco_cep, endereco_logradouro, endereco_numero, endereco_bairro) VALUES (1, 'Thai Gourmet', 10, 1, UTC_TIMESTAMP, UTC_TIMESTAMP, true, true, 1, '38400-999', 'Rua João Pinheiro', '1000', 'Centro');
INSERT INTO restaurante (id, nome, taxa_frete, cozinha_id, data_cadastro, data_atualizacao, ativo, aberto) VALUES (2, 'Thai Delivery', 9.50, 1, UTC_TIMESTAMP, UTC_TIMESTAMP, true, true);
INSERT INTO restaurante (id, nome, taxa_frete, cozinha_id, data_cadastro, data_atualizacao, ativo, aberto) VALUES (3, 'Tuk Tuk Comida Indiana', 15, 2, UTC_TIMESTAMP, UTC_TIMESTAMP, true, true);
INSERT INTO restaurante (id, nome, taxa_frete, cozinha_id, data_cadastro, data_atualizacao, ativo, aberto) VALUES (4, 'Java Steakhouse', 12, 3, UTC_TIMESTAMP, UTC_TIMESTAMP, true, true);
INSERT INTO restaurante (id, nome, taxa_frete, cozinha_id, data_cadastro, data_atualizacao, ativo, aberto) VALUES (5, 'Lanchonete do Tio Sam', 11, 4, UTC_TIMESTAMP, UTC_TIMESTAMP, true, true);
INSERT INTO restaurante (id, nome, taxa_frete, cozinha_id, data_cadastro, data_atualizacao, ativo, aberto) VALUES (6, 'Bar da Maria', 6, 4, UTC_TIMESTAMP, UTC_TIMESTAMP, true, true);

INSERT INTO forma_pagamento (id, descricao) VALUES (1, 'Cartão de crédito');
INSERT INTO forma_pagamento (id, descricao) VALUES (2, 'Cartão de débito');
INSERT INTO forma_pagamento (id, descricao) VALUES (3, 'Dinheiro');

INSERT INTO permissao (id, nome, descricao) VALUES (1, 'CONSULTAR_COZINHAS', 'Permite consultar cozinhas');
INSERT INTO permissao (id, nome, descricao) VALUES (2, 'EDITAR_COZINHAS', 'Permite editar cozinhas');

INSERT INTO restaurante_forma_pagamento (restaurante_id, forma_pagamento_id) VALUES (1, 1), (1, 2), (1, 3), (2, 3), (3, 2), (3, 3), (4, 1), (4, 2), (5, 1), (5, 2), (6, 3);

INSERT INTO produto (nome, descricao, preco, ativo, restaurante_id) VALUES ('Porco com molho agridoce', 'Deliciosa carne suína ao molho especial', 78.90, 1, 1);
INSERT INTO produto (nome, descricao, preco, ativo, restaurante_id) VALUES ('Camarão tailandês', '16 camarões grandes ao molho picante', 110, 1, 1);
INSERT INTO produto (nome, descricao, preco, ativo, restaurante_id) VALUES ('Salada picante com carne grelhada', 'Salada de folhas com cortes finos de carne bovina grelhada e nosso molho especial de pimenta vermelha', 87.20, 1, 2);
INSERT INTO produto (nome, descricao, preco, ativo, restaurante_id) VALUES ('Garlic Naan', 'Pão tradicional indiano com cobertura de alho', 21, 1, 3);
INSERT INTO produto (nome, descricao, preco, ativo, restaurante_id) VALUES ('Murg Curry', 'Cubos de frango preparados com molho curry e especiarias', 43, 1, 3);
INSERT INTO produto (nome, descricao, preco, ativo, restaurante_id) VALUES ('Bife Ancho', 'Corte macio e suculento, com dois dedos de espessura, retirado da parte dianteira do contrafilé', 79, 1, 4);
INSERT INTO produto (nome, descricao, preco, ativo, restaurante_id) VALUES ('T-Bone', 'Corte muito saboroso, com um osso em formato de T, sendo de um lado o contrafilé e do outro o filé mignon', 89, 1, 4);
INSERT INTO produto (nome, descricao, preco, ativo, restaurante_id) VALUES ('Sanduíche X-Tudo', 'Sandubão com muito queijo, hamburger bovino, bacon, ovo, salada e maionese', 19, 1, 5);
INSERT INTO produto (nome, descricao, preco, ativo, restaurante_id) VALUES ('Espetinho de Cupim', 'Acompanha farinha, mandioca e vinagrete', 8, 1, 6);

INSERT INTO grupo (id, nome) VALUES (1, 'Gerente'), (2, 'Vendedor'), (3, 'Secretária'), (4, 'Cadastrador');

INSERT INTO grupo_permissao (grupo_id, permissao_id) VALUES (1, 1), (1, 2), (2, 1), (2, 2), (3, 1);

INSERT INTO usuario (id, nome, email, senha, data_cadastro) VALUES (1, 'João da Silva', 'joao.ger@algafood.com', '123', UTC_TIMESTAMP);
INSERT INTO usuario (id, nome, email, senha, data_cadastro) VALUES (2, 'Maria Joaquina', 'maria.vnd@algafood.com', '123', UTC_TIMESTAMP);
INSERT INTO usuario (id, nome, email, senha, data_cadastro) VALUES (3, 'José Souza', 'jose.aux@algafood.com', '123', UTC_TIMESTAMP);
INSERT INTO usuario (id, nome, email, senha, data_cadastro) VALUES (4, 'Ana Martins', 'ana.aux@algafood.com', '123', UTC_TIMESTAMP);
INSERT INTO usuario (id, nome, email, senha, data_cadastro) VALUES (5, 'Manoel Lima', 'manoel.loja@gmail.com', '123', UTC_TIMESTAMP);

INSERT INTO usuario_grupo (usuario_id, grupo_id) VALUES (1, 1), (1, 2), (2, 2);

INSERT INTO restaurante_usuario_responsavel (restaurante_id, usuario_id) VALUES (1, 5), (3, 5);

INSERT INTO pedido (id, codigo, restaurante_id, usuario_cliente_id, forma_pagamento_id, endereco_cidade_id, endereco_cep, endereco_logradouro, endereco_numero, endereco_complemento, endereco_bairro, status, data_criacao, subtotal, taxa_frete, valor_total) VALUES (1, 'ad759d44-35e1-4fb1-a082-52b1337484ec', 1, 1, 1, 1, '38400-000', 'Rua Floriano Peixoto', '500', 'Apto 801', 'Brasil', 'CRIADO', UTC_TIMESTAMP, 298.90, 10, 308.90);
INSERT INTO item_pedido (id, pedido_id, produto_id, quantidade, preco_unitario, preco_total, observacao) VALUES (1, 1, 1, 1, 78.9, 78.9, NULL);
INSERT INTO item_pedido (id, pedido_id, produto_id, quantidade, preco_unitario, preco_total, observacao) VALUES (2, 1, 2, 2, 110, 220, 'Menos picante, por favor');

INSERT INTO pedido (id, codigo, restaurante_id, usuario_cliente_id, forma_pagamento_id, endereco_cidade_id, endereco_cep, endereco_logradouro, endereco_numero, endereco_complemento, endereco_bairro, status, data_criacao, subtotal, taxa_frete, valor_total) VALUES (2, 'af8b5ca4-5248-468f-9818-13924b83755a', 4, 1, 2, 1, '38400-111', 'Rua Acre', '300', 'Casa 2', 'Centro', 'CRIADO', UTC_TIMESTAMP, 79, 0, 79);
INSERT INTO item_pedido (id, pedido_id, produto_id, quantidade, preco_unitario, preco_total, observacao) VALUES (3, 2, 6, 1, 79, 79, 'Ao ponto');