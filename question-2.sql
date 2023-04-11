-- Show the sales agent's full name and invoices associated with each sales agent.

-- Do employees join with customers by EmployeeId
-- Then invoices join with customers by CustomerId
-- Because invoices table only has CustomerId

SELECT e.FirstName, e.LastName, i.* 
FROM employees e
JOIN customers c ON e.EmployeeId = c.SupportRepId 
JOIN invoices i ON c.CustomerId = i.CustomerId;