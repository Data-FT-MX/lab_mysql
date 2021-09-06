	USE lab_mysql;
    
  /*CREAR TABLA DE CARS */
  
  CREATE TABLE CARS (
  number_vin INT NOT NULL,
  Manofacturer VARCHAR(50),
  Model VARCHAR(50),
  YEAR_ DATE,
  Color VARCHAR(50),
  PRIMARY KEY (number_vin)
  );
  
   /*CAMBIAR EL TIPO DE DATO  */
   
ALTER TABLE CARS MODIFY number_vin VARCHAR(100) ;
ALTER TABLE CARS MODIFY YEAR_ YEAR ;

   /*CREAR TABLA DE CUSTOMERS */
  
   CREATE TABLE CUSTOMERS (
  IdCUSTOMMERS INT not null,
  Name_C VARCHAR(50),
  Phone_Number INT ,
  email_address VARCHAR(50),
  City VARCHAR(50),
State_Province VARCHAR(50),
Country VARCHAR(50),
zip_postal_code INT, 
  PRIMARY KEY (IdCUSTOMMERS)
  ); 
  
  /*CAMBIAR EL TIPO DE DATO PHONE NUMBER */
   
ALTER TABLE CUSTOMERS MODIFY Phone_Number VARCHAR(50) ;
  

 /*CREAR TABLA DE SALESPERSON */
  
   CREATE TABLE SALESPERSON (
  IdSALESPERSON INT not null,
  Name_S VARCHAR(50),
  STORE VARCHAR(50) ,
  PRIMARY KEY (IdSALESPERSON)
  ); 
  

ALTER TABLE SALESPERSON ADD IdSALESPERSON int not null INT FIRST;

  /*CREAR TABLA DE INVOICES */
  
  CREATE TABLE INVOICES (
  INVOICE_NUMBER INT not null,
  FECHA DATE,
  CAR VARCHAR(50),
  CUSTOMER VARCHAR(50),
  SALESPERSON VARCHAR(50),
  PRIMARY KEY (INVOICE_NUMBER)
  );
  -- ---------------------------------------------------------------------------------
    /*CUANTAS TABLAS TENGO */
  
  SHOW TABLES;
  
  -- ----------------------------------------------------------------------------------
  
   /*INTRODUCIR VALORES EN TABLA CARS */
  
  insert into CARS (number_vin, Manofacturer,Model,YEAR_,Color) Values ('DAM41UDN3CHU2WVF6'
  ,'Volvo','V60 Cross Country','2019','Gray');
  
   select * from CARS;
  
  
  /*INTRODUCIR VALORES EN TABLA CUSTOMER */
  
  insert into CUSTOMERS (IdCUSTOMMERS, Name_C, Phone_Number, email_address,City,State_Province,Country,zip_postal_code) Values ('30001'
  ,'Napoléon Bonaparte','+33 1 79 75 40 00','40 Rue du Colisée','Paris','Île-de-France','France','	75008');
  
   select * from CUSTOMERS; 
   
  /*INTRODUCIR VALORES EN TABLA SALESPERSON */ 
  
  insert into SALESPERSON (IdSALESPERSON,  Name_S, STORE) Values ('00008','Shonda Leer','São Paulo');
  
   select * from SALESPERSON; 
   
    /*INTRODUCIR VALORES EN TABLA INVOICES */ 
  
  insert into INVOICES (INVOICE_NUMBER,FECHA, CAR,CUSTOMER,SALESPERSON) Values ('271135104'
  ,'219-01-22','2','2','7');
  
   select * from INVOICES; 
   
    
   