CREATE TABLE person(
        ID              NUMBER                  NOT NULL PRIMARY KEY,
        person_name     VARCHAR2(50)            NOT NULL,
        sex             NUMBER(1)               NOT NULL,
        img             VARCHAR2(50)            NOT NULL,
        birth_date      DATE                    NOT NULL,
        ship_ID         NUMBER                  NULL,
        status          VARCHAR2(10)            NOT NULL,
        mod_user        VARCHAR2(300)           NOT NULL,
        created_on      TIMESTAMP(6)            NOT NULL,
        last_mod        TIMESTAMP(6)            NULL,
        dml_flag        VARCHAR2(1)             NOT NULL,
        version         NUMBER                  NOT NULL
);