create database bank;
use bank;
create table custumers
(
code_customer int primary key,
full_name varchar(50),
address varchar(50),
email varchar(50),
phone int (50));
 create table acounts 
 (
 acount_number_bank varchar(50) primary key,
 account_type varchar(50),
 `date` date,
 balance varchar(50),
customer_number int,
 foreign key (code_customer) references acounts(acount_number_bank )
 );
 create table transactions
 (
 tran_number varchar(30) primary key,
 account_number varchar(50),
 `date` date,
 amount int ,
 descriptions  varchar(50),
 account_number varchar(50) ,
 foreign key (acount_number) references acounts(acount_number_bank)
 );
 