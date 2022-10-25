SELECT
	m.musica_nome AS cancao,
    COUNT(h.usuario_id) AS reproducoes
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historico_reproducao AS h
	ON m.musica_id = h.musica_id
GROUP BY m.musica_id
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;