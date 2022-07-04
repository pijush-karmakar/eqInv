<?php 
require_once('../class/Avl.php');

if(isset($_POST['data'])){
	$data = json_decode($_POST['data'], true);

	$iN = ucwords($data[0]);
	$off = $data[1];
	$pos = $data[2];
	$avl = $data[3];
	$def = $data[4];

	$result['valid'] = $avl->insert_avl($iN, $off, $pos, $avl, $def);
	if($result['valid']){
		$result['msg'] = 'New Availability Added Successfully!';
		echo json_encode($result);
	}//end
	// echo 'wtf';
}


$avl->Disconnect();
 ?>


