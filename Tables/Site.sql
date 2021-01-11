CREATE TABLE site(
        ID                      NUMBER                  NOT NULL PRIMARY KEY,
        current_weight          FLOAT(64)               NOT NULL,
        max_weight              FLOAT(64)               NOT NULL,
        max_slot                NUMBER                  NOT NULL,
        container_type_ID       NUMBER                  NOT NULL
);