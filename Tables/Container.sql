CREATE TABLE container(
        ID              NUMBER                  NOT NULL PRIMARY KEY,
        weight          FLOAT(64)               NOT NULL,
        status          VARCHAR2(10)            NOT NULL,
        site_ID         NUMBER                  NULL,
        dimensions_ID   NUMBER                  NOT NULL,
        ship_ID         NUMBER                  NOT NULL,
        last_change     DATE                    NOT NULL
);