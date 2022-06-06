SELECT
	music.music_name AS 'nome',
    COUNT(history.music_id) AS 'reproducoes'
FROM
	SpotifyClone.music AS music
		INNER JOIN
	SpotifyClone.history AS history ON history.music_id = music.id
		INNER JOIN
	SpotifyClone.user AS user ON history.user_id = user.id
WHERE user.plan_id IN(1, 2)
GROUP BY history.music_id
ORDER BY music.music_name;