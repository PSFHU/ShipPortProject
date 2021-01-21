 CREATE OR REPLACE procedure in_ship(
    v_ID IN NUMBER
) IS

BEGIN
    UPDATE ship
       SET in_port=1
    WHERE ship.ID = v_ID;

END;
/