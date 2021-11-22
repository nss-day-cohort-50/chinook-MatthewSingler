SELECT
    i.InvoiceId,
    sum(il.InvoiceLineId) totalLines
FROM Invoice i
JOIN InvoiceLine il
ON il.InvoiceId = i.InvoiceId
GROUP BY i.InvoiceId