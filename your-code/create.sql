USE lab_mysql;

CREATE DATABASE lab_mysql;


CREATE TABLE lab_mysql.cars (
id_car CHAR(5), VIN VARCHAR(45), man_facturer VARCHAR(45), 
model VARCHAR(45), year_cars CHAR(4), color VARCHAR(45)
);




CREATE TABLE lab_mysql.customers (
id_cus CHAR(5), custom_id VARCHAR(45), name_cus VARCHAR(45), phone_number VARCHAR(45),
email VARCHAR(45), addres VARCHAR(45), city VARCHAR(45), state_providence VARCHAR (45),
country VARCHAR(45), zip_code VARCHAR(45)
);



CREATE TABLE lab_mysql.salesperson (
id_sales CHAR(5), staff_id VARCHAR(45), name_sales VARCHAR(45), store VARCHAR(45)
);


CREATE TABLE lab_mysql.invoices (
id_inv CHAR(5), ivc_number VARCHAR(45), date_ivc VARCHAR(45), car VARCHAR(45), customer VARCHAR(45),
salesperson VARCHAR(45)
);



/* SHOW DATABASES; */
 /* DROP DATABASE labmysql; */ 

