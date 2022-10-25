SELECT
		m.musica_nome AS nome,
    COUNT(h.musica_id) AS reproducoes
FROM SpotifyClone.musicas AS m
INNER JOIN SpotifyClone.historico_reproducao AS h
		ON m.musica_id = h.musica_id
INNER JOIN SpotifyClone.usuarios AS u
		ON h.usuario_id = u.usuario_id
INNER JOIN SpotifyClone.planos AS p
		ON p.plano_id = u.plano_id
WHERE p.plano_nome IN ('gratuito', 'pessoal')
GROUP BY m.musica_nome
ORDER BY nome ASC;