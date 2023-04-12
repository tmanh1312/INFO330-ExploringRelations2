-- What was the most purchased track of 2013?
SELECT t.*
FROM tracks t 
JOIN invoice_items ii ON t.TrackId = ii.TrackId
JOIN invoices i ON ii.InvoiceId  = i.InvoiceId 
WHERE i.InvoiceDate BETWEEN '2013-01-01' and '2013-12-31'
GROUP BY t.TrackId
ORDER BY COUNT(ii.Quantity) DESC 
LIMIT 1;