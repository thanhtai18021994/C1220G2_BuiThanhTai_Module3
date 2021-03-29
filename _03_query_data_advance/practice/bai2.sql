use query_data_advance;
create table custumer(
customerNumber int not null,
customerName varchar(50),
contactLastName varchar(50),
contactFirstName varchar(50),
phone int,
addressLine1 varchar(50),
addressLine2 varchar(50),
city varchar(50),
state varchar(50),
postalCode varchar(50),
country varchar(50),
salesRepEmployeeNumber int,
creditLimit  date
);
create table orders(
orderNumber int not null,
orderDate date,
requiredDate date,
shippedDate date,
`status` text,
comments text,
custumerNumber text
);
create table payments(
customerNumber int not null,
checkNumber boolean not null,
paymentDate date not null,
amount double
);
select customerNumber, customerName, phone, paymentDate, amount from customers
inner join payments
on customers.customerNumber = payments.customerNumber
where city = 'Las Vegas';

select customerNumber, customers.customerName, orders.orderNumber, orders.status
from customers LEFT JOIN orders
on customers.customerNumber = orders.customerNumber
where orderNumber is null;
