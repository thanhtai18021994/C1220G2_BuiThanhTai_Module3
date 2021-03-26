drop database  if exists classsicmodels;
create database classsicmodels;
use  classsicmodels;
create table customers( 
id int,
customername varchar(50), 
phone int,
 city varchar(50),
 country varchar(50),
 primary key(id,phone));
insert into customers (id,customername,phone,city)
values
(1,'gau gau',0901111222,'Đà Nẵng'),
(2,'meo meo',0901111333,'sài gòn'),
(3,'thang dinh',0901111444,'Hà nội'),
(4,'Aa bb cc',0901111666,'Đà Nẵng'),
(5,'gau aa',0901111777,'Đà Nẵng'),
(6,'gau bbb',0901111888,'QN'),
(7,'gau 1111',0901111999,'111'),
(8,'gau thang',0901111000,'haha')
;
select *
from customers;
select id,customername
from customers;
SELECT * FROM customers WHERE customername like '%A%';
select id,phone,city
from customers where customername like '%gau%';
alter table customers
add a



 
