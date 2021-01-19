CREATE TABLE site(
        ID                      NUMBER                  NOT NULL PRIMARY KEY,
        current_weight          FLOAT(64)               NOT NULL,
        max_weight              FLOAT(64)               NOT NULL,
        max_slot                NUMBER                  NOT NULL,
        container_type_ID       NUMBER                  NOT NULL,
        mod_user                VARCHAR2(300)           NOT NULL,
        created_on              TIMESTAMP(6)            NOT NULL,
        last_mod                TIMESTAMP(6)            NULL,
        dml_flag                VARCHAR2(1)             NOT NULL,
        version                 NUMBER                  NOT NULL
);