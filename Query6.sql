--Query6
WITH cte_Tracks AS (
	SELECT a.Name, c.AlbumId
	FROM playlists a
	INNER JOIN playlist_track b
	ON a.PlaylistId=b.PlaylistId
	INNER JOIN tracks c
	ON b.TrackId=c.TrackId
	INNER JOIN media_types d
	ON c.MediaTypeId= d.MediaTypeId
	where (lower(a.Name) like '%brazilian music%' OR lower(a.Name) like '%grunge%' ) AND d.Name like '%MPEG%'
),
cte_Artists AS (
	SELECT a.Name, b.AlbumId, a.ArtistId
	FROM artists a
	INNER JOIN albums b
	ON a.ArtistId=b.ArtistId
)
SELECT distinct cte_Artists.Name FROM cte_Artists 
INNER JOIN cte_Tracks ON cte_Artists .AlbumId = cte_Tracks.AlbumId;