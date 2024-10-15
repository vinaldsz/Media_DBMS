--Query9 : Rank the genres based on the number of albums. 


SELECT GenreId, dense_rank() OVER (ORDER BY cnt desc) rnk
FROM  (
	SELECT genres.GenreId,count(*) cnt
	FROM genres
	JOIN tracks USING (GenreId)
	JOIN albums USING (AlbumId)
	GROUP BY GenreId)
;

