<?php 
require_once('../class/Employee.php'); 
require_once('../class/Avl.php'); 

$positions = $avl->employee_positions();
$offices = $avl->employee_offices();

?>
<div class="modal fade" id="modal-add-avl">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Add Availability</h4>
			</div>
			<div class="modal-body">
				
					<form class="form-horizontal" role="form" id="add-avl-form">

					  <!-- <div class="form-group">
					    <label class="control-label col-sm-3" for="itemname">Item Name:</label>
					    <div class="col-sm-9">
					      <input type="text" class="form-control" id="itemname" placeholder="Enter Item Name" autofocus>
					    </div>
					  </div>	 -->

					   <div class="form-group">
					    <label class="control-label col-sm-3" for="office">Office:</label>
					    <div class="col-sm-9">
					      <select class="btn btn-default" id="office">
					      	<?php 
					      		foreach ($offices as $off) {
					      			# code...
					      			$off_id = $off['off_id'];
					      			$off_desc = $off['off_desc'];
					      	?>
					      		<option value="<?php echo $off_id; ?>"><?php echo $off_desc; ?></option>
					      	<?php		
					      		}//end foreach
					      	 ?>
					      </select>
					    </div>
					  </div>				 


				      <div class="form-group">
					    <label class="control-label col-sm-3" for="position">Position:</label>
					    <div class="col-sm-9">
					      <select class="btn btn-default" id="position">
					      	<?php 
					      		foreach ($positions as $pos) {
					      			# code...
					      			$pos_id = $pos['pos_id'];
					      			$pos_desc = $pos['pos_desc'];
					      	?>
					      		<option value="<?php echo $pos_id; ?>"><?php echo $pos_desc; ?></option>
					      	<?php		
					      		}//end foreach
					      	 ?>
					      </select>
					    </div>
					  </div>

				

					 <div class="form-group">
					    <label class="control-label col-sm-3" for="avl">Availability:</label>
					    <div class="col-sm-9"> 
					      <input type="number" step="any"  class="form-control" id="avl">
					    </div>
					  </div>

					  <div class="form-group">
					    <label class="control-label col-sm-3" for="def">Deficit:</label>
					    <div class="col-sm-9"> 
					      <input type="number" step="any"  class="form-control" id="def">
					    </div>
					  </div>




					  <div class="form-group"> 
					    <div class="col-sm-offset-10 col-sm-2">
					      <button type="submit" class="btn btn-success btn-sm" value="addAvl">Save
					      <span class="glyphicon glyphicon-saved" aria-hidden="true"></span>
					      </button>
					    </div>
					  </div>
					</form>
				<!-- /main form -->
			</div>
		</div>
	</div>
</div>
