-- Find tracks (id, name, and composer) that have never been purchased (that is, they aren't part of a line item in an invoice).

SELECT t.TrackId, t.Name, ar.Name as Composer 
FROM tracks t 
LEFT JOIN invoice_items il ON t.TrackId = il.TrackId 
JOIN albums al ON t.AlbumId = al.AlbumId 
JOIN artists ar ON al.ArtistId = ar.ArtistId 
WHERE il.InvoiceLineId IS NULL 
ORDER BY t.TrackId;