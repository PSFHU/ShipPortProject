CREATE OR REPLACE TRIGGER container_history_trg
  AFTER INSERT OR UPDATE OR DELETE ON container_history
  FOR EACH ROW
  v_mod_user container_history.mod_user%TYPE;
  v_mod_time container_history.last_mod%TYPE;

BEGIN
    v_mod_user := sys_context('USERENV', 'OS_USER');
    v_mod_time := SYSDATE;
    
    IF deleting
    THEN
      INSERT INTO container_history( 
            ID,
            weight,
            status,
            site_ID,
            dimensions_ID,
            ship_ID,
            mod_user,
            created_on,
            last_mod,
            dml_flag,
            version
      )
      VALUES(
            :old.ID,
            :old.weight,
            :old.status,
            :old.site_ID,
            :old.dimensions_ID,
            :old.ship_ID,
            v_mod_user,
            :old.created_on,
            v_mod_time,
            'D',
            :old.version + 1
      );
    ELSE /*INSERT AND UPDATE*/
        INSERT INTO container_history(
            ID,
            weight,
            status,
            site_ID,
            dimensions_ID,
            ship_ID,
            mod_user,
            created_on,
            last_mod,
            dml_flag,
            version
        )
        VALUES(
            :new.ID,
            :new.weight,
            :new.status,
            :new.site_ID,
            :new.dimensions_ID,
            :new.ship_ID,
            :new.mod_user,
            :new.created_on,
            :new.last_mod,
            :new.dml_flag,
            :new.version
        );
    END IF;

END container_history_trg;
/
