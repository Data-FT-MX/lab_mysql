#1. Creacion de una base de datos, sin tablas ni valores.
CREATE DATABASE Cars;                            

 #2.  Creacion de la primera tabla de nombre kars para no confundirse con la base de datos
 CREATE TABLE `cars`.`kars`(
`ID` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,  -- not null= esta columna no debe quedar vacia
`VIN` VARCHAR (20) NOT NULL,
`Manufacturer` VARCHAR (15) NOT NULL,
`Model` VARCHAR (20) NOT NULL,
`YEAR` INT NOT NULL, 
`Color` VARCHAR (8) NOT NULL
);

#3. Insercion de valores a la tabla kars.
INSERT INTO cars.kars
VALUES 
(1, '3K096I98581DHSNUP','Volkswagen', 'Tiguan', 2019, 'Blue'), 
(2, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(3, 'RKXVNNIHLVVZOUB4M' , 'Ford', 'Fusion', 2018, 'White'),
(4, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(6, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60_Cross _Country', 2019, 'Gray');
/*Para agregar mas valores, el ; se sustituye por , y se agregan los parentesis*/        

#3.1 Revision de la tabla con sus valores
Select *
From cars.kars;

#4. Creacion y llenado de las demas tablas
-- Customers
CREATE TABLE `cars`.`customers`(
`ID` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,  -- not null= esta columna no debe quedar vacia
`Customer_id` VARCHAR (20) NOT NULL,
`Name` VARCHAR (15) NOT NULL,
`Phone` VARCHAR (20) NOT NULL,
`Email` VARCHAR (35) NULL, 
`Address` VARCHAR (45) NOT NULL,
`City` VARCHAR (20) NOT NULL,
`State/Province` VARCHAR (20) NOT NULL,
`Country` VARCHAR (20) NOT NULL,
`Postal` INT NOT NULL
);

-- Customers
INSERT INTO cars.customers
VALUES 
(1, '10001', 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14',
 'Madrid', 'Madrid', 'Spain', 28045),
(2,	'20001', 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 
'Miami', 'Florida', 'United States', 33130),
(3, '30001', 'Napoleon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée',
'Paris', 'Île-de-France', 'France', 75008);

# Modificacion por incluir nombres con longitud mayor a lo especificado en la creacion de la tabla
ALTER TABLE cars.customers
MODIFY Name Varchar(60) not null;

#Verificacion
Select *
From cars.customers;

-- Salesperson
CREATE TABLE `cars`.`salesperson`(
`ID` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,  -- not null= esta columna no debe quedar vacia
`Staff_id` INT (6) ZEROFILL NOT NULL,
`Name` VARCHAR (25) NOT NULL,
`Store` VARCHAR (25) NOT NULL
);

-- Salesperson 
INSERT INTO cars.salesperson
VALUES 
(1, 1, 'Petey Cruiser', 'Madrid'),
(2, 2, 'Anna Sthesia', 'Barcelona'),
(3, 3, 'Paul Molive', 'Berlin'),
(4, 4, 'Gail Forcewind', 'Paris'),
(5, 5, 'Paige Turner', 'Mimia'),
(6, 6, 'Bob Frapples', 'Mexico City'),
(7, 7, 'Walter Melon', 'Amsterdam'),
(8, 8, 'Shonda Leer', 'São Paulo');

#Verificacion
Select *
From cars.salesperson;

-- INVOICES. TABLA QUE CONTIENE LLAVES FORANEAS
CREATE TABLE `cars`.`invoices`(
`ID` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,  
`Invoice_number` INT NOT NULL,
`Date` DATE NOT NULL, --  MySQL espera que las fechas tengan el formato 'AAAA-MM-DD'
`Car` INT NOT NULL,
`Customer` INT NOT NULL, 
`Salesperson` INT NOT NULL,
CONSTRAINT fk_cars FOREIGN KEY (Car) REFERENCES kars(ID),
CONSTRAINT fk_customers FOREIGN KEY (Customer) REFERENCES customers(ID),
CONSTRAINT fk_salesperson FOREIGN KEY (Salesperson) REFERENCES salesperson(ID)
);

-- INVOICES. VALORES
INSERT INTO cars.invoices
VALUES 
(1, 852399038, 20180822, 1, 2, 3),
(2, 731166526, 20181231, 4, 1, 5),
(3, 271135104, 20190122, 3, 3, 7);

#Verificacion
Select *
From cars.invoices;

#BONUS
#1 
UPDATE cars.salesperson cs
SET cs.Store='Miami'
WHERE cs.Store LIKE '%Mimia%';

SELECT cars.salesperson.Store
FROM cars.salesperson
WHERE ID= 5;