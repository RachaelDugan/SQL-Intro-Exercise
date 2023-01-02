/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
SELECT products.Name, categories.Name
FROM products
INNER JOIN categories 
ON products.CategoryID = categories.CategoryID
WHERE categories.Name = 'computers';

/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
SELECT p.Name, p.Price, reviews.Rating
FROM products AS p
LEFT JOIN reviews
ON P.ProductID = reviews.ProductID
WHERE rating = '5'; 

/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT employees.FirstName, employees.LastName, Sum(sales.Quantity) AS total
FROM sales
INNER JOIN employees 
ON employees.EmployeeID = sales.EmployeeID
GROUP BY employees.EmployeeID
ORDER BY total DESC;

/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.Name AS 'Department name', c.Name AS 'Category name'
FROM departments AS d
INNER JOIN categories AS c
ON c.DepartmentID = c.DepartmentID
WHERE c.Name = 'Appliances' OR c.Name = 'Games';

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
 SELECT p.Name, SUM(s.Quantity) AS 'Total number sold',
 SUM(s.Quantity *s.PricePerUnits) AS 'Total Price'
 FROM products as p
 INNER JOIN salse AS s
 ON s.ProductID = p.productID
 WHERE p.productsID = 97;
 SELECT * 
 FROM sales WHERE productID = 97; 
 
 /* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
 SELECT e.employeeID, e.firstname, e.lastname, p.Name,
 SUM(s.quantity) AS 'Total units sold'
 FROM sales AS s
 INNER JOIN employees AS e ON e.employeeID = s.employeeID
 INNER JOIN products AS p ON p.productID = s.employeeID
 GROUP BY e.employeeID, p.productID
 ORDER BY e.firstname