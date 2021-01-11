CREATE TABLE site_history(
        ID                      NUMBER                  NOT NULL PRIMARY KEY,
        current_weight          FLOAT(64)               NOT NULL,
        max_weight              FLOAT(64)               NOT NULL,
        max_slot                NUMBER                  NOT NULL,
        container_type_ID       NUMBER                  NOT NULL,
        mod_user                VARCHAR2(300),
        created_on              TIMESTAMP(6),
        last_mod                TIMESTAMP(6),
        dml_flag                VARCHAR2(1),
        version                 NUMBER
);