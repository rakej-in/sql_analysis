-- Discount effect
SELECT o.ShipCountry AS country, SUM(od.UnitPrice * od.Quantity* (1 - od.Discount)) AS total_sales_amount, od.Discount*100 as discount_rate,
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
ORDER BY total_sales_amount DESC
