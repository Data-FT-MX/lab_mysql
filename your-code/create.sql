/*DROP DATABASE lab_mysql;*/
USE lab_mysql;

DROP TABLE IF EXISTS custumers;
DROP TABLE IF EXISTS salespersons;
DROP TABLE IF EXISTS invoice;
DROP TABLE IF EXISTS cars;

#DEFINIR BIEN LAS LLAVES
CREATE TABLE custumers (
  id_custumer TINYINT UNSIGNED NOT NULL,
  custumer_id INT NOT NULL,
  first_name VARCHAR(50) NOT NULL,
  phone_number VARCHAR(15),
  email VARCHAR(50),
  address VARCHAR(50),
  city VARCHAR(50),
  state VARCHAR(15),
  country VARCHAR(40),
  zip INT,
  PRIMARY KEY (id_custumer)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE table invoice (
  ID TINYINT UNSIGNED NOT NULL,
  invoice_num BIGINT NOT NULL,
  date_ DATE,
  car_id TINYINT UNSIGNED NOT NULL,
  id_custumer TINYINT UNSIGNED NOT NULL,
  sales_person_id TINYINT UNSIGNED NOT NULL,
  PRIMARY KEY (ID),
  KEY (car_id),
  KEY (sales_person_id),
  KEY (id_custumer)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE salespersons (
  sales_person_id TINYINT UNSIGNED NOT NULL,
  staff_id BIGINT,
  first_name VARCHAR(45),
  store_company varchar(50),
  PRIMARY KEY (sales_person_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE cars (
  car_id TINYINT UNSIGNED NOT NULL,
  vin VARCHAR(20),
  manufacturer VARCHAR(50),
  model varchar(20),
  year_ int,
  color varchar(20),
  PRIMARY KEY (car_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
