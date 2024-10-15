--Query7 : Returns The count of artists that have more than 9 MPEG tracks
WITH cte_GetArtistId AS (
	SELECT ArtistId,Count(*)  cnt FROM (
		SELECT a.ArtistId, c.Name, d.Name
		FROM artists a
		JOIN albums b ON a.ArtistId=b.ArtistId
		JOIN tracks c ON c.AlbumId=b.AlbumId
		JOIN media_types d ON c.MediaTypeId=d.MediaTypeId
		WHERE d.Name like '%MPEG%')
	GROUP BY ArtistId
	HAVING cnt>9
)
SELECT count(DISTINCT Name) artist_count
FROM artists 
WHERE ArtistId in (
	SELECT ArtistId 
	from cte_GetArtistId);