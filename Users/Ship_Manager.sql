DECLARE
  existing_users NUMBER;
BEGIN
  SELECT COUNT(*)
    INTO existing_users
    FROM dba_users user_table
   WHERE user_table.username = 'SHIP_MANAGER';
  IF existing_users = 1 THEN
    EXECUTE IMMEDIATE 'DROP USER ship_manager CASCADE';
  END IF;
END;
/
CREATE USER ship_manager 
    identified BY 'shipmanager'
    DEFAULT tablespace users 
    quota unlimited ON users
;
/

ALTER USER ship_manager DEFAULT ROLE ship_manager_role;
