-- Which sales agent made the most in sales in 2010?

SELECT e.FirstName || ' ' || e.LastName as FullName, SUM(i.Total) as TotalSales
FROM employees e 
JOIN customers c ON e.EmployeeId = c.SupportRepId 
JOIN invoices i ON c.CustomerId = i.CustomerId 
WHERE i.InvoiceDate BETWEEN '2010-01-01' AND '2010-12-31' 
GROUP BY e.FirstName, e.LastName
ORDER BY TotalSales DESC 
LIMIT 1;
