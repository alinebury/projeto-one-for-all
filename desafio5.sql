SELECT 
    music.music_name AS 'cancao',
    COUNT(history.music_id) AS 'reproducoes'
FROM
    SpotifyClone.music AS music
        INNER JOIN
    SpotifyClone.history AS history ON music.id = history.music_id
GROUP BY music.music_name
ORDER BY COUNT(history.music_id) DESC , music.music_name
LIMIT 2;