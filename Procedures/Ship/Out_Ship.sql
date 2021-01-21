CREATE OR REPLACE procedure out_ship(
    v_ID IN NUMBER
) IS

BEGIN
    UPDATE ship
       SET in_port=0
    WHERE ship.ID = v_ID;

END;
/