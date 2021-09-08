USE lab_mysql;

CREATE DATABASE lab_mysql;

CREATE TABLE lab_mysql.cars (
id_car VARCHAR(10), VIN VARCHAR(45), manufacturer VARCHAR (45),
model VARCHAR(45), year_cars CHAR(4), color VARCHAR(45)
);

CREATE TABLE lab_mysql.customers (
id_cus VARCHAR(10), custom_id VARCHAR(45), name_cus VARCHAR(45), phone_number VARCHAR(45),
email VARCHAR(45), address VARCHAR (45), city VARCHAR(45), state_providence VARCHAR(45), 
country VARCHAR(45), zip_code VARCHAR(45)
);

CREATE TABLE lab_mysql.salesperson(
id_sales VARCHAR(10), staff_id VARCHAR(45), name_sales VARCHAR(45), store VARCHAR(45)
);

CREATE TABLE lab_mysql.invoices(
id_inv VARCHAR(10), ivc_number VARCHAR (45), date_ivc VARCHAR(45), car VARCHAR(45), customer VARCHAR(45), 
salesperson VARCHAR(45)
);