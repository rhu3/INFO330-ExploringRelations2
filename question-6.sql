-- Find tracks (id, name and composer) that are part of a line in an invoice.

SELECT DISTINCT t.TrackId, t.Name, ar.Name as Composer
FROM tracks t 
JOIN invoice_items il ON t.TrackId = il.TrackId 
JOIN invoices i ON il.InvoiceId = i.InvoiceId 
JOIN albums al ON t.AlbumId = al.AlbumId 
JOIN artists ar ON al.ArtistId = ar.ArtistId 
ORDER BY t.TrackId;