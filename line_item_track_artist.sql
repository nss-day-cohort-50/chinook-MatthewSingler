SELECT
    i.InvoiceLineId,
    t.Name Track,
    b.Name Artist
FROM InvoiceLine i
JOIN Track t
ON t.TrackId = i.TrackId
JOIN Album a
ON a.AlbumId = t.AlbumId
JOIN Artist b
ON b.ArtistId = a.ArtistId
ORDER BY i.InvoiceLineId