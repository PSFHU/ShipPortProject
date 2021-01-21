DECLARE
  existing_users NUMBER;
BEGIN
  SELECT COUNT(*)
    INTO existing_users
    FROM dba_users user_table
   WHERE user_table.username = 'PORT_ADMIN';
  IF existing_users = 1 THEN
    EXECUTE IMMEDIATE 'DROP USER port_admin CASCADE';
  END IF;
END;
/

CREATE USER port_admin
    identified BY "portadmin" 
    DEFAULT tablespace users 
    quota unlimited ON users
;
/

GRANT CREATE SESSION TO port_admin;
GRANT CREATE VIEW TO port_admin;
GRANT CREATE TABLE TO port_admin;
GRANT CREATE SEQUENCE TO port_admin;
GRANT CREATE PROCEDURE TO port_admin;