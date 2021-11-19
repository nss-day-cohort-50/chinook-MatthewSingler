SELECT COUNT(i.InvoiceLineId)
    i.InvoiceLineId,
    i.InvoiceId
FROM InvoiceLine i
JOIN Invoice Inv
ON Inv.id = i.InvoiceId
GROUP BY Inv.id

SELECT COUNT(InvoiceId), InvoiceLineId 
FROM InvoiceLine 
GROUP BY InvoiceId;