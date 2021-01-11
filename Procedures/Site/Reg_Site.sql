CREATE OR REPLACE procedure reg_site(
    v_current_weight          IN FLOAT(64),
    v_max_weight              IN FLOAT(64),
    v_max_slot                IN NUMBER,
    v_container_type_ID       IN NUMBER
) IS

BEGIN
    INSERT INTO site(
        ID,
        current_weight,
        max_weight,
        max_slot,
        container_type_ID
    )
    VALUES
    (
        /*TODO ID SEQUENCE*/
        v_current_weight,
        v_max_weight,
        v_max_slot,
        v_container_type_ID
    );

END;
/