-- Provide a query that includes the purchased track name AND artist name with each invoice line item.

SELECT il.InvoiceId, t.Name as TrackName, ar.Name as ArtistName 
FROM invoice_items il 
JOIN tracks t ON il.TrackId = t.TrackId 
JOIN albums al ON t.AlbumId = al.AlbumId 
JOIN artists ar ON al.ArtistId = ar.ArtistId 
ORDER BY il.InvoiceId;
