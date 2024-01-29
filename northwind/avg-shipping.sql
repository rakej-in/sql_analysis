-- Average shipping date for each product category Norway
SELECT c.CategoryName, AVG(JULIANDAY(o.ShippedDate) - JULIANDAY(o.OrderDate))  AS avg_shipped_day FROM Categories c
JOIN Products p ON p.CategoryID = c.CategoryID
JOIN "Order Details" od ON od.ProductID = p.ProductID
JOIN Orders o ON o.OrderID = od.OrderID
WHERE o.ShipCountry = "Norway"
GROUP BY c.CategoryID 
ORDER BY avg_shipped_day

-- Average shipping day for each product category Poland

SELECT c.CategoryName, AVG(JULIANDAY(o.ShippedDate) - JULIANDAY(o.OrderDate))  AS avg_shipped_day FROM Categories c
JOIN Products p ON p.CategoryID = c.CategoryID
JOIN "Order Details" od ON od.ProductID = p.ProductID
JOIN Orders o ON o.OrderID = od.OrderID
WHERE o.ShipCountry = "Poland"
GROUP BY c.CategoryID 
ORDER BY avg_shipped_day

-- Arrival day for each order
SELECT o.OrderID, o.RequiredDate, o.ShippedDate, JULIANDAY(o.RequiredDate) - JULIANDAY(o.ShippedDate) AS arrival FROM Categories c
JOIN Products p ON p.CategoryID = c.CategoryID
JOIN "Order Details" od ON od.ProductID = p.ProductID
JOIN Orders o ON o.OrderID = od.OrderID
WHERE o.ShipCountry = "Poland"
GROUP BY o.OrderID  
ORDER BY o.OrderID 

SELECT o.OrderID, o.RequiredDate, o.ShippedDate, JULIANDAY(o.RequiredDate) - JULIANDAY(o.ShippedDate) AS arrival FROM Categories c
JOIN Products p ON p.CategoryID = c.CategoryID
JOIN "Order Details" od ON od.ProductID = p.ProductID
JOIN Orders o ON o.OrderID = od.OrderID
WHERE o.ShipCountry = "Norway"
GROUP BY o.OrderID  
ORDER BY o.OrderID
