SELECT
	ar.nome AS artista,
    al.album_nome AS album,
    COUNT(u.artista_id) AS seguidores
FROM SpotifyClone.artistas AS ar
INNER JOIN SpotifyClone.albuns AS al
	ON ar.artista_id = al.artista_id
INNER JOIN usuario_seguindo AS u
	ON u.artista_id = al.artista_id
GROUP BY al.album_id
ORDER BY
	seguidores DESC,
    artista ASC,
    album ASC;