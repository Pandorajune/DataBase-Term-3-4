USE northwind;

SELECT 
    Suppliers.CompanyName,
    Suppliers.Country,
    Products.ProductName,
    Categories.CategoryName
FROM
    Suppliers
        JOIN
    Products ON Suppliers.SupplierID = Products.SupplierID
        JOIN
    Categories ON Products.CategoryID = Categories.CategoryID;
    
SELECT 
    Products.ProductName,
    Categories.CategoryName,
    Suppliers.CompanyName,
    Suppliers.Country,
    Products.QuantityPerUnit,
    orderdetails.Quantity
FROM
    Products
        JOIN
    Categories ON Products.CategoryID = Categories.CategoryID
        JOIN
    Suppliers ON Products.SupplierID = Suppliers.SupplierID
        JOIN
    orderdetails ON Products.ProductID = orderdetails.ProductID
WHERE
    Suppliers.Country IN ('UK' , 'France',
        'Italy',
        'Spain',
        'Germany',
        'Norway',
        'Sweeden')
GROUP BY Products.ProductName;

SELECT 
    Customers.Country,
    Customers.CompanyName,
    orderdetails.Quantity,
    Products.UnitPrice,
    SUM(orderdetails.Quantity * Products.UnitPrice) AS 'Total'
FROM
    Customers
        JOIN
    Orders ON Customers.CustomerID = Orders.CustomerID
        JOIN
    orderdetails ON orderdetails.OrderID = Orders.OrderId
        JOIN
    Products ON orderdetails.ProductID = Products.ProductID
GROUP BY Customers.CompanyName;

SELECT 
    Products.ProductName,
    Suppliers.CompanyName,
    Products.UnitsInStock
FROM
    Products
        JOIN
    Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE
    Products.UnitsInStock < 100;
    
SELECT 
    Employees.LastName,
    Employees.FirstName,
    Employees.Title,
    Employees.Region,
    Employees.Country,
    COUNT(orderdetails.Quantity) AS 'TOTAL SALES',
    SUM(orderdetails.Quantity) AS 'SUM OF ORDERS'
FROM
    Employees
        JOIN
    Orders ON Employees.EmployeeID = Orders.EmployeeID
        JOIN
    orderdetails ON orderdetails.OrderID = Orders.OrderID
GROUP BY Employees.EmployeeID
ORDER BY Employees.LastName ASC;

SELECT 
    Orders.OrderID,
    Customers.CompanyName,
    Orders.OrderDate,
    Orders.ShipName,
    SUM(orderdetails.Quantity * orderdetails.UnitPrice) AS 'TOTAL AMOUNT'
FROM
    Orders
        JOIN
    orderdetails ON Orders.OrderID = orderdetails.OrderID
        JOIN
    Customers ON Customers.CustomerID = Orders.CustomerID
GROUP BY Customers.CompanyName;

SELECT 
    Orders.OrderID,
    Customers.CompanyName,
    Orders.OrderDate,
    Orders.ShipName,
    SUM(orderdetails.Quantity * orderdetails.UnitPrice) AS 'TOTAL AMOUNT'
FROM
    Orders
        JOIN
    Customers ON Orders.CustomerID = Customers.CustomerID
        JOIN
    orderdetails ON Orders.OrderID = orderdetails.OrderID
WHERE
    orderdetails.Quantity * orderdetails.UnitPrice > 1000
GROUP BY Customers.CompanyName;

SELECT 
    Orders.ShipName,
    SUM(orderdetails.Quantity) AS 'NUMBER OF ORDERS SHIPPED'
FROM
    Orders
        JOIN
    orderdetails ON Orders.OrderID = orderdetails.OrderID
GROUP BY Orders.ShipperID;

SELECT 
    Orders.ShipName,
    SUM(orderdetails.Quantity) AS '# SHIPPED TO US'
FROM
    Orders
        JOIN
    orderdetails ON Orders.OrderID = orderdetails.OrderID
WHERE
    Orders.ShipCountry IN ('USA')
GROUP BY Orders.ShipName;

SELECT 
    SUM(orderdetails.Quantity) AS '# SHIPPED TO COUNTRY',
    SUM(orderdetails.Quantity * orderdetails.UnitPrice) AS 'TOTAL $ AMOUNT'
FROM
    orderdetails
        JOIN
    Orders ON orderdetails.OrderID = Orders.OrderId
GROUP BY Orders.ShipCountry;

SELECT 
    Categories.CategoryName,
    SUM(orderdetails.Quantity) AS 'TOTAL SALES'
FROM
    Categories
        JOIN
    Products ON Categories.CategoryID = Products.CategoryID
        JOIN
    orderdetails ON orderdetails.ProductID = Products.ProductID
GROUP BY Categories.CategoryName
ORDER BY orderdetails.Quantity DESC;

SELECT 
    Products.ProductName,
    SUM(orderdetails.Quantity) AS 'TOTAL ORDERS',
    SUM(Products.UnitPrice * orderdetails.Quantity) AS 'TOTAL SALES'
FROM
    orderdetails
        JOIN
    Products ON Products.ProductID = orderdetails.ProductID
        JOIN
    Orders ON Orders.OrderID = orderdetails.OrderID
        JOIN
    Categories ON Categories.CategoryID = Products.CategoryID
WHERE
    Categories.CategoryName = 'Seafood'
        AND Orders.ShipCountry = 'USA';
        
SELECT 
    Products.ProductName,
    Orders.ShipCountry,
    orderdetails.Quantity,
    SUM(orderdetails.Quantity * orderdetails.UnitPrice) AS 'TOTAL COST'
FROM
    orderdetails
        JOIN
    Products ON Products.ProductID = orderdetails.ProductID
        JOIN
    Orders ON orderdetails.OrderID = Orders.OrderID
WHERE
    Orders.ShipCountry IN ('Spain' , 'France', 'Italy')
GROUP BY orderdetails.OrderID;

SELECT 
    Products.ProductName,
    Orders.ShipCountry,
    orderdetails.Quantity,
    SUM(orderdetails.Quantity * orderdetails.UnitPrice) AS 'TOTAL COST'
FROM
    orderdetails
        JOIN
    Products ON Products.ProductID = orderdetails.ProductID
        JOIN
    Orders ON orderdetails.OrderID = Orders.OrderID
        JOIN
    Categories ON Categories.CategoryID = Products.CategoryID
WHERE
    Orders.ShipCountry = 'USA' AND Categories.CategoryName IN ('Dairy Products' , 'Meat/Poultry')
GROUP BY orderdetails.ProductID;
