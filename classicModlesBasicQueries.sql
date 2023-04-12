USE classicmodels;

SELECT* FROM customers;
SELECT customerName, phone, city FROM customers WHERE country IN ("USA");
SELECT lastName, firstName, extension FROM employees WHERE officeCode IN ("1");
SELECT* FROM orders WHERE customerNumber IN ("363");
SELECT orderNumber, shippedDate, status FROM orders WHERE orderDate LIKE '%2004%';
SELECT productName, productVendor, productDescription, quantityInStock, MSRP FROM products ORDER BY MSRP DESC;
SELECT productCode, productName, quantityInStock FROM products WHERE quantityInStock < 1000 ORDER BY quantityInStock DESC;
SELECT paymentDate, customerNumber, amount FROM payments WHERE paymentDate LIKE '%2003%';
SELECT customerNumber, paymentDate, SUM(amount) over (partition by customerNumber) as customerTotal FROM payments ORDER BY customerNumber DESC;
SELECT productName, quantityInStock, MSRP FROM products WHERE productLine IN ("Classic Cars") ORDER BY quantityInStock DESC;