CREATE TABLE container_history(
        ID              NUMBER              NOT NULL PRIMARY KEY,
        weight          FLOAT(64)           NOT NULL,
        status          VARCHAR2(10)        NOT NULL,
        site_ID         NUMBER              NULL,
        dimensions_ID   NUMBER              NOT NULL,
        ship_ID         NUMBER              NOT NULL,
        last_change     DATE                NOT NULL
        mod_user        VARCHAR2(300),
        created_on      TIMESTAMP(6),
        last_mod        TIMESTAMP(6),
        dml_flag        VARCHAR2(1),
        version         NUMBER
);