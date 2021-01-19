CREATE OR REPLACE procedure reg_ship(
    v_ship_type VARCHAR2(3),
    v_ship_name VARCHAR2(50),
    v_in_port   NUMBER(1)   
) IS

BEGIN
    INSERT INTO ship(
        ID,
        ship_type,
        ship_name,
        in_port
    )
    VALUES
    (
        ship_seq.NEXTVAL
        v_ship_type,
        v_ship_name,
        v_in_port
    );

END;
/