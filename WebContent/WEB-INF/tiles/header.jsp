    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
    
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#"><img src="<c:url value='/static/images/diulogo.png' />" style="margin-top: -4px;"  height="33" width="120"></a>
        </div>
        <div id="navbar" class="collapse navbar-collapse">
          <ul class="nav navbar-nav navbar-right">
          	<sec:authorize access="isAuthenticated()">
            	<li class="active"><a href="${pageContext.request.contextPath}">Home</a></li>
            
            
	                <li><a href="${pageContext.request.contextPath}/news">News</a></li>
	                <li><a href="${pageContext.request.contextPath}/video">Video</a></li>
	                <li><a href="${pageContext.request.contextPath}/style">Style</a></li>
	                <li><a href="${pageContext.request.contextPath}/health">Health</a></li>
	                <li><a href="${pageContext.request.contextPath}/food">Food</a></li>
	                <li><a href="${pageContext.request.contextPath}/blog">Blog</a></li>
	                <li><a href="${pageContext.request.contextPath}/social">Social</a></li>
	                
            
            
            
            
            	<li><a href="#contact">Contact</a></li>
            
	            <li class="dropdown">
	              <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="true">Configuration <span class="caret"></span></a>
	              <ul class="dropdown-menu">
	              	<li class="dropdown-header">Entry Forms</li>
	                <li><a href="${pageContext.request.contextPath}/welcome">Show welcome page</a></li>
	                <li><a href="${pageContext.request.contextPath}/employee">Employee Info</a></li>
	                <li><a href="${pageContext.request.contextPath}/registration">Registration Info</a></li>
	                <li><a href="${pageContext.request.contextPath}/studentresult">Student Result</a></li>
	                <li><a href="${pageContext.request.contextPath}/showresult">Show Result</a></li>
	                <li><a href="${pageContext.request.contextPath}/accgroup">Acc Group</a></li>
	                
	                <li><a href="${pageContext.request.contextPath}/balance">Show Balance</a></li>
	                <li><a href="${pageContext.request.contextPath}/obbalance">OPENING BALANCE</a></li>
	                
	                <li><a href="${pageContext.request.contextPath}/student">student</a></li>
	                
	                
	                <li role="separator" class="divider"></li>
	                <li class="dropdown-header">Reports</li>
	                
	              </ul>
	            </li>
            </sec:authorize>
            <sec:authorize access="!isAuthenticated()">
					<li>
						<a href="<c:url value='/login' />">Log in</a>
					</li>
				</sec:authorize>
				<sec:authorize access="isAuthenticated()">
					<li>
						<a href="<c:url value='/logout' />">Log out</a>
					</li>
				</sec:authorize>
          </ul>
          
          	<ul class="nav navbar-nav navbar-right">
				
				
			</ul>
			
        </div><!--/.nav-collapse -->
      </div>
    </nav>
