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
    identified BY "portmanager"
    DEFAULT tablespace users 
    quota unlimited ON users
;
/

ALTER USER port_manager DEFAULT ROLE port_manager_role;
