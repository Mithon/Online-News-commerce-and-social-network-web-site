
<script type="text/javascript">
	$(document).ready(function() {

		/* Submitting form to controller*/
		$("#submit").click(function(event) {

			event.preventDefault();
			
			
			alert("submit successfully");

			var data = {};

			data["cag_name"] = $("#cag_name").val();
			data["cag_parent"] = $("#cag_parent").val();

			//return false;

			$.ajax({
				type : "POST",
				url : "saveAccgroup",
				data : JSON.stringify(data),
				contentType : "application/json; charset=utf-8",
				success : function(successData) {
					//$("#submit").prop("disabled", false);			                 
					$("#successMessage").html(successData);
					$("#successMessage").removeClass("hidden");
					$("#errorMessage").addClass("hidden");

				},
				error : function(error) {
					 $("#errorMessage").html("Error: Record Not Saved");
					$("#errorMessage").removeClass("hidden");
					$("#submit").prop("disabled", false); 

				}
			});

			// End of validation		
		}); // End of form submission

	}); // End of document ready()
</script>








<form class="form-horizontal">
	<fieldset>

		<!-- Form Name -->
		<legend>Submit Acc Group</legend>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="textinput">Acc
				Group</label>
			<div class="col-md-6">
				<input id="cag_name" name="cag_name" type="text"
					placeholder="Enter AccGroup Name" class="form-control input-md">

			</div>
		</div>

		<!-- Text input-->
		<div class="form-group">
			<label class="col-md-4 control-label" for="textinput">Acc
				Sub-Group</label>
			<div class="col-md-6">
				<input id="cag_parent" name="cag_parent" type="text"
					placeholder="Enter Acc Sub-Group Name"
					class="form-control input-md">

			</div>
		</div>

		<!-- Button (Double) -->
		<div class="form-group">
			<label class="col-md-4 control-label" for="button1id"></label>
			<div class="col-md-8">
				<button id="submit" name="submit" class="btn btn-primary">Save</button>
				<button id="clear" name="clear" class="btn btn-danger">Clear</button>
			</div>
		</div>

	</fieldset>
</form>
