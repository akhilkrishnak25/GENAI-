use ClassicModels;
show tables;
show databases;
Describe offices;
select * from products;
#prob-1
select sum(amount) as total_sales from payments;
#prob-2
select count(customerNumber) ,max(creditlimit),min(creditlimit),avg(creditlimit) from customers;
#prob-3
select max(buyprice),min(buyprice),avg(buyprice) from products;
#prob-4
select count(*),country from customers group by country order by count(*);
#prob-5
select count(*) as employeecount,officecode  from employees group by officecode;
#prob-6
select count(*),productline from products group by productline;
#prob-7
select customerNumber,creditlimit from customers order by creditlimit desc;
#prob-8
select productcode,buyprice from products order by buyprice;
#prob-9
select employeenumber,firstName,lastName from employees order by firstname asc,lastname asc;
#prob-10
select customername,customernumber,creditlimit from customers order by creditlimit desc limit 5;
#prob-11
SELECT * FROM products ORDER BY buyPrice ASC LIMIT 10;
#prob-12
SELECT * FROM orders ORDER BY orderNumber DESC LIMIT 7;
#prob-13
SELECT country, COUNT(*) AS customer_count FROM customers GROUP BY country HAVING COUNT(*) > 5;
#prob-14
SELECT productLine, COUNT(*) AS product_count FROM products GROUP BY productLine HAVING COUNT(*) > 10;
#prob-15
SELECT officeCode, COUNT(*) AS employee_count FROM employees GROUP BY officeCode HAVING COUNT(*) > 2;
#prob-16
SELECT customers.customerName, orders.orderNumber, orders.orderDate FROM customers INNER JOIN orders ON customers.customerNumber = orders.customerNumber;
#prob-17
SELECT employees.firstName, employees.lastName, offices.city, offices.country FROM employees INNER JOIN offices ON employees.officeCode = offices.officeCode;
#prob-18
SELECT customers.customerName, orders.orderNumber FROM customers LEFT JOIN orders ON customers.customerNumber = orders.customerNumber;
#prob-19
SELECT employees.firstName, employees.lastName, customers.customerName FROM employees LEFT JOIN customers ON employees.employeeNumber = customers.salesRepEmployeeNumber;
#prob-20
SELECT offices.city, employees.firstName, employees.lastName FROM employees RIGHT JOIN offices ON employees.officeCode = offices.officeCode;
#prob-21
SELECT customers.customerNumber, customers.customerName, orders.orderNumber FROM customers LEFT JOIN orders ON customers.customerNumber = orders.customerNumber UNION SELECT customers.customerNumber, customers.customerName, orders.orderNumber FROM customers RIGHT JOIN orders ON customers.customerNumber = orders.customerNumber;
#prob-22
CREATE TABLE students (student_id INT PRIMARY KEY, name VARCHAR(100) NOT NULL, email VARCHAR(100) UNIQUE, age INT CHECK (age >= 18));
#prob-23
CREATE TABLE courses (course_id INT PRIMARY KEY, course_name VARCHAR(100) UNIQUE, duration INT NOT NULL);
#prob-24
CREATE TABLE enrollments (student_id INT, course_id INT, enrollment_date DATE, PRIMARY KEY (student_id, course_id), FOREIGN KEY (student_id) REFERENCES students(student_id), FOREIGN KEY (course_id) REFERENCES courses(course_id));