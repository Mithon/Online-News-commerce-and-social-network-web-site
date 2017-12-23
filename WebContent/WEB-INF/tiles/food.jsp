<script type="text/javascript">
	$(document).ready(function(){
	
	// viewResult();
	
	// Validator function
	function validator(){
		
		var studentid = $.trim($("#social").val());
		var marks = $.trim($("#soialArea").val());
		
		if(studentid == ""){
			$("#errorMessage").html("!! Please enter a Student ID");
	   	    $("#errorMessage").removeClass("hidden");
	   	    $("#successMessage").addClass("hidden");	
			return false;
		}
		
		if(marks == ""){
			$("#errorMessage").html("!! Please enter social");
	   	    $("#errorMessage").removeClass("hidden");
	   	    $("#successMessage").addClass("hidden");	
			return false;
		}
		
		return true;
	}
	
	
	/* Button Click Event*/
	
	$("#addNews").click(function(event){
		
		// alert("Button Clicked!!");
		event.preventDefault();
		if(validator()){
			
			//create data array
			var data = {};
			data["social"] = $("#social").val();
			data["soialArea"] = $("#soialArea").val();
			alert(JSON.stringify(data));
			// send data using ajax/json
			$.ajax({
				type: "POST",
				url: "saveResult",
				data: JSON.stringify(data),
				contentType: "application/json; charset=utf-8",
				success: function(successData){
					alert("successfull");
					$("#successMessage").html(successData);
					$("successMessage").removeClass("hidden");
					$("#errorMessage").addClass("hidden");
					
				},
				error: function(error){
					 $("#errorMessage").html("Error: Record Not Saved");
	            	 $("#errorMessage").removeClass("hidden");
	                 $("#submit").prop("disabled", false);
	                 alert(JSON.stringify(error));
				}
				
				
			});
			// finish sending data using ajax
		}
		
		
	});
	// ending of button click event	
	
});
//ending of jquery



</script>









<form class="form-horizontal">
<fieldset>

<!-- Form Name -->
<legend>For Social</legend>

<div id="successMessage" align="center" class="hidden alert alert-success"></div>
<div id="errorMessage" align="center" class="hidden alert alert-danger"></div>	

<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="">Upload</label>  
  <div class="col-md-4">
  <input id="upload" name="" type="text" placeholder="Enter upload" class="form-control input-md" required="">
    
  </div>
</div>



<!-- Text input-->
<div class="form-group">
  <label class="col-md-4 control-label" for="">Article</label>  
  <div class="col-md-4">
  <textarea class="form-control" id="socialArea" name="socialArea">Add text</textarea>
  </div>
</div>


<!-- Button (Double) -->
<div class="form-group">
  <label class="col-md-4 control-label" for=""></label>
  <div class="col-md-8">
    <button id="addSocial" name="addSocial" class="btn btn-success">Add</button>
    <button id="clear" name="clear" class="btn btn-danger">Clear</button>
  </div>
</div>

</fieldset>
</form>

