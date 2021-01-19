CREATE OR REPLACE procedure reg_person(
  v_person_name IN VARCHAR2(50),
  v_sex         IN NUMBER(1),
  v_img         IN VARCHAR2(50),
  v_birth_date    IN DATE,
  v_ship_ID       IN NUMBER,
  v_status        IN VARCHAR2(10)
) IS

BEGIN
    INSERT INTO person(
        ID,
        person_name,
        sex,
        img,
        birth_date,
        ship_ID,
        status
    )
    VALUES
    (
        person_seq.NEXTVAL
        v_person_name,
        v_sex,
        v_img,
        v_birth_date,
        v_ship_ID,
        v_status
    );

END;
/