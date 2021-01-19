CREATE TABLE container_type(
        ID              NUMBER                  NOT NULL PRIMARY KEY,
        height          FLOAT(64)               NOT NULL,
        width           FLOAT(64)               NOT NULL,
        lenght          FLOAT(64)               NOT NULL,
        type_name       VARCHAR2(50)            NOT NULL,
        mod_user        VARCHAR2(300)           NOT NULL,
        created_on      TIMESTAMP(6)            NOT NULL,
        last_mod        TIMESTAMP(6)            NULL,
        dml_flag        VARCHAR2(1)             NOT NULL,
        version         NUMBER                  NOT NULL
);