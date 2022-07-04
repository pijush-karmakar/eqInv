<?php 
require_once('../class/Item.php');
if(isset($_POST['data'])){
	$data = json_decode($_POST['data'], true);

	
	$iN  = ucwords($data[0]); 		
	$sN  = $data[1];	
	$mN  = $data[2];	
	$b   = ucwords($data[3]); 	
	$itd = $data[4];		
	$a   = $data[5]; 			
	$pD  = $data[6]; 
	$wD =  $data[7];		
	$vD =  $data[8];		
	$eID = $data[9]; 		
	$cID = $data[10]; 			
	$coID= $data[11]; 
	$iID = $data[12];
	

	$result['valid'] = $item->update_item($iN, $sN, $mN, $b, $itd, $a, $pD, $wD, $vD, $eID, $cID, $coID, $iID);
	if($result['valid']){
		$result['msg'] = 'Data Updated Successfully!';
		echo json_encode($result);
	}

}
$item->Disconnect();
 ?>

					