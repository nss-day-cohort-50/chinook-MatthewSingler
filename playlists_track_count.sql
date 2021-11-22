SELECT COUNT(*),
    p.Name
FROM
Playlist p
JOIN PlaylistTrack pl
GROUP BY p.Name
