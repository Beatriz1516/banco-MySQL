CREATE SCHEMA LOJA_DE_GRAOS;
CREATE TABLE CLIENTES (
`id_clientes` INT NOT NULL,
`Nome`VARCHAR(100) NOT NULL,
`Número` INT NOT NULL,
`CNPJ` VARCHAR(100) NOT NULL,
`Senha` VARCHAR(100) NOT NULL,
`Email` VARCHAR(100) NOT NULL
)

SELECT * FROM PRODUTOS;

CREATE TABLE PRODUTOS(
`id_produtos` INT NOT NULL,
`Produto` VARCHAR(100) NOT NULL,
`Quatidade` INT NOT NULL
)