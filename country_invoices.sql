SELECT COUNT(*),
    i.BillingCountry
FROM Invoice i
GROUP BY BillingCountry