CREATE ROLE port_manager_role;

GRANT EXECUTE ON port_admin.reg_site TO port_manager_role;
GRANT EXECUTE ON port_admin.reg_container_type TO port_manager_role;
GRANT SELECT ON port_admin.vw_person_status TO port_manager_role;