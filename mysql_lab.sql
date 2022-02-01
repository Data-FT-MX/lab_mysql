CREATE DATABASE lab_mysql;
USE lab_mysql;
-- -----------------------------------------------------
CREATE TABLE customers(
customer_id VARCHAR(100),
cutomer_name VARCHAR(100),
customer_phone VARCHAR(100),
customer_email  VARCHAR(100),
customer_address  VARCHAR(100),
customer_city VARCHAR(100),
customer_state VARCHAR(100),
customer_country VARCHAR(100),
customer_pc VARCHAR(100));

-- --------------------------------------------------

CREATE TABLE cars(
cars_vin VARCHAR(100),
cars_manufacturer VARCHAR(100),
cars_model VARCHAR(100),
cars_year  VARCHAR(100),
cars_color  VARCHAR(100));

-- --------------------------------------------------

CREATE TABLE salespersons(
sales_id VARCHAR(100),
sales_name VARCHAR(100),
sales_store VARCHAR(100));

-- -----------------------------------------------------

CREATE TABLE invoices(
invoice_num VARCHAR(100),
invoice_date VARCHAR(100),
invoice_car VARCHAR(100),
invoice_costumer  VARCHAR(100),
invoice_salesperson  VARCHAR(100));

-- -----------------------------------------------------

INSERT INTO cars VALUES 
('3K096I98581DHSNUP','Volkswagen','Tiguan',2019,'Blue'),
('ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
('RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
('HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
('DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'),
('DAM41UDN3CHU2WVF6','Volvo','V60','2019','Gray');
-- --------------------------------------------------------------
INSERT INTO customers VALUES (10001,'Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera, 14','Madrid','Madrid','Spain',28045),
(20001,'Abraham Lincoln','+1 305 907 7086','-','120 SW 8th St','Miami','Florida','United States',33130),
(30001,'Napoléon Bonaparte','+33 1 79 75 40 00','-','40 Rue du Colisée','Paris','Île-de-France','France',75008);

-- ---------------------------------------------------------------
INSERT INTO salespersons VALUES (00001,'Petey Cruiser','Madrid'),
(00002,'Anna Sthesia','Barcelona'),
(00003,'Paul Molive','Berlin'),
(00004,'Gail Forcewind','Paris'),
(00005,'Paige Turner','Mimia'),
(00006,'Bob Frapples','Mexico City'),
(00007,'Walter Melon','Amsterdam'),
(00008,'Shonda Leer','São Paulo');

-- -----------------------------------------------------------------

INSERT INTO invoices VALUES (852399038,'22-08-2018',0,1,3),
(852399038,'22-08-2018',0,1,3),
(271135104,'22-01-2019',2,2,7);

-- -----------------------------------------------------------------
