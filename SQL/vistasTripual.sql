USE Tripual;

CREATE VIEW ranking_utilizador AS
SELECT u.nome, u.pontos, COUNT(p.id) AS total_publicacoes
	FROM utilizador AS u
	LEFT JOIN publicacao AS p
		ON u.id = p.utilizador_id
	GROUP BY u.id, u.nome, u.pontos
	ORDER BY u.pontos DESC
	LIMIT 10;

SELECT * FROM ranking_utilizador; 

CREATE VIEW utilizadores_completo AS
SELECT u.id, u.nome AS utilizador_nome, u.genero, u.email, u.pontos, u.passwords, i.nome AS idioma_nome
	FROM utilizador AS u
	INNER JOIN idioma AS i
		ON u.idioma_id = i.id;
	
SELECT * FROM utilizadores_completo; 
		
CREATE VIEW publicacao_completa AS
SELECT DISTINCT p.id AS publicacao_id, u.id AS utilizador_id, u.nome AS autor,
    l.pais, l.cidade, f.tipo, f.caminho, c.nome AS categoria, itp.nome AS titulo_traduzido,
    itp.descricao, i.nome AS idioma
FROM publicacao AS p
	JOIN utilizador AS u
		ON p.utilizador_id = u.id
		JOIN localizacao AS l
			ON p.localizacao_id = l.id
			JOIN categoria_publicacao AS cp
				ON p.id = cp.publicacao_id
				JOIN categoria AS c
					ON cp.categoria_id = c.id
					JOIN ficheiro AS f
						ON p.id = f.publicacao_id
						JOIN idioma_traduz_publicacao AS itp
							ON p.id = itp.publicacao_id
							JOIN idioma AS i
								ON itp.idioma_id = i.id;

SELECT * FROM publicacao_completa; 
