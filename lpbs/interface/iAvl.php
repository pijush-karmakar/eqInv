 <?php 
interface iAvl{
	public function my_session_start();
	public function insert_avl($iN, $off, $pos, $avl, $def);

	// public function update_employee($fN, $lN, $pos, $off, $type, $eid);
	// public function get_employee($emp_id);
	// public function get_employees($inner_joined = false);
	public function employee_positions();
	public function employee_offices();
	// public function employee_account_types();
	// public function employee_remove_undo($at_deped, $eid);
	public function insert_employee_position($position);
	public function insert_employee_office($office);
	// public function insert_item($id);
	// public function change_employee_password($id, $un, $pwd);
	public function item_owned();
	// public function update_admin_data($un, $pass);

}