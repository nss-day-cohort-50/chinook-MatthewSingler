SELECT
    i.InvoiceId,
    e.FirstName,
    e.LastName
FROM Invoice i
JOIN Customer c
ON i.CustomerId = c.CustomerId
JOIN Employee e
ON e.EmployeeId = c.SupportRepId
WHERE e.Title = 'Sales Support Agent'