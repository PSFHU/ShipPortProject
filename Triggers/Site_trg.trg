CREATE OR REPLACE TRIGGER site_trg
  BEFORE INSERT OR UPDATE ON site
  FOR EACH ROW
BEGIN
  IF inserting
  THEN
    IF :new.ID IS NULL
    THEN
      :new.ID := site_seq.NEXTVAL;
    END IF;
  
    :new.created_on := SYSDATE();
    :new.dml_flag   := 'I';
    :new.version    := 1;
  ELSE
    :new.dml_flag := 'U';
    :new.version  := :old.version + 1;
  END IF;

  :new.last_mod := SYSDATE();
  :new.mod_user := sys_context('USERENV', 'OR_USER');

END site_trg;
/
