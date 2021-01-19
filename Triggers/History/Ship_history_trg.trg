CREATE OR REPLACE TRIGGER ship_history_trg
  AFTER INSERT OR UPDATE OR DELETE ON ship_history
  FOR EACH ROW
  v_mod_user ship_history.mod_user%TYPE;
  v_mod_time ship_history.last_mod%TYPE;

BEGIN
    v_mod_user := sys_context('USERENV', 'OS_USER');
    v_mod_time := SYSDATE;
    
    IF deleting
    THEN
      INSERT INTO ship_history( 
            ID,
            ship_type,
            ship_name,
            in_port,
            mod_user,
            created_on,
            last_mod,
            dml_flag,
            version
      )
      VALUES(
            :old.ID,
            :old.ship_type,
            :old.ship_name,
            :old.in_port,
            v_mod_user,
            :old.created_on,
            v_mod_time,
            'D',
            :old.version + 1
      );
    ELSE /*INSERT AND UPDATE*/
        INSERT INTO ship_history(
            ID,
            ship_type,
            ship_name,
            in_port,
            mod_user,
            created_on,
            last_mod,
            dml_flag,
            version
        )
        VALUES(
            :new.ID,
            :new.ship_type,
            :new.ship_name,
            :new.in_port,
            :new.mod_user,
            :new.created_on,
            :new.last_mod,
            :new.dml_flag,
            :new.version
        );
    END IF;

END ship_history_trg;
/
