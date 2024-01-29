--2016

SELECT o.ShipCountry AS country, SUM((od.UnitPrice * od.Quantity) - (od.UnitPrice * od.Discount)) AS total_sales_amount,
CASE 
	WHEN
	SUM(od.UnitPrice * od.Quantity) < 4000 THEN "LOW"
	WHEN
	SUM(od.UnitPrice * od.Quantity) < 8000 THEN "MEDIUM"
	ELSE "HIGH"
	END as sales_range
FROM Orders o  
JOIN "Order Details" od on od.OrderID = o.OrderID
WHERE o.OrderDate < "2017-01-01"
GROUP BY country

--2017

SELECT o.ShipCountry AS country, SUM((od.UnitPrice * od.Quantity) - (od.UnitPrice * od.Discount)) as total_sales_amount,
CASE 
	WHEN
	SUM(od.UnitPrice * od.Quantity) < 4000 THEN "LOW"
	WHEN
	SUM(od.UnitPrice * od.Quantity) < 8000 THEN "MEDIUM"
	ELSE "HIGH"
	END as sales_range
FROM Orders o  
JOIN "Order Details" od on od.OrderID = o.OrderID
WHERE o.OrderDate BETWEEN "2017-01-01" AND "2018-01-01"
GROUP BY country

--2018

SELECT o.ShipCountry AS country, SUM((od.UnitPrice * od.Quantity) - (od.UnitPrice * od.Discount)) as total_sales_amount,
CASE
	WHEN
	SUM(od.UnitPrice * od.Quantity) < 4000 THEN "LOW"
	WHEN
	SUM(od.UnitPrice * od.Quantity) < 8000 THEN "MEDIUM"
	ELSE "HIGH"
	END as sales_range
FROM Orders o  
JOIN "Order Details" od on od.OrderID = o.OrderID
WHERE o.OrderDate BETWEEN "2018-01-01" AND "2019-01-01"
GROUP BY country
