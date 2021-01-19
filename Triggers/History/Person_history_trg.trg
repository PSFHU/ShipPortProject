CREATE OR REPLACE TRIGGER person_history_trg
  AFTER INSERT OR UPDATE OR DELETE ON person_history
  FOR EACH ROW
  v_mod_user person_history.mod_user%TYPE;
  v_mod_time person_history.last_mod%TYPE;

BEGIN
    v_mod_user := sys_context('USERENV', 'OS_USER');
    v_mod_time := SYSDATE;
    
    IF deleting
    THEN
      INSERT INTO person_history( 
            ID,
            person_name,
            sex,
            img,
            birth_date,
            ship_ID,
            status,
            mod_user,
            created_on,
            last_mod,
            dml_flag,
            version
      )
      VALUES(
            :old.ID,
            :old.person_name,
            :old.sex,
            :old.img,
            :old.birth_date,
            :old.ship_ID,
            :old.status,
            v_mod_user,
            :old.created_on,
            v_mod_time,
            'D',
            :old.version + 1
      );
    ELSE /*INSERT AND UPDATE*/
        INSERT INTO person_history(
            ID,
            person_name,
            sex,
            img,
            birth_date,
            ship_ID,
            status,
            mod_user,
            created_on,
            last_mod,
            dml_flag,
            version
        )
        VALUES(
            :new.ID,
            :new.person_name,
            :new.sex,
            :new.img,
            :new.birth_date,
            :new.ship_ID,
            :new.status,
            :new.mod_user,
            :new.created_on,
            :new.last_mod,
            :new.dml_flag,
            :new.version
        );
    END IF;

END person_history_trg;
/
