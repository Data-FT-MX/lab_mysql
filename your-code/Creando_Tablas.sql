CREATE TABLE automoviles_customers.cars(
ID_Car INTEGER PRIMARY KEY AUTO_INCREMENT,
VIN VARCHAR (50),
Fabricante VARCHAR(50), 
Modelo VARCHAR(50) NOT NULL,
Año INTEGER NOT NULL,
Color VARCHAR(30)

);

CREATE TABLE automoviles_customers.clientes(
ID VARCHAR(50),
Clientes_ID INTEGER PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(50),
TELEFONO VARCHAR(50),
Email VARCHAR(50),
Direccion VARCHAR(50),
Ciudad VARCHAR(50), 
Estado VARCHAR(50),
Pais VARCHAR(50),
Codigo_Postal INT NOT NULL

);

CREATE TABLE automoviles_customers.factura(
ID INTEGER NOT NULL,
Numero_Factura INTEGER PRIMARY KEY AUTO_INCREMENT,
Fecha VARCHAR(30), 
Automovil INTEGER,
Cliente INTEGER,
Vendedor_Relacionado INTEGER

);


CREATE TABLE automoviles_customers.vendedores(
ID INTEGER NOT NULL,
ID_Personal INTEGER PRIMARY KEY AUTO_INCREMENT,
Nombre VARCHAR(50),
Tienda VARCHAR(50)

);





