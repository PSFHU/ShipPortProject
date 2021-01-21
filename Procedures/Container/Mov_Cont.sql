CREATE OR REPLACE procedure mov_container(
    v_ID          IN NUMBER,
    v_site_ID     IN NUMBER,
    v_status      IN VARCHAR2(10)
) IS

BEGIN
    UPDATE container c
       SET  c.site_ID   = v_site_ID,
            c.status    = v_status
    WHERE c.ID = v_ID;

END;
/