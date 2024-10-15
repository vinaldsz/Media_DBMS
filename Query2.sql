--Query2 : This would give all the albums and their artists. Would ignore the artists that might not have an album (347 rows returned)
SELECT albums.title AS Album_Title, artists.name AS Artitst_Name
FROM artists
INNER JOIN albums
ON artists.ArtistId=albums.ArtistId;