CREATE OR REPLACE TRIGGER container_type_history_trg
  AFTER INSERT OR UPDATE OR DELETE ON container_type_history
  FOR EACH ROW
  v_mod_user container_type_history.mod_user%TYPE;
  v_mod_time container_type_history.last_mod%TYPE;

BEGIN
    v_mod_user := sys_context('USERENV', 'OS_USER');
    v_mod_time := SYSDATE;
    
    IF deleting
    THEN
      INSERT INTO container_type_history( 
            ID,
            height,
            width,
            lenght,
            type_name,
            mod_user,
            created_on,
            last_mod,
            dml_flag,
            version
      )
      VALUES(
            :old.ID,
            :old.height,
            :old.width,
            :old.lenght,
            :old.type_name,
            v_mod_user,
            :old.created_on,
            v_mod_time,
            'D',
            :old.version + 1
      );
    ELSE /*INSERT AND UPDATE*/
        INSERT INTO container_type_history(
            ID,
            height,
            width,
            lenght,
            type_name,
            mod_user,
            created_on,
            last_mod,
            dml_flag,
            version
        )
        VALUES(
            :new.ID,
            :new.height,
            :new.width,
            :new.lenght,
            :new.type_name,
            :new.mod_user,
            :new.created_on,
            :new.last_mod,
            :new.dml_flag,
            :new.version
        );
    END IF;

END container_type_history_trg;
/
