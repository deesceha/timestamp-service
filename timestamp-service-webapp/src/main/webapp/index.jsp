<%@ page contentType="text/html; charset=UTF-8" %>
<%
  response.addHeader("Pragma", "no-cache");
  response.addHeader("Cache-Control", "no-cache");
  response.addHeader("Cache-Control","no-store" );
  response.addDateHeader("Expires", 0);
%>
<html>
  <head>
    <title>Hello World (Dynamic)</title>
    <style type='text/css'>
      .date { font-weight: bold; padding: 10px; font-size: larger; }
    </style>
  </head>
  <body>
 
    <jsp:include page="navigation.jsp" flush="true"></jsp:include>

    <div class="container">

      <!-- Main hero unit for a primary marketing message or call to action -->
      <div class="hero-unit">
        <h1>Against patents! <%= new java.util.Date() %></h1>
        <p>Here we are! Just share and timestamp your ideas!</p>
        <p><a class="btn btn-primary btn-large" href="story1.jsp">Learn more &raquo;</a></p>
      </div>

      <!-- Example row of columns -->
      <div class="row">
        <div class="span4">
          <h2>Story 1</h2>
           <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn" href="story1.bi">View details &raquo;</a></p>
        </div>
        <div class="span4">
          <h2>Story 2</h2>
           <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn" href="story2.bi">View details &raquo;</a></p>
       </div>
        <div class="span4">
          <h2>Story 3</h2>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p><a class="btn" href="story3.bi">View details &raquo;</a></p>
        </div>
      </div>

      <hr>

     <jsp:include page="footer.jsp"></jsp:include>

    </div>

  </body>
</html>