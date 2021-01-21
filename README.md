# ShipPortProject

Oracle DB - Assignment Project

The task of this small project to create a record of a Port.

## Installing

1. Login with sys
2. Run installer_sys.sql
3. Login with port_admin (Default password: admin)
4. Run installer_port_admin.sql
5. Done

## Roles

![Role diagram](Diagram/Roles.png)

## Diagram views

![Base diagram of the database](Diagram/Starter-Diagram.jpg)

![Extended diagram of the database](Diagram/History-Diagram.jpg)

## Basic procedures

- Register ship
- Record ship state (In or out)
- On cruise ships types
  - Get person
  - Get leaving people
  - Get incoming people
- On carrier ships
  - Register container
  - Container type, weight registration
  - Site picking for container
  - Container status (In tranit, In registration phase, On site)
- Site management
  - Get free space
  - Register container
  - Move container
  - Sign off container
