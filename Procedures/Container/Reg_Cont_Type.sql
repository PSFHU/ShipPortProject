CREATE OR REPLACE procedure reg_container_type(
    v_height          IN FLOAT(64),
    v_width           IN FLOAT(64),
    v_lenght          IN FLOAT(64),
    v_type_name       IN VARCHAR2(50)
) IS

BEGIN
    INSERT INTO container_type(
        ID,
        height,
        width,
        lenght,
        type_name
    )
    VALUES
    (
        /*TODO ID SEQUENCE*/
        v_height,
        v_width,
        v_lenght,
        v_type_name
    );

END;
/