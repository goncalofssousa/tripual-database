SET GLOBAL event_scheduler = ON;
DELIMITER $$
CREATE EVENT limpar_viagens_incompletas
ON SCHEDULE EVERY 1 DAY
DO
BEGIN
    DELETE FROM viagem
    WHERE fim IS NULL
      AND inicio < DATE_SUB(CURDATE(), INTERVAL 1 YEAR);
END$$
DELIMITER ;

DROP EVENT limpar_viagens_incompletas; 