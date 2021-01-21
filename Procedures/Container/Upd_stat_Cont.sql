CREATE OR REPLACE procedure update_container_status(
    v_ID          IN NUMBER,
    v_status      IN VARCHAR2(10)
) IS

BEGIN
    UPDATE  container c
       SET  c.status = v_status
    WHERE   c.ID = v_ID;

END;
/