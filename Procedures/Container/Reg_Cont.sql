CREATE OR REPLACE procedure reg_container(
    v_weight          IN FLOAT(64),
    v_status          IN VARCHAR2(10),
    v_site_ID         IN NUMBER,
    v_dimensions_ID   IN NUMBER,
    v_ship_ID         IN NUMBER,
    v_last_change     IN DATE
) IS

BEGIN
    INSERT INTO container(
        ID,
        weight,
        status,
        site_ID,
        dimensions_ID,
        ship_ID,
        last_change
    )
    VALUES
    (
        /*TODO ID SEQUENCE*/
        v_weight,
        v_status,
        v_site_ID,
        v_dimensions_ID,
        v_ship_ID,
        v_last_change
    );

END;
/