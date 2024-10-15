--Query5
SELECT Name
FROM Albums
INNER JOIN artists
ON Albums.ArtistId=artists.ArtistId
WHERE lower(Title) like '%symphony%';