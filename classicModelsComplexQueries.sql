USE classicmodels;

SELECT 
    customers.customerName,
    orders.orderNumber,
    orders.orderDate,
    orders.status
FROM
    customers
        JOIN
    orders ON customers.customerNumber = orders.customerNumber;
    
SELECT 
    customers.customerName,
    orders.orderNumber,
    orders.shippedDate
FROM
    customers
        LEFT OUTER JOIN
    orders ON customers.customerNumber = orders.customerNumber;
    
SELECT 
    customers.customerName,
    orders.orderNumber,
    orderdetails.productCode,
    orderdetails.quantityOrdered,
    orderdetails.priceEach,
    SUM(orderdetails.quantityOrdered * orderdetails.priceEach) AS 'Total Price'
FROM
    customers
         JOIN
    orders ON customers.customerNumber
        JOIN
    orderdetails ON orders.orderNumber = orderdetails.orderNumber;
    
    SELECT 
    customers.customerName,
    customers.contactLastName,
    customers.contactFirstName,
    SUM(payments.amount) AS 'Total Payments'
FROM
    customers
        JOIN
    payments ON customers.customerNumber = payments.customerNumber
GROUP BY customers.customerNumber;

SELECT 
    orderdetails.productCode,
    orderdetails.quantityOrdered,
    products.productName,
    products.productLine,
    products.MSRP,
    productlines.textDescription
FROM
    orderdetails
        JOIN
    products ON products.productCode = orderdetails.productCode
        JOIN
    classicmodels.productlines;