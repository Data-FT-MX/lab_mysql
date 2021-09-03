CREATE SCHEMA IF NOT EXISTS lab_mysql DEFAULT CHARACTER SET utf8 ;
USE lab_mysql ;


CREATE TABLE IF NOT EXISTS lab_mysql.customers (
  idcustomers INT NOT NULL,
  nameC VARCHAR(50) NULL,
  phone_number VARCHAR(50) NULL,
  mail VARCHAR(50) NULL,
  adress VARCHAR(120) NULL,
  city VARCHAR(50) NULL,
  state VARCHAR(50) NULL,
  country VARCHAR(50) NULL,
  zip BIGINT(50) NULL,
  PRIMARY KEY (idcustomers))
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS lab_mysql.SalesPerson (
  staff_id INT NOT NULL,
  nameC VARCHAR(50) NULL,
  store VARCHAR(50) NULL,
  PRIMARY KEY (staff_id))
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS lab_mysql.Invoices (
  idInvoices INT NOT NULL,
  numberI BIGINT(20) NULL,
  dateI VARCHAR(45) NULL,
  car INT(11) NULL,
  customer INT(11) NULL,
  salesperson VARCHAR(45) NULL,
  customers_idcustomers INT NOT NULL,
  SalesPerson_staff_id INT NOT NULL,
  PRIMARY KEY (idInvoices),
  INDEX fk_Invoices_customers_idx (customers_idcustomers ASC),
  INDEX fk_Invoices_SalesPerson1_idx (SalesPerson_staff_id ASC),
  CONSTRAINT fk_Invoices_customers
    FOREIGN KEY (customers_idcustomers)
    REFERENCES lab_mysql.customers (idcustomers)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Invoices_SalesPerson1
    FOREIGN KEY (SalesPerson_staff_id)
    REFERENCES lab_mysql.SalesPerson (staff_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



CREATE TABLE IF NOT EXISTS lab_mysql.cars (
  idcars INT NOT NULL,
  VIN VARCHAR(45) NULL,
  manufacturer VARCHAR(45) NULL,
  model VARCHAR(45) NULL,
  yearC INT(11) NULL,
  color VARCHAR(45) NULL,
  Invoices_idInvoices INT NOT NULL,
  PRIMARY KEY (idcars),
  INDEX fk_cars_Invoices1_idx (Invoices_idInvoices ASC),
  CONSTRAINT fk_cars_Invoices1
    FOREIGN KEY (Invoices_idInvoices)
    REFERENCES lab_mysql.Invoices (idInvoices)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


