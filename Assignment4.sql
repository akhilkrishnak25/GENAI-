use ClassicModels;
show tables;
show databases;
Describe customers;
select * from products;
select * from customers;
#prob-1
select employeeNumber ,lastName,firstName,50000 AS Salary,50000*0.1 AS Bonus,50000+(50000*0.1) AS Total_salary from employees;
#prob-2
select * from products;
select productName ,buyPrice ,buyPrice+500 as newbyPrice from products;
#prob-3
select productName ,buyPrice ,MSRP,MSRP-buyPrice as profit from products;
#prob-4
select productName,buyprice from products where buyprice>50;
#prob-5
select orderNumber,productCode,quantityOrdered from orderdetails where quantityOrdered>=40;
#prob-6
select customerName from customers where country='USA' ;
#prob-7
select customerName,country from customers where country='USA' or country='France';
#prob-8
select * from orderdetails;
select * from orderdetails where quantityOrdered>30 and PriceEach>100;
#prob-9
select customerName,country from customers where country!='USA' ;
#prob-10
select customerName,country from customers where country in ('USA','France','Germany') ;
#prob-11
select * from productlines;
select * from productlines where productline in ('Classic Cars','Motorcycles','Planes');
#prob-12
select * from employees where officeCode IN (1,4,7);
#prob-13
select * from products where buyprice between 30 and 80;
#prob-14
select * from orderdetails where orderlineNumber between 2 and 5;
#prob-15
select * from offices where officeCode between 2 and 5;
#prob-16
select * from customers;
select * from customers where customerName like 'A%';
#prob-17
select * from products where productName like '%Ford%';
#prob-18
select * from customers where country like '%land';
#prob-19
select * from products where productName like '1969%';
#prob-20
select * from employees where firstName like 'L%';
#prob-21
select * from customers where customerName like 'A____';
