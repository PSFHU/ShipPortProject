CREATE TABLE ship(
       ID        NUMBER         NOT NULL PRIMARY KEY,
       ship_type VARCHAR2(3)    NOT NULL,
       ship_name VARCHAR2(50)   NOT NULL,
       in_port   NUMBER(1)      NOT NULL
);