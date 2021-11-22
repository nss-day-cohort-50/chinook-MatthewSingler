SELECT
    a.Title,
    m.Name typeName,
    g.Name genreName
FROM Track t
JOIN Album a
ON a.AlbumId = t.AlbumId
JOIN MediaType m
ON m.MediaTypeId = t.MediaTypeId
JOIN Genre g
ON g.GenreId = t.GenreId
GROUP BY a.Title