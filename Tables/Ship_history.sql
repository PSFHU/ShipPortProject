CREATE TABLE ship_history(
       ID           NUMBER                NOT NULL PRIMARY KEY,
       ship_type    VARCHAR2(3)    NOT NULL,
       ship_name    VARCHAR2(50)   NOT NULL,
       in_port      NUMBER(1)      NOT NULL,
       mod_user     VARCHAR2(300),
       created_on   TIMESTAMP(6),
       last_mod     TIMESTAMP(6),
       dml_flag     VARCHAR2(1),
       version      NUMBER
);