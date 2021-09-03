use lab_mysql;
create table lab_mysql.cars(
id varchar(10),
vin varchar(45),
manufacturer varchar(45),
model varchar(45),
car_year char(4),
color varchar(45));

use lab_mysql;
create table lab_mysql.salesperson(
id varchar(10),
staff_id char(12),
salesperson_name varchar(45),
store varchar(45));

use lab_mysql;
create table lab_mysql.customers(
id varchar(10),
customer_id varchar(45),
customer_name varchar(45),
phone_number varchar(45),
email varchar(45),
address varchar(45),
city varchar(45),
state varchar(45),
country varchar(45),
zip_code varchar(6)
);

use lab_mysql;
create table lab_mysql.invoices(
id varchar(10),
ivc_number varchar(45),
ivc_date varchar(12),
car varchar(45),
customer char(45),
salesperson char(12));