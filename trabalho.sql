CREATE DATABASE COMPUTADOR;
CREATE SCHEMA VENDA_COMPUTADOR;
USE VENDA_COMPUTADOR;

CREATE TABLE CLIENTE(
`id_cliente` INT auto_increment,
`Nome_cliente` VARCHAR (100) NOT NULL,
`Telefone_cliente` VARCHAR (100) NOT NULL,
`Endereço_cliente` VARCHAR(100) NOT NULL,
`id_usuario` INT NOT NULL,
PRIMARY KEY (id_cliente)
);

CREATE TABLE PRODUTOS(
`id_produto` INT auto_increment,
`Nome_produto` VARCHAR (300) NOT NULL,
`Preço_produto` VARCHAR (100) NOT NULL,
PRIMARY KEY (id_produto)
);

CREATE TABLE VENDAS(
`id_vendas` INT NOT NULL auto_increment,
`id_produto` INT NOT NULL,
`id_cliente` INT NOT NULL,
`Preço_produto` VARCHAR(100) NOT NULL,
PRIMARY KEY (id_vendas)
);

CREATE TABLE USUARIO(
`id_usuario` INT NOT NULL auto_increment,
`id_cliente` INT NOT NULL,
`Nome_cliente` VARCHAR(100) NOT NULL,
`Tipo_usuario` VARCHAR(50) NOT NULL,
`E-mail_usuario` VARCHAR(200) NOT NULL,
`Senha_usuario` VARCHAR(200) NOT NULL,
PRIMARY KEY (id_usuario)
);

CREATE TABLE ESTOQUE (
`id_estoque` INT NOT NULL auto_increment,
`id_produto` INT NOT NULL,
`Quantia_estoque` INT NOT NULL,
`id_fornecedor` INT NOT NULL,
PRIMARY KEY (id_estoque)
);

CREATE TABLE COMPRA_FORNECEDOR(
`id_compra` INT NOT NULL auto_increment,
`id_fornecedor` INT NOT NULL,
`id_produto` INT NOT NULL,
`Quantia_estoque` INT NOT NULL,
PRIMARY KEY(id_compra)
);

CREATE TABLE FORNECEDOR(
`id_fornecedor` INT NOT NULL auto_increment,
`id_produto` INT NOT NULL,
`Quantia_estoque` INT NOT NULL,
PRIMARY KEY (id_fornecedor)
);

CREATE TABLE FUNCIONARIO(
`id_funcionario` INT NOT NULL auto_increment,
`Nome_funcionario` VARCHAR(100) NOT NULL,
PRIMARY KEY (id_funcionario)
);



ALTER TABLE CLIENTE ADD
FOREIGN KEY (id_usuario)
REFERENCES USUARIO (id_usuario)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE CLIENTE ADD
FOREIGN KEY (id_produto)
REFERENCES PRODUTOS (id_produto)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE USUARIO ADD
FOREIGN KEY (id_cliente)
REFERENCES CLIENTE (id_cliente)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE COMPRA_FORNECEDOR ADD
FOREIGN KEY (id_fornecedor)
REFERENCES FORNECEDOR (id_fornecedor)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE COMPRA_FORNECEDOR ADD FOREIGN KEY (id_produto) REFERENCES PRODUTOS (id_produto)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE ESTOQUE ADD
FOREIGN KEY (id_produto)
REFERENCES PRODUTOS (id_produto)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE ESTOQUE ADD
FOREIGN KEY (id_fornecedor)
REFERENCES FORNECEDOR (id_fornecedor)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE FORNECEDOR ADD
FOREIGN KEY (id_produto)
REFERENCES PRODUTOS (id_produto)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE VENDAS ADD
FOREIGN KEY (id_produto)
REFERENCES PRODUTOS (id_produto)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE VENDAS ADD
FOREIGN KEY (id_cliente)
REFERENCES CLIENTE (id_cliente)
ON DELETE NO ACTION
ON UPDATE NO ACTION;


SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO CLIENTE ( Nome_cliente, Telefone_cliente, Endereço_cliente, id_usuario
) VALUES
 ( "Carlos", "(45)00000-0000", "R. Afonso Pereira", 01),
 ( "Roberto", "(45)00000-0000", "R. Reginaldo Baarildo", 02),
 ( "Marcos", "(45)00000-0000", "R. Pindamonhangaba", 03),
 ( "Ingrid", "(45)00000-0000", "R. Silveira", 04),
 ( "Luzia", "(45)00000-0000", "R. Estados Unidos", 05)
 ;
 
 INSERT INTO PRODUTOS ( Nome_produto, Preço_produto) VALUES
("Notebook Lenovo IdeaPad", "R$2900,00" ),
("Monitor Gamer Curvo Samsung", "R$1099,99"),
("Teclado Gamer HyperX", "R$210,00"),
("Mouse Gamer Sem Fio Logitech", "R$260,00"),
("Headset Gamer Preto", "R$250,00")
 ;
 
INSERT INTO FORNECEDOR (id_produto, Quantia_estoque) VALUES
(01 , 50),
(05 , 70),
(03 , 50),
(02 , 100),
(04 , 130)
;

INSERT INTO COMPRA_FORNECEDOR (id_fornecedor, id_produto, Quantia_estoque) VALUES
(01, 01, 12),
(02, 05, 7),
(03, 03, 5),
(04, 02, 10),
(05, 04, 13)
;

INSERT INTO ESTOQUE (id_produto, Quantia_estoque, id_fornecedor) VALUES
(05, 07, 02),
(03, 5, 03),
(02, 10, 04),
(04, 13, 05),
(01, 01, 12)
;

INSERT INTO FUNCIONARIO (Nome_funcionario) VALUES
("Jurema"),
("Jussara"),
("Eleonor")
;

INSERT INTO USUARIO (id_cliente, Nome_cliente, Tipo_usuario, `E-mail_usuario`, Senha_usuario) 
VALUES
(01, "Carlos Olivares", 01, "carlos.oliva@gmail.com.br", "amendoim torrado"),
(02, "Roberto Saudão", 01, "saudao.roberto@gmail.com.br", "saudao do feriadao" ),
(03, "Marcos Gualadares", 03, "marcos.gualadares@gmail.com.br", "marcao sucesso" ),
(04, "Ingrid Rosário", 03, "rosario.ingrid@gmail.com.br", "rosario2013" ),
(05, "Luzia Bartolucy", 02, "bartolucy.luzia@gmail.com.br", "bartolucyl" )
;

INSERT INTO VENDAS(id_produto, id_cliente, Preço_produto) VALUES
(01, 01, "R$2900,00"),
(05, 02, "R$250,00"),
(04, 03, "R$260,00"),
(02, 04, "R$1099,99"),
(03, 05, "R$210,00")
;

SELECT *FROM VENDAS;