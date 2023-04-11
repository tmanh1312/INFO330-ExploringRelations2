-- Provide a query that includes the purchased track name AND artist name with each invoice line item.
SELECT t.Name AS 'Track Name', a2.Name AS 'Artist Name', ii.*
FROM invoice_items ii 
JOIN tracks t ON ii.TrackId = t.TrackId 
JOIN albums a ON t.AlbumId = a.AlbumId 
JOIN artists a2 ON a.ArtistId = a2.ArtistId; 