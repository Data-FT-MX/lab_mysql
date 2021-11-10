USE lab_mysql;

-- cars table

INSERT INTO cars 
VALUES (1,'3K096I98581DHSNUP','Volkswagen','Tiguan',2019, 'Blue'),
(2,'ZM8G7BEUQZ97IH46V','Peugeot','Rifter',2019,'Red'),
(3,'RKXVNNIHLVVZOUB4M','Ford','Fusion',2018,'White'),
(4,'HKNDGS7CU31E9Z7JW','Toyota','RAV4',2018,'Silver'),
(5,'DAM41UDN3CHU2WVF6','Volvo','V60',2019,'Gray'),
(6,'DAM41UDN3CHU2WVF6','Volvo','V60_cross_country', 2019,'Gray');

-- salespersons table

INSERT INTO salespersons VALUES (1,'00001','Pety Cruiser','Madrid'),
(2,'00002','Anna Sthesia','Barcelona'),
(3,'00003','Paul Molive','Berlin'),
(4,'00004','Gail Forcewind','Paris'),
(5,'00005','Paige Turner','Mimia'),
(6,'00006','Bob Frapples','Mexico City'),
(7,'00007','Walter Melon','Amsterdam'),
(8,'00008','Shonda Leer','São Paulo');

-- customers table

INSERT INTO customers VALUES (1,'10001','Pablo Picasso','+34 636 176382','-',
'Paseo de la Chopera, 14', 'Madrid','Madrid','Spain','28045'),
(2,'20001','Abraham Lincoln','+1 305 9077086', '-',
'120 SW 8th St','Miami','Florida','United States', 33130),
(3,'30001','Napoleón Bonaparte','+33 179 7540000', '-',
'40 Rue du Colisée','Paris','île-de-France','France',75008);

-- invoices table

INSERT INTO invoices VALUES (1,'852399038', '22-08-2018', 0, 1, 3),
(2,'31166526', '31-12-2018', 3, 0, 5),
(3,'271135104', '22-01-2019', 2, 2, 7);
