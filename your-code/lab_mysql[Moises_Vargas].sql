CREATE TABLE lab_mysql.Cars (id int NOT NULL PRIMARY KEY, car_VIN VARCHAR(20), manufact VARCHAR(20), model VARCHAR(20), year INT, color VARCHAR(20));
INSERT INTO lab_mysql.Cars 
VALUES(0,	'3K096I98581DHSNUP',	'Volkswagen',	'Tiguan',	2019,	'Blue'),
	(1,	'ZM8G7BEUQZ97IH46V',	'Peugeot',	'Rifter',	2019,	'Red'),
	(2,	'RKXVNNIHLVVZOUB4M',	'Ford',	'Fusion',	2018,	'White'),
	(3,	'HKNDGS7CU31E9Z7JW',	'Toyota',	'RAV4',	2018,	'Silver'),
	(4,	'DAM41UDN3CHU2WVF6',	'Volvo',	'V60',	2019,	'Gray'),
	(5,	'DAM41UDN3CHU2WVF6',	'Volvo',	'V60 Cross Country',	2019,	'Gray');


CREATE TABLE lab_mysql.Customers (id int NOT NULL PRIMARY KEY, customer_id INT, nombre VARCHAR(20), phone VARCHAR(20), email VARCHAR(20), address VARCHAR(30), city VARCHAR(20), state_prov VARCHAR(20), country VARCHAR(20), postal int);
INSERT INTO lab_mysql.Customers 
VALUES(0, 10001,	'Pablo Picasso',	'+34 636 17 63 82', '-',	'Paseo de la Chopera, 14',	'Madrid', 	'Madrid',	'Spain',	28045),
(1,	20001, 'Abraham Lincoln',	'+1 305 907 7086',	'-',	'120 SW 8th St',	'Miami',	'Florida',	'United States',	33130),
(2, 30001,	'Napoléon Bonaparte',	'+33 1 79 75 40 00', '-', '40 Rue du Colisée',	'Paris',	'Île-de-France',	'France',	75008);

CREATE TABLE lab_mysql.Salespersons (id int NOT NULL PRIMARY KEY, staff_id INT, nombre_sales VARCHAR(20), store VARCHAR(30));
INSERT INTO lab_mysql.Salespersons 
VALUES(0,	00001,	'Petey Cruiser', 'Madrid'),
(1,	00002,	'Anna Sthesia',	'Barcelona'),
(2,	00003,	'Gail Forcewind',	'Paris'),
(4,	00005,	'Paige Turner',	'Mimia'),
(5,	00006,	'Bob Frapples',	'Mexico City'),
(6,	00007,	'Walter Melon',	'Amsterdam'),
(7,	00008,	'Shonda Leer',	'São Paulo');

CREATE TABLE lab_mysql.Invoices (id int NOT NULL PRIMARY KEY, inv_num INT, fecha VARCHAR(20), car_VIN VARCHAR(20), customer_id INT, staff_id INT); 
INSERT INTO lab_mysql.Invoices 
VALUES(0,	852399038,	'22-08-2018',	0,	1,	3),
(1,	731166526,	'31-12-2018',	3,	0,	5),
(2,	271135104,	'22-01-2019',	2,	2,	7);
 
