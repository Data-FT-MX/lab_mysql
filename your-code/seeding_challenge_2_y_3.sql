CREATE DATABASE lab_mysql;
USE lab_mysql;

SELECT * FROM carros;
SELECT * FROM facturas;
SELECT * FROM vendedores;

INSERT INTO clientes (Nombre, Telefono, email, Direccion, Ciudad, Estado, Pais)
VALUES ('Pablo Picasso', '34636176382', 'a', 'Paseo de la Chopera', 'Madrid', 'Madrid', 'Spain');

INSERT INTO clientes 
VALUES (0, 10001, 'Pablo Picasso' , '34636176382', 'a', 'Paseo de la Chopera', '14 Madrid', 'Madrid', 'Spain', '28045');

SELECT * FROM clientes;
