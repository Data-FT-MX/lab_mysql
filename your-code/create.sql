USE lab_mysql;

CREATE TABLE Salespersons (ID INT, staff_id INT, staff VARCHAR(20),
store VARCHAR(20));

CREATE TABLE Cars (ID INT, VIN VARCHAR(20), Manufacturer VARCHAR(20), Model VARCHAR(20),
yr INT, Color VARCHAR(20));

CREATE TABLE Customers (ID INT, customer_id INT, customer VARCHAR(20), phone VARCHAR(20),
email VARCHAR(20), address VARCHAR(40), city VARCHAR(20), state VARCHAR(20),
country VARCHAR(20), postal VARCHAR(20));

CREATE TABLE invoices (ID INT, invoice_number INT, invoice_date VARCHAR(25), car INT,
customer INT, sales_person INT);
