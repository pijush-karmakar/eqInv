<?php 
require_once('../class/Employee.php');

if(isset($_POST['data'])){
	$data = json_decode($_POST['data'], true);
	$fN = $data[0];
	// $mN = $data[1];
	$lN = $data[1];
	$pos = $data[2];
	$off = $data[3];
	$type = $data[4];
	$eid = $data[5];

	$result['valid'] = $employee->update_employee($fN, $lN, $pos, $off, $type, $eid);
	if($result['valid']){
		$result['msg'] = "Employee Updated Successfully!";
		echo json_encode($result);	
	}

}


$employee->Disconnect();