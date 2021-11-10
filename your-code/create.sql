USE lab_mysql;

CREATE TABLE Salespersons (staff_id INT, staff VARCHAR(20),
store VARCHAR(20));
CREATE TABLE Cars (VIN VARCHAR(20), Manufacturer VARCHAR(20), Model VARCHAR(20),
yr VARCHAR(20), Color VARCHAR(20));
CREATE TABLE Customers (customer_id INT, customer VARCHAR(20), phone VARCHAR(20),
email VARCHAR(20), address VARCHAR(20), city VARCHAR(20), state VARCHAR(20),
country VARCHAR(20), postal VARCHAR(20));
CREATE TABLE invoices (invoice_number INT, invoice_date DATE, car INT,
customer INT, sales_person INT);



SHOW TABLES;

-- DESCRIBE Cars;

-- DROP TABLE pet;
