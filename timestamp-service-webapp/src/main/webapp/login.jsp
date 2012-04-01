<%@ page
	import="com.dyuproject.openid.OpenIdUser,com.dyuproject.openid.RelyingParty,com.dyuproject.openid.ext.AxSchemaExtension,java.util.Map"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	String userId = null;

	RelyingParty rp = RelyingParty.getInstance();
	
	OpenIdUser user = rp.discover(request);
	
	if (user!=null) {
		response.sendRedirect(request.getContextPath());		
	}
	
%>

<html>
<body>
  <div style="color:red;font-size:1.4em">${openid_servlet_filter_msg}</div>
  <p>Login with your <span style="color:orange">openid</span></p>
  <%= user %>
  <form method="POST">
    <input id="openid_identifier" name="openid_identifier" type="text" size=80/>
    <input class="btn" type="submit" value="send"/>
  </form>
</body>
</html>