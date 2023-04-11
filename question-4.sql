-- Which sales agent made the most in sales in 2010?
SELECT e.FirstName, e.LastName
FROM employees e 
JOIN customers c ON e.EmployeeId = c.SupportRepId 
JOIN invoices i ON c.CustomerId = i.CustomerId 
JOIN invoice_items ii ON i.InvoiceId = ii.InvoiceId 
WHERE STRFTIME('%Y', i.InvoiceDate) = '2010'
GROUP BY e.EmployeeId 
ORDER BY SUM(ii.UnitPrice * ii.Quantity) DESC
LIMIT 1;