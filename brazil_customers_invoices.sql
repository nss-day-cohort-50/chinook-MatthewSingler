SELECT
        i.InvoiceId,
        i.InvoiceDate,
        i.BillingCountry,
        i.CustomerId,
        c.FirstName,
        c.LastName
        FROM Invoice i
        JOIN Customer c
        ON i.CustomerId = c.CustomerId