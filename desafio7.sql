SELECT 
    artist.artist_name AS 'artista',
    album.album_name AS 'album',
	COUNT(follow.artist_id) AS 'seguidores'
FROM
    SpotifyClone.artist AS artist
        INNER JOIN
    SpotifyClone.album AS album
ON artist.id = album.artist_id
		INNER JOIN
	SpotifyClone.followers AS follow
ON artist.id = follow.artist_id
GROUP BY follow.artist_id, album.album_name;