CREATE TABLE laboratorio.cars (
id_car SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
VIN VARCHAR(25) NOT NULL,
Manufacturer VARCHAR(15) NOT NULL,
Model VARCHAR(25) NOT NULL,
Year_ VARCHAR(4) NOT NULL,
Color VARCHAR(15) NOT NULL,
PRIMARY KEY (id_car))
DEFAULT CHARSET=utf8mb4;

CREATE TABLE laboratorio.salespersons(
id_staff TINYINT UNSIGNED NOT NULL AUTO_INCREMENT,
name_ VARCHAR(30) NOT NULL,
store VARCHAR(30) NOT NULL,
PRIMARY KEY (id_staff))
DEFAULT CHARSET=utf8mb4;

  CREATE TABLE laboratorio.invoices (
 invoice_num SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
 date_invoice DATETIME NOT NULL,
 id_car SMALLINT UNSIGNED NOT NULL,
 id_customer SMALLINT UNSIGNED NOT NULL,
 id_staff TINYINT UNSIGNED NOT NULL,
 payment_form VARCHAR(10) NOT NULL,
 insurance BOOLEAN NOT NULL DEFAULT FALSE,
 PRIMARY KEY (invoice_num),
 KEY idx_fk_id_car (id_car),
 KEY idx_fk_id_customer (id_customer),
 KEY idx_fk_id_staff (id_staff)
 )
 DEFAULT CHARSET=utf8mb4;
 
CREATE TABLE laboratorio.customers (
  customer_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  full_name VARCHAR(45) NOT NULL,
  phone VARCHAR(45) NOT NULL,
  email VARCHAR(50) DEFAULT NULL,
  address VARCHAR(50) DEFAULT NULL,
  city VARCHAR(50) DEFAULT NULL,
  state_province VARCHAR(50) DEFAULT NULL,
  country VARCHAR(50) DEFAULT NULL,
  zip_code VARCHAR(10) DEFAULT NULL,
  PRIMARY KEY  (customer_id))
  DEFAULT CHARSET=utf8mb4;
 
 DROP TABLE laboratorio.customers;
  
  CREATE TABLE laboratorio.customers (
  customer_id VARCHAR(45) NOT NULL,
  full_name VARCHAR(45) NOT NULL,
  phone VARCHAR(45) NOT NULL,
  email VARCHAR(50) DEFAULT NULL,
  address VARCHAR(50) DEFAULT NULL,
  city VARCHAR(50) DEFAULT NULL,
  state_province VARCHAR(50) DEFAULT NULL,
  country VARCHAR(50) DEFAULT NULL,
  zip_code VARCHAR(10) DEFAULT NULL,
  PRIMARY KEY  (customer_id))
  DEFAULT CHARSET=utf8mb4;
  
  INSERT INTO laboratorio.customers
 VALUES (10001, 'Pablo Picasso',	'+34 636 17 63 82',	'-',	'Paseo de la Chopera, 14',	'Madrid',	'Madrid',	'Spain',	'28045'),
 (20001, 'Abraham Lincoln',	'+1 305 907 7086',	'-',	'120 SW 8th St',	'Miami',	'Florida',	'United States',	'33130'),
 (30001, 'Napoléon Bonaparte',	'+33 1 79 75 40 00',	'-',	'40 Rue du Colisée',	'Paris',	'Île-de-France',	'France',	'7500');
 
 INSERT INTO laboratorio.salespersons
 VALUES (1,	'Petey Cruiser',	'Madrid'),
(2,	'Anna Sthesia',	'Barcelona'),
(3,	'Paul Molive',	'Berlin'),
(4,	'Gail Forcewind',	'Paris'),
(5,	'Paige Turner',	'Mimia'),
(6,	'Bob Frapples',	'Mexico City'),
(7,	'Walter Melon',	'Amsterdam'),
(8,	'Shonda Leer',	'São Paulo');

INSERT INTO laboratorio.cars
VALUES (1,'3K096I98581DHSNUP',	'Volkswagen',	'Tiguan',	'2019',	'Blue'),
(2,'ZM8G7BEUQZ97IH46V',	'Peugeot', 'Rifter',	'2019',	'Red'),
(3,'RKXVNNIHLVVZOUB4M',	'Ford',	'Fusion',	'2018',	'White'),
(4,'HKNDGS7CU31E9Z7JW',	'Toyota',	'RAV4',	'2018',	'Silver'),
(5,'DAM41UDN3CHU2WVF6',	'Volvo',	'V60',	'2019',	'Gray'),
(6,'DAM41UDN3CHU2WVF6',	'Volvo',	'V60 Cross Country',	'2019',	'Gray');

DROP TABLE laboratorio.invoices;

 CREATE TABLE laboratorio.invoices (
 invoice_id VARCHAR(45) NOT NULL,
 invoice_num VARCHAR(45) NOT NULL,
 date_invoice VARCHAR(45) NOT NULL,
 id_car SMALLINT UNSIGNED NOT NULL,
 id_customer VARCHAR(45) NOT NULL,
 id_staff TINYINT UNSIGNED NOT NULL,
 payment_form VARCHAR(10) NOT NULL,
 insurance BOOLEAN NOT NULL DEFAULT FALSE,
 PRIMARY KEY (invoice_num),
 KEY idx_fk_id_car (id_car),
 KEY idx_fk_id_customer (id_customer),
 KEY idx_fk_id_staff (id_staff)) DEFAULT CHARSET=utf8mb4;
 
 
 
 
INSERT INTO laboratorio.invoices
VALUES(1,852399038,	22/08/2018,	0,	1, 3, 'Credito', False),
(2,731166526,	31/12/2018,	3,	0, 5, 'Contado', False),
(3,271135104,	22/01/2019,	2,	2, 7, 'Contado', True);




 
 
