SELECT COUNT(i.InvoiceLineId),
    i.InvoiceId
FROM InvoiceLine i
GROUP BY i.InvoiceId