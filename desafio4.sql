SELECT 
    user.name_user AS 'usuario',
    IF(ANY_VALUE(history.reproduction_date) LIKE '%2021%',
        'Usuário ativo',
        'Usuário inativo') AS 'condicao_usuario'
FROM
    SpotifyClone.user AS user
        LEFT JOIN
    SpotifyClone.history AS history ON user.id = history.user_id
        AND YEAR(history.reproduction_date) = '2021'
GROUP BY user.name_user
ORDER BY user.name_user;