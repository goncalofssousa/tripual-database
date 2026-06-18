-- 1. Administradores do Sistema(direção)Responsável pela manutenção estrutural total.

CREATE USER 'admin_empresa'@'%' IDENTIFIED BY 'tripualAdmin';
GRANT ALL PRIVILEGES ON tripual.* TO 'admin_empresa'@'%'
	WITH GRANT OPTION;
    
    


CREATE USER 'app_service'@'%' IDENTIFIED BY 'tripualAppSecure';

GRANT SELECT, INSERT, UPDATE, DELETE ON tripual.Utilizador TO 'app_service'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON tripual.Publicacao TO 'app_service'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON tripual.Comentario TO 'app_service'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON tripual.ReacoesPublicacoes TO 'app_service'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON tripual.Ficheiro TO 'app_service'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON tripual.Telemóvel TO 'app_service'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON tripual.Utilizador_Tem_Medalha TO 'app_service'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON tripual.CategoriasPublicacoes TO 'app_service'@'localhost';
GRANT SELECT, INSERT, UPDATE, DELETE ON tripual.Idioma_Traduz_Publicacao TO 'app_service'@'localhost';

GRANT SELECT ON tripual.Categoria TO 'app_service'@'localhost';
GRANT SELECT ON tripual.Idioma TO 'app_service'@'localhost';
GRANT SELECT ON tripual.Localizacao TO 'app_service'@'localhost';
GRANT SELECT ON tripual.Medalha TO 'app_service'@'localhost';

-- 3. Utilizador de Desenvolvimento (Developer)
-- Corrigido o erro ortográfico ("programador") e ajustado para ambiente de trabalho.
CREATE ROLE dev_role;
GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, ALTER ON tripual.* TO dev_role;

CREATE USER 'ana'@'%' IDENTIFIED BY 'ANA_TRIPUAL!';
CREATE USER 'bruno'@'%' IDENTIFIED BY 'BRUNO_TRIPUAL!';
CREATE USER 'zeca'@'%' IDENTIFIED BY 'ZECA_TRIPUAL!';

GRANT dev_role TO 'ana'@'%';
GRANT dev_role TO 'bruno'@'%';
GRANT dev_role TO 'zeca'@'%';
-- Nota: Evitamos dar 'DROP' ao programador em ambientes que não sejam locais.




    