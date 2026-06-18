SELECT P.id
FROM publicacao AS P
INNER JOIN localizacao AS L ON P.localizacao_id = L.id
WHERE L.pais = 'Portugal'
  AND L.Cidade = 'Lisboa';

SELECT id
FROM publicacao
WHERE utilizador_id = 1;

SELECT CP.publicacao_id
FROM categoria_publicacao AS CP
JOIN categoria AS C ON CP.categoria_id = C.id
WHERE C.nome = 'Aventura';

SELECT IP.nome, IP.descricao
FROM idioma_traduz_publicacao AS IP
JOIN idioma AS I ON IP.idioma_id = I.id
WHERE IP.publicacao_id = 2
  AND I.nome = 'en';

SELECT id, caminho, tipo
FROM ficheiro
WHERE publicacao_id = 3;

SELECT *
FROM medalha
ORDER BY pontos DESC;

SELECT medalha_id
FROM utilizador_tem_medalha
WHERE utilizador_id = 2;

SELECT U.id, U.nome, AVG(RP.reacao) AS MediaPontos
FROM utilizador AS U LEFT JOIN reacoes_publicacao AS RP
	ON U.id = RP.utilizador_id
GROUP BY  U.id, U.nome;


