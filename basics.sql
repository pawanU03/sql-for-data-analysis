SELECT *
FROM Customer;

SELECT * FROM Orders;

SELECT state FROM Customer;

-- orders by customer's last name
SELECT 
  LastName,
  OrderID
FROM Customer
INNER JOIN Orders
ON Customer.CustomerID = Orders.CustomerID;

SELECT
  Customer.CustomerID,
  FirstName,
  LastName,
  SUM(TotalDue)
From Customer
JOIN Orders
ON Customer.CustomerID = Orders.CustomerID
GROUP BY
  CustomerID,
  FirstName,
  LastName
ORDER BY
  SUM(TotalDue) DESC
LIMIT 10;