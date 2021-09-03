INSERT INTO lab_mysql.cars (idcars, VIN, manufacturer, model, yearC, color) VALUES ('0', '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue');
INSERT INTO lab_mysql.cars (idcars, VIN, manufacturer, model, yearC, color) VALUES ('1', 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red');
INSERT INTO lab_mysql.cars (idcars, VIN, manufacturer, model, yearC, color) VALUES ('2', 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White');
INSERT INTO lab_mysql.cars (idcars, VIN, manufacturer, model, yearC, color) VALUES ('3', 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', '2018', 'Silver');
INSERT INTO lab_mysql.cars (idcars, VIN, manufacturer, model, yearC, color) VALUES ('4', 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', '2019', 'Gray');
INSERT INTO lab_mysql.cars (idcars, VIN, manufacturer, model, yearC, color) VALUES ('5', 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', '2019', 'Gray');




INSERT INTO lab_mysql.customers (idcustomers, nameC, phone_number, adress, city, state, country, zip) VALUES ('10001', 'Pablo Picasso', '+34 636 17 63 82', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045');
INSERT INTO lab_mysql.customers (idcustomers, nameC, phone_number, adress, city, state, country, zip) VALUES ('20001', 'Abraham Lincoln', '+1 305 907 7086', '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130');
INSERT INTO lab_mysql.customers (idcustomers, nameC, phone_number, adress, city, state, country, zip) VALUES ('30001', 'Napoléon Bonaparte', '+33 1 79 75 40 00', '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');




INSERT INTO lab_mysql.SalesPerson (staff_id, nameC, store) VALUES ('00001', 'Petey Cruiser', 'Madrid');
INSERT INTO lab_mysql.SalesPerson (staff_id, nameC, store) VALUES ('00002', 'Anna Sthesia', 'Barcelona');
INSERT INTO lab_mysql.SalesPerson (staff_id, nameC, store) VALUES ('00003', 'Paul Molive', 'Berlin');
INSERT INTO lab_mysql.SalesPerson (staff_id, nameC, store) VALUES ('00004', 'Gail Forcewind', 'Paris');
INSERT INTO lab_mysql.SalesPerson (staff_id, nameC, store) VALUES ('00005', 'Paige Turner', 'Mimia');
INSERT INTO lab_mysql.SalesPerson (staff_id, nameC, store) VALUES ('00006', 'Bob Frapples', 'Mexico City');
INSERT INTO lab_mysql.SalesPerson (staff_id, nameC, store) VALUES ('00007', 'Walter Melon', 'Amsterdam');
INSERT INTO lab_mysql.SalesPerson (staff_id, nameC, store) VALUES ('00008', 'Shonda Leer', 'São Paulo');



INSERT INTO lab_mysql.Invoices (idInvoices, numberI, dateI, car, customer, salesperson, customers_idcustomers, SalesPerson_staff_id) VALUES ('0', '852399038', '22-08-2018', '0', '1', '3', '1', '3');
INSERT INTO lab_mysql.Invoices (idInvoices, numberI, dateI, car, customer, salesperson, customers_idcustomers, SalesPerson_staff_id) VALUES ('1', '731166526', '31-12-2018', '3', '0', '5', '0', '5');
INSERT INTO lab_mysql.Invoices (idInvoices, numberI, dateI, car, customer, salesperson, customers_idcustomers,SalesPerson_staff_id) VALUES ('2', ' 	271135104', '22-01-2019', '2', '2', '7', '2', '7');


