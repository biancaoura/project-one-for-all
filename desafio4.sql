SELECT
		CONCAT(u.nome, ' ', u.sobrenome) AS usuario,
    IF(MAX(YEAR(h.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuarios AS u
INNER JOIN SpotifyClone.historico_reproducao AS h
		ON u.usuario_id = h.usuario_id
GROUP BY h.usuario_id
ORDER BY u.nome ASC;