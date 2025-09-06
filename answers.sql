USE salesdb;
-- Q1.Get firstName, lastName, email, and officeCode of all employees using an INNER JOIN between employees and offices on officeCode:
SELECT e.firstName, e.lastName, e.email, e.officeCode
FROM employees e
INNER JOIN offices o ON e.officeCode = o.officeCode;

-- Q2.Get productName, productVendor, and productLine from products with a LEFT JOIN to productlines on productLine:
SELECT p.productName, p.productVendor, p.productLine
FROM products p
LEFT JOIN productlines pl ON p.productLine = pl.productLine;

-- Q3.Retrieve orderDate, shippedDate, status, and customerNumber for the first 10 orders using a RIGHT JOIN combining customers with orders on customerNumber:
SELECT o.orderDate, o.shippedDate, o.status, o.customerNumber
FROM customers c
RIGHT JOIN orders o ON c.customerNumber = o.customerNumber
ORDER BY o.orderDate
LIMIT 10;
