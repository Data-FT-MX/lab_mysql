USE laboratorio;

CREATE TABLE cars (
id_car SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
VIN VARCHAR(25) NOT NULL,
Manufacturer VARCHAR(15) NOT NULL,
Model VARCHAR(25) NOT NULL,
Year_ VARCHAR(4) NOT NULL,
Color VARCHAR(15) NOT NULL,
PRIMARY KEY (id_car))
DEFAULT CHARSET=utf8mb4;

CREATE TABLE salespersons (
id_staff SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
name_ VARCHAR(30) NOT NULL,
store VARCHAR(30) NOT NULL,
PRIMARY KEY (id_staff))
DEFAULT CHARSET=utf8mb4;

CREATE TABLE customer (
  customer_id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  First_Name VARCHAR(45) NOT NULL,
  Phone VARCHAR(45) NOT NULL,
  email VARCHAR(50) DEFAULT NULL,
  address VARCHAR(50) DEFAULT NULL,
  City VARCHAR(50) DEFAULT NULL,
  State_Province VARCHAR(50) DEFAULT NULL,
  Country VARCHAR(50) DEFAULT NULL,
  Postal VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (customer_id))
 DEFAULT CHARSET=utf8mb4;
 
 CREATE TABLE Invoices (
  invoice_number_id SMALLINT UNSIGNED NOT NULL,
  id_car SMALLINT UNSIGNED NOT NULL,
  id_staff SMALLINT UNSIGNED NOT NULL,
  customer_id SMALLINT UNSIGNED NOT NULL,
  Date_invoice VARCHAR(50) DEFAULT NULL,
  KEY idx_fk_id_car (id_car),
  KEY idx_fk_id_staff (id_staff),
  KEY idx_fk_customer_id (customer_id),
  PRIMARY KEY  (invoice_number_id),
  CONSTRAINT fk_Invoices_cars FOREIGN KEY (id_car) REFERENCES cars (id_car) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_Invoices_salespersons FOREIGN KEY (id_staff) REFERENCES  salespersons (id_staff) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT fk_Invoices_customer FOREIGN KEY (customer_id) REFERENCES customer (customer_id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DROP TABLE laboratorio.invoices;
DROP TABLE laboratorio.customer;

CREATE TABLE customer (
  customer_id VARCHAR(45) NOT NULL,
  First_Name VARCHAR(45) NOT NULL,
  Phone VARCHAR(45) NOT NULL,
  email VARCHAR(50) DEFAULT NULL,
  address VARCHAR(50) DEFAULT NULL,
  City VARCHAR(50) DEFAULT NULL,
  State_Province VARCHAR(50) DEFAULT NULL,
  Country VARCHAR(50) DEFAULT NULL,
  Postal VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY  (customer_id))
 DEFAULT CHARSET=utf8mb4;

CREATE TABLE Invoices (
  invoice_number_id SMALLINT UNSIGNED NOT NULL,
  Date_invoice VARCHAR(50) DEFAULT NULL,
  id_car SMALLINT UNSIGNED NOT NULL,
  customer_id SMALLINT UNSIGNED NOT NULL,
  id_staff SMALLINT UNSIGNED NOT NULL,
  KEY idx_fk_id_car (id_car),
  KEY idx_fk_id_staff (id_staff),
  KEY idx_fk_customer_id (customer_id),
  PRIMARY KEY  (invoice_number_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO customer
 VALUES (10001, 'Pablo Picasso',	'+34 636 17 63 82',	'-',	'Paseo de la Chopera, 14',	'Madrid',	'Madrid',	'Spain',	'28045'),
 (20001, 'Abraham Lincoln',	'+1 305 907 7086',	'-',	'120 SW 8th St',	'Miami',	'Florida',	'United States',	'33130'),
 (30001, 'Napoléon Bonaparte',	'+33 1 79 75 40 00',	'-',	'40 Rue du Colisée',	'Paris',	'Île-de-France',	'France',	'7500');

Drop Table laboratorio.invoices;
CREATE TABLE Invoices (
  invoice_number_id SMALLINT UNSIGNED NOT NULL,
  Date_invoice VARCHAR(50) DEFAULT NULL,
  id_car SMALLINT UNSIGNED NOT NULL,
  customer_id SMALLINT UNSIGNED NOT NULL,
  id_staff SMALLINT UNSIGNED NOT NULL,
  KEY idx_fk_id_car (id_car),
  KEY idx_fk_id_staff (id_staff),
  KEY idx_fk_customer_id (customer_id),
  PRIMARY KEY  (invoice_number_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

Drop Table laboratorio.invoices;

CREATE TABLE Invoices (
  invoice_number_id  VARCHAR(50) NOT NULL,
  Date_invoice VARCHAR(50) DEFAULT NULL,
  id_car SMALLINT UNSIGNED NOT NULL,
  customer_id SMALLINT UNSIGNED NOT NULL,
  id_staff SMALLINT UNSIGNED NOT NULL,
  KEY idx_fk_id_car (id_car),
  KEY idx_fk_id_staff (id_staff),
  KEY idx_fk_customer_id (customer_id),
  PRIMARY KEY  (invoice_number_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;




INSERT INTO Invoices
 VALUES(731166526,'31-12-2018',3,0,5),
 ( 271135104,'22-01-2019',2,2,7);
 
INSERT INTO salespersons
 VALUES(00001,	'Petey Cruiser',	'Madrid'),
 (00002, 'Anna Sthesia',	'Barcelona'),
 (00003,	'Paul Molive',	'Berlin'),
 (00004,	'Gail Forcewind',	'Paris'),
 (00005,	'Paige Turner',	'Mimia'),
 (00006,	'Bob Frapples',	'Mexico City'),
 (00007,	'Walter Melon',	'Amsterdam'),
 (00008,	'Shonda Leer',	'São Paulo'); 
 
 INSERT INTO cars
 VALUES
 (1,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter','2019','Red'),
 (2,'RKXVNNIHLVVZOUB4M','Ford','Fusion','2018','White'),
 (3,'HKNDGS7CU31E9Z7JW','Toyota','RAV4','2018','Silver'),
 (4,'DAM41UDN3CHU2WVF6','Volvo','V60','2019','Gray'),
 (5,'DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country','2019','Gray');


 