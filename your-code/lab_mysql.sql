CREATE DATABASE lab_mysql;
USE lab_mysql;
CREATE TABLE cars(id INT(11) NOT NULL AUTO_INCREMENT, model VARCHAR(60) NOT NULL, YEAR INT(4), color VARCHAR(60), PRIMARY KEY(id));
CREATE TABLE customers(customer_id INT(11) NOT NULL AUTO_INCREMENT, name VARCHAR(60) NOT NULL, phone_number INT(4), email VARCHAR(60), addres VARCHAR(60), city VARCHAR(60), state_province VARCHAR(60), country VARCHAR(60), zip_postal VARCHAR(60), PRIMARY KEY(customer_id));
CREATE TABLE invoices(invoice_id INT(11) NOT NULL AUTO_INCREMENT, fecha DATE, PRIMARY KEY(invoice_id));
CREATE TABLE salesperson(staff_id INT(11) NOT NULL AUTO_INCREMENT, name_staff VARCHAR(60) NOT NULL, store VARCHAR(60) NOT NULL, PRIMARY KEY(staff_id));
ALTER TABLE cars ADD VIN VARCHAR(30);
ALTER TABLE cars ADD manufacturer VARCHAR(30);

INSERT INTO lab_mysql.cars (id, model, YEAR, color, VIN, manufacturer) VALUES ('0','Tiguan', '2019', 'Blue', '3K096I98581DHSNUP', 'Volkswagen');
INSERT INTO lab_mysql.cars (id, model, YEAR, color, VIN, manufacturer) VALUES ('1','Rifter', '2019', 'Red', 'ZM8G7BEUQZ97IH46V', 'Peugeot');
INSERT INTO lab_mysql.cars (id, model, YEAR, color, VIN, manufacturer) VALUES ('2','Fusion', '2018', 'White', 'RKXVNNIHLVVZOUB4M', 'Ford');
INSERT INTO lab_mysql.cars (id, model, YEAR, color, VIN, manufacturer) VALUES ('3', 'RAV4', '2018', 'Silver', 'HKNDGS7CU31E9Z7JW', 'Toyota');
INSERT INTO lab_mysql.cars (id, model, YEAR, color, VIN, manufacturer) VALUES ('4', 'V60', '2019', 'Gray', 'DAM41UDN3CHU2WVF6', 'Volvo');
INSERT INTO lab_mysql.cars (id, model, YEAR, color, VIN, manufacturer) VALUES ('5', 'V60 Cross Country', '2019', 'Gray', 'DAM41UDN3CHU2WVF6', 'Volvo');

describe customers;
ALTER TABLE customers DROP phone_number;
ALTER TABLE customers ADD phone_number VARCHAR(30);
describe customers;
INSERT INTO lab_mysql.customers (customer_id, name, email, addres, city, state_province, country, zip_postal, phone_number) VALUES (10001, 'Pablo Picasso', 'pablopicasso@gmail.com', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045', '+34 636 17 63 82');
INSERT INTO lab_mysql.customers (customer_id, name, email, addres, city, state_province, country, zip_postal, phone_number) VALUES (20001, 'Abraham Lincoln', 'pablopicasso@gmail.com', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130', '+1 305 907 7086');
INSERT INTO lab_mysql.customers (customer_id, name, email, addres, city, state_province, country, zip_postal, phone_number) VALUES (30001, 'Napoléon Bonaparte', 'pablopicasso@gmail.com', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008', '+33 1 79 75 40 00');
describe salesperson;

INSERT INTO lab_mysql.salesperson (staff_id, name_staff, store) VALUES (00001, 'Petey Cruiser', 'Madrid');
INSERT INTO lab_mysql.salesperson (staff_id, name_staff, store) VALUES (00002, 'Anna Sthesia', 'Barcelona');
INSERT INTO lab_mysql.salesperson (staff_id, name_staff, store) VALUES (00003, 'Paul Molive', 'Berlin');
INSERT INTO lab_mysql.salesperson (staff_id, name_staff, store) VALUES (00004, 'Gail Forcewind', 'Paris');
INSERT INTO lab_mysql.salesperson (staff_id, name_staff, store) VALUES (00005, 'Paige Turner', 'Mimia');
INSERT INTO lab_mysql.salesperson (staff_id, name_staff, store) VALUES (00006, 'Bob Frapples', 'Mexico City');
INSERT INTO lab_mysql.salesperson (staff_id, name_staff, store) VALUES (00007, 'Walter Melon', 'Amsterdam');
INSERT INTO lab_mysql.salesperson (staff_id, name_staff, store) VALUES (00008, 'Shonda Leer', 'São Paulo');

describe invoices;
SELECT * FROM invoices;

INSERT INTO lab_mysql.invoices (invoice_id, fecha) VALUES (0, '2018-08-22');
INSERT INTO lab_mysql.invoices (invoice_id, fecha) VALUES (3, '2018-12-31');
INSERT INTO lab_mysql.invoices (invoice_id, fecha) VALUES (4, '2019-01-22');



SELECT * FROM cars;
SELECT * FROM customers;
SELECT * FROM salesperson