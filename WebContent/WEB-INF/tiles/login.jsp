<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<style>


</style>

<script type="text/javascript">

	$(document).ready(function() {
		$(username).focus();
	});
	
</script>

<div class="container" align="center" style="text-align: center; ">
<div align="center" class="col-md-6 col-md-offset-3" style=" border: 1px solid #999999; margin-top:100px;  width: 60%; height: 50%; min-width: 250px; max-width: 400px; ">
	<form name="f" class="form-horizontal"
		action="${pageContext.request.contextPath}/login"
		method="post">
		<fieldset>

			<!-- Form Name -->
			<legend>Login</legend>

			<!-- Text input-->
			
			<div class="form-group">
			  <label class="col-md-2 control-label" for="prependedtext"></label>
			  <div class="col-md-2">
			    <div class="input-group">
			      <span class="input-group-addon"><img src="<c:url value='/static/images/User_Avatar-512.png' />" alt="Smiley face" height="16" width="16"></span>
			      <input id="username" name="username" class="form-control" placeholder="Enter Username" type="text" style="width: 180px;">
			    </div>
			  </div>
			</div>

			<!-- Password input-->
			
			<div class="form-group">
			  <label class="col-md-2 control-label" for="prependedtext"></label>
			  <div class="col-md-2">
			    <div class="input-group">
			      <span class="input-group-addon"><img src="<c:url value='/static/images/lock_icon.png' />" alt="Smiley face" height="16" width="16"></span>
			      <input id="password" name="password" class="form-control" placeholder="Enter Password" type="password" style="width: 180px;">
			    </div>
			  </div>
			</div>
			
			
			<div class="alert-danger">
				<c:if test="${param.error != null}">
					Incorrect Username or Password provided
				</c:if>
				
			</div>

							
			<!-- Button -->
			<div class="form-group">
			  <label class="col-md-2 control-label" for="singlebutton"></label>
			  <div class="col-md-2">
			    <input id="submit" name="submit" class="btn btn-primary" value="Login" type="submit" style="width: 220px; margin-top: 5px;">
			  </div>
			</div>

		</fieldset>
	</form>
	
	<!--p><a href="<c:url value='/newaccount' />">Create new account</a></p-->

</div>
</div>
