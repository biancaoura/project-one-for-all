SELECT
		COUNT(DISTINCT m.musica_id) AS cancoes,
    COUNT(DISTINCT ar.artista_id) AS artistas,
    COUNT(DISTINCT al.album_id) AS albuns
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.albuns AS al
		ON m.album_id = al.album_id
INNER JOIN SpotifyClone.artistas AS ar
		ON al.artista_id = ar.artista_id;