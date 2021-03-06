<div class="modal fade" id="modal-changepass">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
				<h4 class="modal-title">Change Password</h4>
			</div>
			<div class="modal-body">
				<!-- form -->
				<form class="form-horizontal" role="form" id="form-changepassword">
				<center>
					<strong id="changepass-msg" class="text-danger"></strong>
				</center>
				<input type="hidden" id="user-id">
				
				  <div class="form-group">
				    <label class="control-label col-sm-4" for="change-username">Username:</label>
				    <div class="col-sm-8">
				      <input type="text" class="form-control" id="change-username" placeholder="Enter Username">
				    </div>
				  </div>

				  <div class="form-group">
				    <label class="control-label col-sm-4" for="change-password">New Password:</label>
				    <div class="col-sm-8"> 
				      <input type="password" class="form-control" id="change-password" placeholder="Enter Password">
				    </div>
				  </div>

				   <div class="form-group">
				    <label class="control-label col-sm-4" for="confirm-password">Confirm Password:</label>
				    <div class="col-sm-8"> 
				      <input type="password" class="form-control" id="confirm-password" placeholder="Confirm Password">
				    </div>
				  </div>

				  <div class="form-group"> 
				    <div class="col-sm-offset-4 col-sm-8">
				      <button type="submit" class="btn btn-success btn-sm">Save
				      <span class="glyphicon glyphicon-check" aria-hidden="true"></span>
				      </button>
				    </div>
				  </div>

				</form>
				<!--end  form -->
			</div>
			<div class="modal-footer">
			</div>
		</div>
	</div>
</div>