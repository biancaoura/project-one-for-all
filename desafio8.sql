SELECT
		ar.nome AS artista,
    al.album_nome AS album
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
		ON al.artista_id = ar.artista_id
WHERE ar.nome = 'Elis Regina'
ORDER BY al.album_nome ASC;