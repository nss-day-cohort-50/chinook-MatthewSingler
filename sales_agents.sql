SELECT
    e.EmployeeId,
    e.FirstName,
    e.LastName,
    e.Title
FROM Employee e
WHERE e.Title = 'Sales Support Agent'