CREATE ROLE ship_manager_role;

GRANT EXECUTE ON port_admin.reg_ship TO ship_manager_role;
GRANT EXECUTE ON port_admin.in_ship TO ship_manager_role;
GRANT EXECUTE ON port_admin.out_ship TO ship_manager_role;
GRANT EXECUTE ON port_admin.reg_person TO ship_manager_role;
GRANT EXECUTE ON port_admin.chk_person TO ship_manager_role;
GRANT EXECUTE ON port_admin.reg_container TO ship_manager_role;
