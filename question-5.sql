-- What was the most purchased track of 2013?

SELECT t.Name as TrackName, COUNT(il.InvoiceLineId) as Purchases 
FROM tracks t 
JOIN invoice_items il ON t.TrackId = il.TrackId 
JOIN invoices i ON il.InvoiceId = i.InvoiceId 
WHERE strftime('%Y', i.InvoiceDate) = '2013' 
GROUP BY t.TrackId 
ORDER BY Purchases DESC 
LIMIT 1;
