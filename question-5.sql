-- What was the most purchased track of 2013?
SELECT t.NAME
FROM tracks t 
JOIN invoice_items ii ON t.TrackId = ii.TrackId
JOIN invoices i ON ii.InvoiceId  = i.InvoiceId 
WHERE STRFTIME('%Y', i.InvoiceDate) = '2013'
GROUP BY t.TrackId
ORDER BY SUM(ii.Quantity) DESC 
LIMIT 1;