-- Sales amount range
SELECT o.ShipCountry AS country, SUM(od.UnitPrice * od.Quantity* (1 - od.Discount)) AS total_sales_amount,
CASE 
	WHEN
	SUM(od.UnitPrice * od.Quantity) < 7000 THEN "LOW"
	WHEN
	SUM(od.UnitPrice * od.Quantity) < 18000 THEN "MEDIUM"
	ELSE "HIGH"
	END as sales_range
FROM Orders o  
JOIN "Order Details" od on od.OrderID = o.OrderID
GROUP BY country
ORDER BY total_sales_amount

-- Poland product category
SELECT c.CategoryName, o.ShipCountry FROM Categories c
JOIN Products p ON p.CategoryID = c.CategoryID
JOIN "Order Details" od ON od.ProductID = p.ProductID
JOIN Orders o ON o.OrderID = od.OrderID
WHERE o.ShipCountry = "Poland"
GROUP BY c.CategoryName

-- Norway product category
SELECT c.CategoryName, o.ShipCountry FROM Categories c
JOIN Products p ON p.CategoryID = c.CategoryID
JOIN "Order Details" od ON od.ProductID = p.ProductID
JOIN Orders o ON o.OrderID = od.OrderID
WHERE o.ShipCountry = "Norway"
GROUP BY c.CategoryName
