<%@ page
	import="com.dyuproject.openid.OpenIdUser,com.dyuproject.openid.RelyingParty,com.dyuproject.openid.ext.AxSchemaExtension,java.util.Map"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	String email = null;

	OpenIdUser user = (OpenIdUser) request
			.getAttribute(OpenIdUser.ATTR_NAME);

	if (user != null) {

		Map<String, String> axschema = AxSchemaExtension.get(user);
		
		System.out.println(axschema);
		
		email = axschema.get("email");
	}
%>

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
					
					<li><a href="logout.bi">Logout <%= email %></a></li>
					
				</ul>
			</div>
			<!--/.nav-collapse -->
		</div>
	</div>
</div>