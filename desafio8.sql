SELECT 
    artist.artist_name AS 'artista',
    album.album_name AS 'album'
FROM
    SpotifyClone.artist AS artist
		INNER JOIN
	SpotifyClone.album AS album ON artist.id = album.artist_id
WHERE artist.artist_name = 'Walter Phoenix';