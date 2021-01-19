CREATE TABLE container_type_history(
        ID              NUMBER                  NOT NULL PRIMARY KEY,
        height          FLOAT(64)               NOT NULL,
        width           FLOAT(64)               NOT NULL,
        lenght          FLOAT(64)               NOT NULL,
        type_name       VARCHAR2(50)            NOT NULL,
        mod_user        VARCHAR2(300),
        created_on      TIMESTAMP(6),
        last_mod        TIMESTAMP(6),
        dml_flag        VARCHAR2(1),
        version         NUMBER
);