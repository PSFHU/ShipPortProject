CREATE TABLE ship(
       ID            NUMBER                    NOT NULL PRIMARY KEY,
       ship_type     VARCHAR2(3)               NOT NULL,
       ship_name     VARCHAR2(50)              NOT NULL,
       in_port       NUMBER(1)                 NOT NULL,
       mod_user      VARCHAR2(300)             NOT NULL,
       created_on    TIMESTAMP(6)              NOT NULL,
       last_mod      TIMESTAMP(6)              NULL,
       dml_flag      VARCHAR2(1)               NOT NULL,
       version       NUMBER                    NOT NULL
);