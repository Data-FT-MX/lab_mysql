USE lab_mysql;

CREATE TABLE car (
  id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  vim VARCHAR(45) NOT NULL,
  manufacturer VARCHAR(45) NOT NULL,
  model VARCHAR(45) NOT NULL,
  year INT UNSIGNED NOT NULL,
  color VARCHAR(45) NOT NULL,
  PRIMARY KEY  (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE customer (
  id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  customer_id VARCHAR(45) NOT NULL,
  name VARCHAR(100) NOT NULL,
  phone VARCHAR(24) NOT NULL,
  email VARCHAR(100) NOT NULL,
  address VARCHAR(100) NOT NULL,
  city VARCHAR(100) NOT NULL,
  state VARCHAR(100) NOT NULL,
  country VARCHAR(45) NOT NULL,
  zip VARCHAR(45) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE salesperson (
  id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  staff_id VARCHAR(45) NOT NULL,
  name VARCHAR(100) NOT NULL,
  store VARCHAR(24) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
CREATE TABLE invoice (
  id SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  date DATE NOT NULL,
  car_id SMALLINT UNSIGNED NOT NULL,
  customer_id SMALLINT UNSIGNED NOT NULL,
  salesperson_id SMALLINT UNSIGNED NOT NULL,
  last_update TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (id),
  KEY idx_fk_car_id (car_id),
  KEY idx_fk_customer_id (customer_id),
  KEY idx_fk_salesperson_id (salesperson_id),
  CONSTRAINT `fk_invoice_car` FOREIGN KEY (car_id) REFERENCES car (id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_invoice_customer` FOREIGN KEY (customer_id) REFERENCES customer (id) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_invoice_salesperson` FOREIGN KEY (salesperson_id) REFERENCES salesperson (id) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


INSERT INTO car VALUES (1,'3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
(2,'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
(3,'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
(4,'HKNDGS7CU31E9Z7JW', 'Toyota','RAV4', 2018, 'Silver'),
(5,'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
(6,'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');


INSERT INTO customer VALUES( 1, '10001',	'Pablo Picasso',	'+34 636 17 63 82',	'-', 'Paseo de la Chopera, 14',	'Madrid','Madrid',	'Spain','28045'),
(2,	'20001',	'Abraham Lincoln',	'+1 305 907 7086',	'-',	'120 SW 8th St',	'Miami',	'Florida',	'United States',	'33130'),
(3,	'30001',	'Napoléon Bonaparte',	'+33 1 79 75 40 00', '-',	'40 Rue du Colisée',	'Paris',	'Île-de-France',	'France',	'75008');

INSERT INTO salesperson VALUES (1,	'00001',	'Petey Cruiser',	'Madrid'),
(2,	'00002',	'Anna Sthesia',	'Barcelona'),
(3,	'00003',	'Paul Molive',	'Berlin'),
(4,	'00004',	'Gail Forcewind',	'Paris'),
(5,	'00005',	'Paige Turner',	'Mimia'),
(6,	'00006',	'Bob Frapples',	'Mexico City'),
(7,	'00007',	'Walter Melon',	'Amsterdam'),
(8,	'00008',	'Shonda Leer',	'São Paulo');

INSERT INTO lab_mysql.invoice(ID, date, car_id, custumer_id, sales_person_id, last_update)
VALUES  (0, 852399038, '2018-08-22', 0, 1, 3, '2021-09-05'),
		(1, 731166526, '2018-12-31', 3, 0, 5, '2021-09-05'),
        (2, 271135104, '2019-01-02', 2, 2, 7,'2021-09-05');


