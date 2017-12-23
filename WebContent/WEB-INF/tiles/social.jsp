<script type="text/javascript">

$(document).ready(function(){
	
	
function viewData(){
		
		$.post("showEmployeeList", function(data){
			
			var dataTable = '<table class="table"><tr><th>ID</th><th>Name</th><th>Address</th></tr>';
			
			for(var key in data){
				dataTable += '<tr><td>' + data[key].id + '</td><td>' + data[key].social + '</td><td>' + data[key].soialArea + '</td></tr>';
			}
			
			dataTable += '</table>';
			
			$("#divDataTable").html(dataTable);
		})
	}
})


</script>





<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
  </style>
</head>
<body>

  
<div class="container text-center">    
  <div class="row">
    <div class="col-sm-3 well">
      <div class="well">
        <p><a href="#">My Profile</a></p>
        <img src="bird.jpg" class="img-circle" height="65" width="65" alt="Avatar">
      </div>
     
      
    </div>
    <div class="col-sm-7">
    
      <div class="row">
        <div class="col-sm-12">
          <div class="panel panel-default text-left">
            <div class="panel-body">
              <p contenteditable="true"> <p>Just Forgot that I had to mention something about
			  someone to someone about how I forgot something, but now I forgot it. Ahh, forget
			  it! Or wait. I remember.... no I don't.</p>
                </p>
              <button type="button" class="btn btn-default btn-sm">
                <span class="glyphicon glyphicon-thumbs-up"></span> Like
              </button>     
            </div>
          </div>
		  
		  <div class="panel panel-default text-left">
            <div class="panel-body">
              <p contenteditable="true"> <p>Just Forgot that I had to mention something about
			  someone to someone about how I forgot something, but now I forgot it. Ahh, forget
			  it! Or wait. I remember.... no I don't.</p>
                </p>
              <button type="button" class="btn btn-default btn-sm">
                <span class="glyphicon glyphicon-thumbs-up"></span> Like
              </button>     
            </div>
          </div>
		  
		  
		  
		  <div class="panel panel-default text-left">
            <div class="panel-body">
              <p contenteditable="true"> <p>Just Forgot that I had to mention something about
			  someone to someone about how I forgot something, but now I forgot it. Ahh, forget
			  it! Or wait. I remember.... no I don't.</p>
                </p>
              <button type="button" class="btn btn-default btn-sm">
                <span class="glyphicon glyphicon-thumbs-up"></span> Like
              </button>     
            </div>
          </div>
		  
		  
		  <div class="panel panel-default text-left">
            <div class="panel-body">
              <p contenteditable="true"> <p>Just Forgot that I had to mention something about
			  someone to someone about how I forgot something, but now I forgot it. Ahh, forget
			  it! Or wait. I remember.... no I don't.</p>
                </p>
              <button type="button" class="btn btn-default btn-sm">
                <span class="glyphicon glyphicon-thumbs-up"></span> Like
              </button>     
            </div>
          </div>
		  
		  
		  
		  <div class="panel panel-default text-left">
            <div class="panel-body">
              <p contenteditable="true"> <p>Just Forgot that I had to mention something about
			  someone to someone about how I forgot something, but now I forgot it. Ahh, forget
			  it! Or wait. I remember.... no I don't.</p>
                </p>
              <button type="button" class="btn btn-default btn-sm">
                <span class="glyphicon glyphicon-thumbs-up"></span> Like
              </button>     
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="col-sm-2 well">
         
      
    </div>
  </div>
</div>



</body>
</html>
