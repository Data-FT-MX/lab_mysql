CREATE TABLE lab_mysql.Cars
(
	id int, 
    vehicle_car_id varchar(30) NOT NULL,
    manufacturer varchar (30) NOT NULL,
    model varchar (30) NOT NULL,
    year int DEFAULT 1900,
    color varchar (30) NOT NULL
);

INSERT INTO lab_mysql.Cars
VALUES(0,'3K096I98581DHSNUP','Volkaswagen','Tiguan',2019,'Blue'),
(1,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
(2,'RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
(3,'HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
(4,'DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'),
(5,'DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');

SELECT *
FROM lab_mysql.Cars;

CREATE TABLE lab_mysql.Customers
(
	id int, 
    customer_id int,
    customer_name varchar (30) NOT NULL,
    phone_number varchar (30) NOT NULL,
    email varchar (30) NOT NULL,
    adress varchar (30) NOT NULL,
    city varchar (30) NOT NULL,
    state_province varchar (30) NOT NULL,
    country varchar (30) NOT NULL,
    zip_code varchar (30) NOT NULL
);

INSERT INTO lab_mysql.Customers
VALUES(0,10001,'Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera, 1','Madrid','Madrid','Spain','28045'),
(1,20001,'Abraham Lincoln','+1 305 907 7086','-','120 SW 8th St','Miami','Florida','United States','33130'),
(2,30001,'Napoléon Bonaparte','+33 1 79 75 40 00','-','40 Rue du Colisée','Paris','Île-de-France','France','75008');

SELECT *
FROM lab_mysql.Customers;

CREATE TABLE lab_mysql.Salespersons
(
	id int, 
    staff_id int,
    sp_name varchar (30) NOT NULL,
    store varchar (30) NOT NULL
);

INSERT INTO lab_mysql.Salespersons
VALUES
(0,00001,'Petey Cruiser','Madrid'),
(1,00002,'Anna Sthesia','Barcelona'),
(2,00003,'Paul Molive','Berlin'),
(3,00004,'Gail Forcewind','Paris'),
(4,00005,'Paige Turner','Mimia'),
(5,00006,'Bob Frapples','Mexico City'),
(6,00007,'Walter Melon','Amsterdam'),
(7,00008,'Shonda Leer','São Paulo');

SELECT *
FROM lab_mysql.Salespersons;

-- -----------------------------------
# En este punto me di cuenta que no se estaban especificando las restricciones correctas en las tablas de sql
-- -----------------------------------
DROP TABLE lab_mysql.Cars;
DROP TABLE lab_mysql.Customers;
DROP TABLE lab_mysql.Salespersons;
-- -----------------------------------

CREATE TABLE lab_mysql.Cars
(
	car_id int PRIMARY KEY, 
    vehicle_car_id varchar(30),
    manufacturer varchar (30),
    model varchar (30),
    year int DEFAULT 1900,
    color varchar (30)
);

INSERT INTO lab_mysql.Cars
VALUES(0,'3K096I98581DHSNUP','Volkaswagen','Tiguan',2019,'Blue'),
(1,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
(2,'RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
(3,'HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
(4,'DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'),
(5,'DAM41UDN3CHU2WVF6','Volvo','V60 Cross Country',2019,'Gray');

SELECT *
FROM lab_mysql.Cars;

CREATE TABLE lab_mysql.Customers
(
	cust_id int PRIMARY KEY, 
    customer_id int,
    customer_name varchar (30),
    phone_number varchar (30),
    email varchar (30),
    adress varchar (30),
    city varchar (30),
    state_province varchar (30),
    country varchar (30),
    zip_code int
);

INSERT INTO lab_mysql.Customers
VALUES(0,10001,'Pablo Picasso','+34 636 17 63 82','-','Paseo de la Chopera, 1','Madrid','Madrid','Spain',28045),
(1,20001,'Abraham Lincoln','+1 305 907 7086','-','120 SW 8th St','Miami','Florida','United States',33130),
(2,30001,'Napoléon Bonaparte','+33 1 79 75 40 00','-','40 Rue du Colisée','Paris','Île-de-France','France',75008);

SELECT *
FROM lab_mysql.Customers;

CREATE TABLE lab_mysql.Salespersons
(
	sp_id int PRIMARY KEY, 
    staff_id int,
    sp_name varchar (30),
    store varchar (30)
);

INSERT INTO lab_mysql.Salespersons
VALUES
(0,00001,'Petey Cruiser','Madrid'),
(1,00002,'Anna Sthesia','Barcelona'),
(2,00003,'Paul Molive','Berlin'),
(3,00004,'Gail Forcewind','Paris'),
(4,00005,'Paige Turner','Mimia'),
(5,00006,'Bob Frapples','Mexico City'),
(6,00007,'Walter Melon','Amsterdam'),
(7,00008,'Shonda Leer','São Paulo');

SELECT *
FROM lab_mysql.Salespersons;

CREATE TABLE lab_mysql.Invoices
(
	inv_id int PRIMARY KEY, 
    invoice_number int,
    inv_date varchar (30),
    car_id int,
    CONSTRAINT fk_cars FOREIGN KEY (car_id)
	REFERENCES lab_mysql.cars (car_id),
    cust_id int,
    CONSTRAINT fk_customers FOREIGN KEY (cust_id)
    REFERENCES lab_mysql.customers (cust_id),
    sp_id int,
    CONSTRAINT fk_salespersons FOREIGN KEY (sp_id)
    REFERENCES lab_mysql.salespersons (sp_id)
);

INSERT INTO lab_mysql.Invoices
VALUES(0,852399038,'22-08-2018',0,1,3),
(1,731166526,'31-12-2018',3,0,5),
(2,271135104,'22-01-2019',2,2,7);

SELECT *
FROM lab_mysql.Invoices;

-- ---------------------------------------------------
# Bonus Challenge
-- ---------------------------------------------------

UPDATE lab_mysql.Salespersons
SET store = 'Miami'
WHERE store = 'Mimia';

SELECT *
FROM lab_mysql.Salespersons;

DELETE FROM lab_mysql.cars WHERE car_id = 4;

SELECT *
FROM lab_mysql.cars;

UPDATE lab_mysql.Customers
SET email = 'ppicasso@gmail.com'
WHERE Customers.email = '-';

UPDATE lab_mysql.Customers
SET email = 'lincoln@us.gov'
WHERE Customers.email = 'ppicasso@gmail.com' AND Customers.customer_name = 'Abraham Lincoln';

UPDATE lab_mysql.Customers
SET email = 'hello@napoleon.me'
WHERE Customers.email = 'ppicasso@gmail.com' AND Customers.customer_name = 'Napoleon Bonaparte';

SELECT *
FROM lab_mysql.customers;