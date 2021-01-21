ALTER TABLE site
ADD CONSTRAINT pk_sit_ID
PRIMARY KEY (ID);

ALTER TABLE site
ADD CONSTRAINT fk_sit_container_type_ID
FOREIGN KEY (container_type_ID)
REFERENCES container_type(ID);