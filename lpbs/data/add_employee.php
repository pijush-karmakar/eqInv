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

	$result['valid'] = $employee->insert_employee($fN, $lN, $pos, $off, $type);
	if($result['valid']){
		$result['msg'] = 'New Employee Added Successfully!';
		echo json_encode($result);
	}//end
	// echo 'wtf';
}


$employee->Disconnect();
 ?>


