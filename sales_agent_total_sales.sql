SELECT
    e.FirstName,
    e.LastName,
    e.Title,
    COUNT(i.Total) totalSales
FROM Employee e
JOIN Customer c
ON c.SupportRepId = e.EmployeeId
JOIN Invoice i
ON i.CustomerId = c.CustomerId
WHERE e.Title = 'Sales Support Agent'
GROUP BY e.FirstName

SELECT Employee.FirstName, Employee.LastName, COUNT(Invoice.CustomerId) AS TotalSAles
FROM Customer
    Left JOIN Employee
      ON Customer.SupportRepId = Employee.EmployeeId
     Left JOIN Invoice
      ON Invoice.CustomerId = Customer.CustomerId
    GROUP BY Employee.EmployeeId
