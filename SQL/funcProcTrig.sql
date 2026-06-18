DELIMITER $$

USE tripual;

DELIMITER $$
CREATE TRIGGER trg_adicionar_viagem
AFTER INSERT ON publicacao
FOR EACH ROW
BEGIN
    UPDATE utilizador SET pontos = pontos + 10 WHERE id=NEW.utilizador_id;
END$$
DELIMITER ;



DELIMITER $$
CREATE PROCEDURE criar_publicacao (
    IN p_inicio DATE,
    IN p_fim DATE,
    IN p_utilizador INT,
    IN p_local_id INT,
    IN p_categoria INT
)
BEGIN
    DECLARE v_publicacao_id INT;

    INSERT INTO publicacao (inicio, fim, dataPublicacao, utilizador_id, localizacao_id)
    VALUES (p_inicio, p_fim, NOW(), p_utilizador,p_local_id);

    SET v_publicacao_id = LAST_INSERT_ID();

    INSERT INTO categoria_publicacao (categoria_id, publicacao_id)
    VALUES (p_categoria, v_publicacao_id);
END$$
DELIMITER ;
    
CALL criar_publicacao('2025-01-01', '2025-01-10', 2, 3, 2);

DELIMITER $$
CREATE FUNCTION total_publicacoes_utilizador(id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE count INT;
    SELECT COUNT(*) INTO count FROM publicacao WHERE utilizador_id = id;
    RETURN count;
END$$
DELIMITER ;

SELECT total_publicacoes_utilizador(3); 


