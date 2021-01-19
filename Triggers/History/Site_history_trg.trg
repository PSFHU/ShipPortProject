CREATE OR REPLACE TRIGGER site_history_trg
  AFTER INSERT OR UPDATE OR DELETE ON site_history
  FOR EACH ROW
  v_mod_user site_history.mod_user%TYPE;
  v_mod_time site_history.last_mod%TYPE;

BEGIN
    v_mod_user := sys_context('USERENV', 'OS_USER');
    v_mod_time := SYSDATE;
    
    IF deleting
    THEN
      INSERT INTO site_history( 
          ID,
          current_weight,
          max_weight,
          max_slot,
          container_type_ID,
          mod_user,
          created_on,
          last_mod,
          dml_flag,
          version
      )
      VALUES(
          :old.ID,
          :old.current_weight,
          :old.max_weight,
          :old.max_slot,
          :old.container_type_ID,
          v_mod_user,
          :old.created_on,
          v_mod_time,
          'D',
          :old.version + 1
      );
    ELSE /*INSERT AND UPDATE*/
        INSERT INTO site_history(
            ID,
            current_weight,
            max_weight,
            max_slot,
            container_type_ID,
            mod_user,
            created_on,
            last_mod,
            dml_flag,
            version
        )
        VALUES(
            :new.ID,
            :new.current_weight,
            :new.max_weight,
            :new.max_slot,
            :new.container_type_ID,
            :new.mod_user,
            :new.created_on,
            :new.last_mod,
            :new.dml_flag,
            :new.version
        );
    END IF;

END site_history_trg;
/
