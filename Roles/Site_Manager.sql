CREATE ROLE site_manager_role;

GRANT EXECUTE ON port_admin.mov_container TO site_manager_role;
GRANT EXECUTE ON port_admin.update_container_status TO site_manager_role;
GRANT SELECT ON port_admin.container TO site_manager_role;
