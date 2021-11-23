SELECT DISTINCT strftime('%Y', InvoiceDate) 'Year',
    (e.FirstName || " " || e.LastName) employeeName,
    max(i.Total) totalSales
FROM Employee e
JOIN Customer c
ON e.EmployeeId = c.SupportRepId
JOIN Invoice i
ON i.customerId = c.customerId
WHERE strftime('%Y', InvoiceDate) = '2009'
GROUP BY employeeName
