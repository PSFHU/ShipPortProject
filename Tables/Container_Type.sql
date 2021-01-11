CREATE TABLE container_type(
        ID              NUMBER                  NOT NULL PRIMARY KEY,
        height          FLOAT(64)               NOT NULL,
        width           FLOAT(64)               NOT NULL,
        lenght          FLOAT(64)               NOT NULL,
        type_name       VARCHAR2(50)            NOT NULL
);