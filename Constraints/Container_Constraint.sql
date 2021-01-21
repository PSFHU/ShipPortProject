ALTER TABLE container
ADD CONSTRAINT pk_con_ID
PRIMARY KEY (ID);

ALTER TABLE container
ADD CONSTRAINT fk_con_ship_ID
FOREIGN KEY (ship_ID)
REFERENCES ship(ID);

ALTER TABLE container
ADD CONSTRAINT fk_con_dimensions_ID
FOREIGN KEY (dimensions_ID)
REFERENCES container_type(ID);

ALTER TABLE container
ADD CONSTRAINT fk_con_site_ID
FOREIGN KEY (site_ID)
REFERENCES site(ID);