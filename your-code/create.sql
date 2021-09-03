USE lab_mysql;

CREATE DATABASE lab_mysql;

CREATE TABLE lab_mysql.cars (
VIN VARCHAR(45), man_facturer VARCHAR(45), 
model VARCHAR(45), year_cars CHAR(4), color VARCHAR(45)
);

/* DROP TABLE cars; */


CREATE TABLE lab_mysql.customers (
custom_id VARCHAR(45), name_cus VARCHAR(45), phone_number VARCHAR(45),
email VARCHAR(45), addres VARCHAR(45), city VARCHAR(45), state_providence VARCHAR (45),
country VARCHAR(45), zip_code VARCHAR(45)
);

/* DROP TABLE customers; */

CREATE TABLE lab_mysql.salesperson (
staff_id VARCHAR(45), name_sales VARCHAR(45), store VARCHAR(45)
);

/* DROP TABLE salesperson; */

CREATE TABLE lab_mysql.invoices (
ivc_number VARCHAR(45), date_ivc VARCHAR(45), car VARCHAR(45), customer VARCHAR(45),
salesperson VARCHAR(45)
);

/* DROP TABLE invoices;*/

/* SHOW DATABASES; */
 /* DROP DATABASE labmysql; */ 

