DECLARE
  existing_users NUMBER;
BEGIN
  SELECT COUNT(*)
    INTO existing_users
    FROM dba_users user_table
   WHERE user_table.username = 'SITE_MANAGER';
  IF existing_users = 1 THEN
    EXECUTE IMMEDIATE 'DROP USER site_manager CASCADE';
  END IF;
END;
/
CREATE USER site_manager 
    identified BY "sitemanager"
    DEFAULT tablespace users 
    quota unlimited ON users
;
/

ALTER USER site_manager DEFAULT ROLE site_manager_role;
