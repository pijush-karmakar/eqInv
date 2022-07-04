<?php 
require_once('../class/Item.php');
require_once('../class/Avl.php');
if(isset($_POST['choice'])){
	$choice = $_POST['choice'];

	$avl = $item->item_avl($choice);
	// echo '<pre>';
	// 	print_r($reports);
	// echo '</pre>';

?>

<br />
<br />
<table id="myTable" class="table table-bordered table-hover" cellspacing="0" width="100%">
	<thead>
	    <tr>
	        <th>Item Name</th>
	        <th>Office</th>
	        <th>Position</th>
	        <th>Availability</th>
	        <th>Deficit</th>
	    </tr>
	</thead>
    <tbody>
    	<?php foreach($avl as $a): ?>
    	
    		<tr>
    			<td><?= $a['item_name']; ?></td>
    			<td><?= $a['off_desc']; ?></td>
    			<td><?= $a['pos_desc']; ?></td>
    			<td><?= $a['avl']; ?></td>
    			<td><?= $a['def']; ?></td>
    		</tr>
    	<?php endforeach; ?>
    </tbody>
</table>


<?php 
// $db->Disconnect();
 ?>

<!-- for the datatable of employee -->
<script type="text/javascript">
	$(document).ready(function() {
		$('#myTable').DataTable();
	});
</script>



<?php

	// echo $choice;
}//end isset

