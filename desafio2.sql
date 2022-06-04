SELECT 
    COUNT(music.music_name) AS 'cancoes',
    COUNT(artist.artist_name) AS 'artistas',
    COUNT(album.album_name) AS 'albuns'
FROM
    SpotifyClone.music AS music
		LEFT JOIN
	SpotifyClone.artist AS artist
ON artist.id = music.id
		LEFT JOIN
	SpotifyClone.album AS album
ON album.id = music.id;