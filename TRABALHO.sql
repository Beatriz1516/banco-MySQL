CREATE SCHEMA LOJA_DE_GRAOS;
CREATE TABLE CLIENTES (
`id_clientes` INT NOT NULL,
`Nome`VARCHAR(100) NOT NULL,
`Numero` VARCHAR(100) NOT NULL,
`CNPJ` VARCHAR(100) NOT NULL,
`Senha` VARCHAR(100) NOT NULL,
`Email` VARCHAR(100) NOT NULL,
PRIMARY KEY(id_clientes)
);

SELECT * FROM  PRODUTOS;

CREATE TABLE PRODUTOS(
`id_produtos` INT NOT NULL,
`Produto` VARCHAR(100) NOT NULL,
`Quantidade` INT NOT NULL,
PRIMARY KEY(id_produtos)
);

CREATE TABLE TRANSPORTADORA (
`id_transportadora` INT NOT NULL,
`Nome` VARCHAR(150) NOT NULL,
`Numero` VARCHAR(100) NOT NULL,
`Endereço` VARCHAR(100) NOT NULL,
PRIMARY KEY(id_transportadora)
);

CREATE TABLE ESTOQUE(
`id_estoque` INT NOT NULL,
`id_produtos`INT NOT NULL,
`Quantidade` VARCHAR(100) NOT NULL,
`Validade` VARCHAR(100) NOT NULL,
`Preco` VARCHAR(100) NOT NULL,
PRIMARY KEY(id_estoque)
);

ALTER TABLE ESTOQUE ADD CONSTRAINT CE_ESTOQUE_PRODUTO
FOREIGN KEY (id_produtos)
REFERENCES PRODUTOS (id_produtos)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

CREATE TABLE VENDAS (
`id_venda` INT NOT NULL,
`TOKEN` INT NOT NULL,
`Quantidade` INT NOT NULL,
`id_produtos` INT NOT NULL,
`id_clientes` INT NOT NULL,
`Endereco` VARCHAR(100) NOT NULL,
`Tempo_de_viagem` VARCHAR(100) NOT NULL,
`id_transportadora` int not null,
`Valor_Total` VARCHAR(100) NOT NULL,
PRIMARY KEY(id_venda)
);

ALTER TABLE VENDAS ADD CONSTRAINT CE_VENDAS_PRODUTO
FOREIGN KEY (id_produtos)
REFERENCES PRODUTOS (id_produtos)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE VENDAS ADD CONSTRAINT CE_VENDAS_CLIENTES
FOREIGN KEY (id_clientes)
REFERENCES CLIENTES (id_clientes)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE VENDAS ADD CONSTRAINT CE_VENDAS_TRANPORTADORA
FOREIGN KEY (id_transportadora)
REFERENCES TRANSPORTADORA (id_transportadora)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE CLIENTES
MODIFY COLUMN Numero VARCHAR(100);


SET FOREIGN_KEY_CHECKS = 0;

INSERT INTO CLIENTES (id_clientes, Nome, Numero, CNPJ, Senha, Email) VALUES (
1,
'Raylane',
'(00)00000-0000',
'00.000.000/0000.0',
'raylane10',
'raylane@gmail.com'
);

INSERT INTO CLIENTES (id_clientes, Nome, Numero, CNPJ, Senha, Email) VALUES (
2,
'Mylove',
'(00)00000-0000',
'00.000.000/0000.0',
'borracha',
'mylove@gmail.com'
);

INSERT INTO CLIENTES (id_clientes, Nome, Numero, CNPJ, Senha, Email) VALUES (
3,
'Werlon',
'(00)00000-0000',
'00.000.000/0000.0',
'ocúlos',
'werlon@gmail.com'
);

INSERT INTO CLIENTES (id_clientes, Nome, Numero, CNPJ, Senha, Email) VALUES (
4,
'Kácio',
'(00)00000-0000',
'00.000.000/0000.0',
'zinco',
'kacio@gmail.com'
);

INSERT INTO PRODUTOS (id_produtos, Produto, Quantidade ) VALUES(
2, 
'Cafe',
800000
);

INSERT INTO PRODUTOS (id_produtos, Produto, Quantidade ) VALUES(
1, 
'Soja',
50000
);

INSERT INTO PRODUTOS (id_produtos, Produto, Quantidade ) VALUES(
3, 
'Grao-de-bico',
40000
);

INSERT INTO PRODUTOS (id_produtos, Produto, Quantidade ) VALUES(
4, 
'Milho',
10000
);

INSERT INTO TRANSPORTADORA (id_transportadora, Nome, Numero, Endereço) VALUES(
1,
'Elton Transportes',
'(00)00000-0000',
'Cascavel'
);

INSERT INTO TRANSPORTADORA (id_transportadora, Nome, Numero, Endereço) VALUES(
2,
'Assis centro-norte',
'(00)00000-0000',
'Curitiba'
);

INSERT INTO TRANSPORTADORA (id_transportadora, Nome, Numero, Endereço) VALUES(
3,
'Limão Amargo TRANSPORTADORA',
'(00)00000-0000',
'Toledo'
);

SELECT * FROM ESTOQUE;

INSERT INTO ESTOQUE (id_estoque,id_produtos, Quantidade, Validade, Preco) VALUES(
2, 
4,
40000,
'Terça',
'250.00'
);

INSERT INTO ESTOQUE (id_estoque,id_produtos, Quantidade, Validade, Preco) VALUES(
3, 
1,
800000,
'Terça',
'250.00'
);

INSERT INTO ESTOQUE (id_estoque,id_produtos, Quantidade, Validade, Preco) VALUES(
4, 
2,
50000,
'Terça',
'250.00'
);

INSERT INTO ESTOQUE (id_estoque,id_produtos, Quantidade, Validade, Preco) VALUES(
5, 
5,
10000,
'Terça',
'250.00'
);

INSERT INTO VENDAS (id_venda, TOKEN, Quantidade, id_produtos, id_clientes, Endereco, Tempo_de_viagem, id_transportadora, Valor_Total) VALUES (

);