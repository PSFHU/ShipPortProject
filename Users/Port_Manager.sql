DECLARE
  existing_users NUMBER;
BEGIN
  SELECT COUNT(*)
    INTO existing_users
    FROM dba_users user_table
   WHERE user_table.username = 'PORT_MANAGER';
  IF existing_users = 1 THEN
    EXECUTE IMMEDIATE 'DROP USER port_manager CASCADE';
  END IF;
END;
/
CREATE USER port_manager 
    identified BY 'admin' 
    DEFAULT tablespace users 
    quota unlimited ON users
;

GRANT CREATE SESSION TO port_manager;
GRANT CREATE VIEW TO port_manager;
GRANT CREATE TABLE TO port_manager;
GRANT CREATE SEQUENCE TO port_manager;
GRANT CREATE PROCEDURE TO port_manager;
