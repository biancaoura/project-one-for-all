SELECT
		CONCAT(u.nome, ' ', u.sobrenome) AS usuario,
    COUNT(h.musica_id) AS qt_de_musicas_ouvidas,
    ROUND(SUM(m.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_reproducao AS h
		ON u.usuario_id = h.usuario_id
INNER JOIN SpotifyClone.musicas AS m
		ON m.musica_id = h.musica_id
GROUP BY h.usuario_id
ORDER BY u.nome ASC;