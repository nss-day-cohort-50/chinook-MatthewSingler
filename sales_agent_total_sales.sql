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

select (e.FirstName ||' '|| e.LastName) as employee_name, sum(total) as total_sales
from Employee e
    join Customer c
        on e.EmployeeId = c.supportRepId
    join Invoice i
        on i.customerId = c.customerId
group by employee_name
