USE lab_mysql;

CREATE TABLE Salespersons (ID INT, staff_id INT, staff VARCHAR(40),
store VARCHAR(40));

CREATE TABLE Cars (ID INT, VIN VARCHAR (40), Manufacturer VARCHAR(40), Model VARCHAR(40),
yr INT, Color VARCHAR (40));

CREATE TABLE Customers (ID INT, customer_id INT,customer VARCHAR(40), Phone VARCHAR(40), email VARCHAR(40),
address VARCHAR(40), city VARCHAR(40), state VARCHAR(40), country VARCHAR(40), Postal VARCHAR(40));

CREATE TABLE invoices (ID INT, invoices_number INT, invoices_date DATE, car INT,
customer INT, sales_person INT);

DROP TABLE invoices;

CREATE TABLE invoices (ID INT, invoices_number INT, invoices_date VARCHAR(40), car INT,
customer INT, sales_person INT);




