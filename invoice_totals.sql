SELECT
    i.Total,
    c.FirstName cusFirst,
    c.LastName cusLast,
    c.Country,
    e.FirstName empFisrt,
    e.LastName empLast
FROM Invoice i
JOIN Customer c
ON c.CustomerId = i.Customerid
JOIN Employee e
ON c.SupportRepId = e.EmployeeId