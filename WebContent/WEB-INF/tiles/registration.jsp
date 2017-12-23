<script type="text/javascript">

$(document).ready(function(){
	
	//var countryList = [];		
	//funGetCountryList();
	
	//viewData();
	
	function validator(){
		
		var fullname	= $.trim($("#regname").val());		
		
		if(fullname == ""){		
	   	 	$("#errorMessage").html("!! Please enter a name");
	   	    $("#errorMessage").removeClass("hidden");
	   	    $("#successMessage").addClass("hidden");	         	      	 
	        return false;		                
		}
		
		return true;
	}
	
	
	/* Submitting form to controller*/
	$("#regbtn").click(function(event) {
		
		alert("button clicked!");
		
		event.preventDefault();
		
		if (validator()){
			
			var data = {};
			
			data["fullname"] = $("#regname").val();	
			data["username"] = $("#regusername").val();
			data["password"] = $("#regpass").val();
			//alert(JSON.stringify(data));
			//return false;
			$.ajax({
	             type: "POST",
	             url: "saveUser",
	             data: JSON.stringify(data),
	             contentType: "application/json; charset=utf-8",             
	             success: function (successData) {
	            	// viewData();
	             	//$("#submit").prop("disabled", false);			                 
	                $("#successMessage").html(successData); 
	                $("#successMessage").removeClass("hidden");
	                $("#errorMessage").addClass("hidden");
	                      
	             },
	             error: function (error) {
	            	 /* $("#errorMessage").html("Error: Record Not Saved");
	            	 $("#errorMessage").removeClass("hidden");
	                 $("#submit").prop("disabled", false); */
	                 alert(JSON.stringify(error));
	             }
			}); 

		} // End of validation		
	}); // End of form submission


}); // End of document ready()

/*function viewData(){
	
	$.post("showEmployeeList", function(data){
		
		var dataTable = '<table class="table"><tr><th>ID</th><th>Name</th><th>Address</th><th>Country</th></tr>';
		
		for(var key in data){
			dataTable += '<tr><td>' + data[key].id + '</td><td>' + data[key].name + '</td><td>' + data[key].address + '</td><td>' + funGetCountryName(data[key].country) + '</td></tr>';
		}
		
		dataTable += '</table>';
		
		$("#divDataTable").html(dataTable);
	})
}*/





//*$(document).ready(function(){
	
/*	function validator(){
		var regname = $.trim($(#regname).val());
		if(regname == ""){		
	   	 	$("#errorMessage").html("Please enter a Name.");
	   	    $("#errorMessage").removeClass("hidden");
	   	 	
	   	    
	   	    $("#successMessage").addClass("hidden");	         	      	 
	        return false;		                
		}
		
		return true;
	}
	$("#regbtn").click(function(event) {		
		
		event.preventDefault();
		
		if (validator()){
			
			var data = {};
			
			data["fullname"] = $("#regname").val();	
			data["username"] = $("#regusername").val();
			data["password"] = $("#regpass").val();
			
			//alert(JSON.stringify(data));
			//return false;
			$.ajax({
	             type: "POST",
	             url: "saveUser",
	             data: JSON.stringify(data),
	             contentType: "application/json; charset=utf-8",             
	             success: function (successData) {
	            	
	             	//$("#submit").prop("disabled", false);			                 
	                $("#successMessage").html(successData); 
	                $("#successMessage").removeClass("hidden");
	                $("#errorMessage").addClass("hidden");
	                      
	             },
	             error: function (error) {
	            	 /* $("#errorMessage").html("Error: Record Not Saved");
	            	 $("#errorMessage").removeClass("hidden");
	                 $("#submit").prop("disabled", false); */
	                 /*alert(JSON.stringify(error));
	             }
			}); 

		} // End of validation		
	});
})	
*/		
</script>



	<form class="form-horizontal">
		<fieldset>

			<!-- Form Name -->
			<legend>Registration Form</legend>

			<div id="successMessage" align="center"
				class="hidden alert alert-success"></div>
			<div id="errorMessage" align="center"
				class="hidden alert alert-danger"></div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="regname">Name</label>
				<div class="col-md-4">
					<input id="regname" name="regname" type="text" 
					placeholder="Enter Your Name" class="form-control input-md"
						required="">

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="regusername">Username</label>
				<div class="col-md-4">
					<input id="regusername" name="regusername" type="text"
						placeholder="Enter your username" class="form-control input-md"
						required="">

				</div>
			</div>

			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="regpass">Password</label>
				<div class="col-md-4">
					<input id="regpass" name="regpass" type="text"
						placeholder="Enter pass" class="form-control input-md" required="">

				</div>
			</div>



			<!-- Text input-->
			<div class="form-group">
				<label class="col-md-4 control-label" for="regconpass">Confirm
					Password</label>
				<div class="col-md-4">
					<input id="regconpass" name="regconpass" type="text"
						placeholder="Confirm your Password" class="form-control input-md"
						required="">

				</div>
			</div>

			<!-- Button (Double) -->
			<div class="form-group">
				<label class="col-md-4 control-label" for="regbtn"></label>
				<div class="col-md-8">
					<button id="regbtn" name="regbtn" class="btn btn-success">Register</button>
					<button id="clearbtn" name="clearbtn" class="btn btn-danger">Clear</button>
				</div>
			</div>

		</fieldset>
	</form>
