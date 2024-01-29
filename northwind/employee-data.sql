--generate a report for number of territory each employees responsible for

SELECT e.EmployeeID, e.FirstName, e.LastName, COUNT(t.TerritoryID) as no_of_territories from Territories t
JOIN EmployeeTerritories et ON et.TerritoryID = t.TerritoryID
JOIN Employees e on e.EmployeeID = et.EmployeeID 
GROUP BY e.EmployeeID
