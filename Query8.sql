--Query8 : Returns playlistid and the total time in a playlist rouned to 2 decimal places
SELECT PlaylistId, a.Name,ROUND(sum(Milliseconds)/(1.0 *3600000),2)total_length_in_hrs
FROM playlists a
JOIN playlist_track USING (PlaylistId)
JOIN tracks USING (TrackId)
GROUP BY PlaylistId,a.Name
HAVING total_length_in_hrs > 2.0;
