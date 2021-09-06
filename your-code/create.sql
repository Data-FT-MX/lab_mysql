use lab_myslq;


create table cars (
number_vin varchar(50),
Manofacturer varchar(50),
Model varchar(50),
YEAR_ varchar(50) ,
Color varchar(50),
PRIMARY KEY  (number_vin)
);

create table customers (
customer_id int not null,
name_c varchar(50),
phone_number varchar(50),
email varchar(50),
address varchar(50), 
city varchar(50),
state_province varchar(50),
country varchar(50),
postal int,
primary key (customer_id)
);

create table Salesperson (
salesperson_id INT not null,
name_s varchar(50),
store varchar(50),
primary key (Salesperson_id)
);

create table invoices (
invoice_number int not null,
fecha varchar(50),
car int,
customer int,
salesperson int,
primary key (invoice_number)

);