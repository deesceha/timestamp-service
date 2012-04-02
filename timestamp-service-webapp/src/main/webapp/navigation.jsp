
<%@ page import="com.dyuproject.openid.OpenIdUser,com.dyuproject.openid.RelyingParty,com.dyuproject.openid.ext.AxSchemaExtension,java.util.Map"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	String userId = null;

	RelyingParty rp = RelyingParty.getInstance();
	
	OpenIdUser user = rp.discover(request);
	
	if (user!=null) {
	
	System.out.println(user.getIdentifier());

	if (user != null) {

		Map<String, String> axschema = AxSchemaExtension.get(user);
		
		if (axschema!=null) {
		
		System.out.println(axschema);
		
		userId = axschema.get("email");		
		}
		
		if (userId==null) 
		{
			userId = user.getIdentity();
		}
		
		request.setAttribute("userId", userId);
		
	}
	
	}
	
	
%>
<%--
<div class="navbar navbar-fixed-top">
	<div class="navbar-inner">
		<div class="container">
			<a class="btn btn-navbar" data-toggle="collapse"
				data-target=".nav-collapse"> <span class="icon-bar"></span> <span
				class="icon-bar"></span> <span class="icon-bar"></span>
			</a> <a class="brand" href="#">BlitzOops</a>
			<div class="nav-collapse">
				<ul class="nav">
					<li class="active"><a href="index.bi">Home</a></li>
					<li><a href="about.bi">About</a></li>
					<li><a href="contact.bi">Contact</a></li>
					<c:choose>
					<c:when test="${not empty userId}">
					<li><a href="logout.bi">Logout <%= userId %></a></li>
					</c:when>
					<c:otherwise>
					<li><a href="openid.bi">Login</a></li>
					</c:otherwise>
					
					</c:choose>
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
</div>
 --%>

    <div class="container">
	  <div class="navbar navbar-fixed-top">
	    <div class="navbar-inner">
	      <div class="container">
	        <a class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>
	          <span class="icon-bar"></span>
	        </a>
	        <a class="brand" href="#">BLiTZiDEA</a>
	        <div class="nav-collapse">
	          <ul class="nav">
	            <li class="active"><a href="index.bi">Home</a></li>
	            <li><a href="#">Discover (great Ideas)</a></li>
	            <li><a href="#">Documentation</a></li>
	            <li><a href="contact.bi">Contact</a></li>
	            <c:choose>
					<c:when test="${not empty userId}">
					<li><a href="logout.bi">Logout <%= userId %></a></li>
					</c:when>
					<c:otherwise>
					<li><a href="openid.bi">Login</a></li>
					</c:otherwise>
					
					</c:choose>
	          </ul>
	          <form class="navbar-search pull-left" action="">
	            <input type="text" class="search-query span2" placeholder="Search Ideas">
	          </form>
	          <ul class="nav pull-right">
	            <li><a href="#">Link</a></li>
	            <li class="divider-vertical"></li>
	            <li class="dropdown">
	              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
	              <ul class="dropdown-menu">
	                <li><a href="#">Action</a></li>
	                <li><a href="#">Another action</a></li>
	                <li><a href="#">Something else here</a></li>
	                <li class="divider"></li>
	                <li><a href="#">Separated link</a></li>
	              </ul>
	            </li>
	          </ul>
	        </div><!-- /.nav-collapse -->
	      </div>
	    </div><!-- /navbar-inner -->
	  </div><!-- /navbar -->
	</div> <!-- /container -->
