CREATE DATABASE lab_mysql;

USE lab_mysql;

CREATE TABLE lab_mysql.cars (ID smallint, VIN VARCHAR(20), manufacturer VARCHAR(20), model VARCHAR(20), yr INT4, color VARCHAR(20));

CREATE TABLE lab_mysql.customers (ID smallint, customer_id integer, name VARCHAR(20), phone VARCHAR(20), email VARCHAR(20), 
address VARCHAR(50), city VARCHAR(20), state_province VARCHAR(20), country VARCHAR(20), postal integer);

CREATE TABLE lab_mysql.salespersons (ID integer, STAFF_ID VARCHAR(20), Name VARCHAR(20), Store VARCHAR(20));

CREATE TABLE lab_mysql.Invoces (ID integer, Invoce_Number bigint, Date date, Car smallint, Customer smallint, Sales_Person smallint);







