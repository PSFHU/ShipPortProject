CREATE TABLE container(
        ID              NUMBER                  NOT NULL PRIMARY KEY,
        weight          FLOAT(64)               NOT NULL,
        status          VARCHAR2(10)            NOT NULL,
        site_ID         NUMBER                  NULL,
        dimensions_ID   NUMBER                  NOT NULL,
        ship_ID         NUMBER                  NOT NULL,
        mod_user        VARCHAR2(300)           NOT NULL,
        created_on      TIMESTAMP(6)            NOT NULL,
        last_mod        TIMESTAMP(6)            NULL,
        dml_flag        VARCHAR2(1)             NOT NULL,
        version         NUMBER                  NOT NULL
);