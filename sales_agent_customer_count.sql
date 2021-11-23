SELECT Count(c.SupportRepId),
    (e.FirstName || ' ' || e.LastName) EmpName
FROM Employee e
JOIN Customer c
ON e.EmployeeId = c.SupportRepId