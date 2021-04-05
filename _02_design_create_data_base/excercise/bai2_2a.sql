drop database if exists sale_management2;
create database sale_management2;
use sale_management2;
create table customers 
(
customerNumber  int primary key ,
customerName  varchar(50) not null,
contactLastName  varchar(50) not null,
contactFirstName  varchar(50) not null,
phone varchar(50) not null,
addressLine1 varchar(50) not null,
addressLine2 varchar(50),
city varchar(50) not null,
state varchar(50) not null,
postalCode varchar(50) not null,
country varchar(50) not null,
creditLimit  Double
);
create table orders (
orderNumber int primary key,
orderDate date,
requiredDate date,
shippedDate date,
`status` varchar(15),
 comments text ,
 quantityOrdered int not null,
 priceEach double not null
);
 create table payments (
 checkNumber varchar(50) not null,
 paymentDate date not null,
 amount double not null
 );
  create table productlines (
 productLine varchar(50) primary key,
 textDescription text,
 image  varchar(34)
 );
 create table products(
 productCode varchar(15) primary key,
 productName varchar(70) not null,
 productScale varchar(10) not null,
 productVendor varchar(50) not null,
 productDescription text not null,
 quantityInStock int not null,
 buyPrice double not null,
 MSRP double not null
);
create table employees(
 employeeNumber int primary key,
 lastName varchar(50) not null,
 firstName varchar(50) not null,
 email varchar(50) not null,
 jobTitle varchar(59) not null
 );
 drop table employees;
 create table offices (
 officeCode varchar(10) primary key,
 city varchar(50) not null,
 phone varchar(50) not null,
addressLine2 varchar(50),
state  varchar(50),
country varchar(50),
postalCode varchar(50)
);
alter table orders
add column customerNumber int;
alter table orders
add constraint customerNumber
foreign key(customerNumber)references customers(customerNumber);
alter table payments
add column customerNumber int;
alter table payments
add foreign key(customerNumber)references customers(customerNumber);
create table orderDetails (
productCode varchar(50),
orderNumber int,
foreign key(productCode) references products(productCode),
foreign key (orderNumber) references orders(orderNumber)
);
alter table products
add column productLine varchar(15);
alter table products
add foreign key (productLine) references productlines (productLine);
create table employees(
employeeNumber int primary key,
lastName varchar(50) not null,
firstName varchar(50) not null,
email varchar(50) not null,
jobtitle varchar(50) not null
);
alter table customers
add column salesRepEmployeeNumbe int ;
alter table customers
add foreign key(salesRepEmployeeNumbe) references employees(employeeNumber);
alter table employees
add column reportTo int;
alter table employees
add foreign key (reportTo) references employees(employeeNumber);
alter table employees
add column officeCode varchar(10);
alter table employees
add foreign key (officeCode) references offices(officeCode);




