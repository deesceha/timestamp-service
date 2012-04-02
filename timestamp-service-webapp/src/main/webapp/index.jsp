<%@ page contentType="text/html; charset=UTF-8" %>

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
      <div class="hero-unit2">
        <h2>Protect your XXXX</h2>
	     <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
        <p><a class="btn btn-primary btn-large">Learn more &raquo;</a></p>
      </div>
    </div> <!-- /container -->

    <!-- Timeline Idea Container -->
    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="span4 offset1">
			<h3>Erfindung der Dampfmaschine</h3>
			<ul class="thumbnails">
			  <li class="span2">
			    <a href="#" class="thumbnail">
			      <img src="http://placehold.it/160x120" alt="">
			    </a>
			  </li>
			  <li class="span2">
				<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
			  </li>
			  <li>
			  	<p><a class="btn" href="#">View idea &raquo;</a></p>
			  </li>
			  <li>
				<p><span class="label label-warning">unsigned</span> <span class="label label-success">timestamed</span> <span class="label label-info">5 comments</span></p>
			  </li>
			</ul>
        </div>

        <div class="span4 offset1">
			<h3>Erfindung der Dampfmaschine</h3>
			<ul class="thumbnails">
			  <li class="span2">
			    <a href="#" class="thumbnail">
			      <img src="http://placehold.it/160x120" alt="">
			    </a>
			  </li>
			  <li class="span2">
				<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
			  </li>
			  <li>
			  	<p><a class="btn" href="#">View idea &raquo;</a></p>
			  </li>
			  <li>
				<p><span class="label label-success">signed</span> <span class="label label-success">timestamed</span> <span class="label label-info">5 comments</span></p>
			  </li>
			</ul>
        </div>
      </div>
    </div>

    <!-- timeline with link to specific a year (points to all ideas of this year) -->
    <div class="container">
		<img src="http://placehold.it/1140x20" alt="Timeline">
		<div class="pagination">
		  <ul>
		    <li><a href="#">Prev</a></li>
		    <li><a href="#">1900</a></li>
		    <li><a href="#">1960</a></li>
		    <li><a href="#">1996</a></li>
		    <li><a href="#">1997</a></li>
		    <li><a href="#">1998</a></li>
		    <li><a href="#">1999</a></li>
		    <li><a href="#">2000</a></li>
		    <li><a href="#">2001</a></li>
		    <li><a href="#">2002</a></li>
		    <li><a href="#">2003</a></li>
		    <li><a href="#">2004</a></li>
		    <li class="active"><a href="#">2005</a></li>
		    <li><a href="#">2006</a></li>
		    <li><a href="#">2007</a></li>
		    <li><a href="#">2008</a></li>
		    <li><a href="#">2009</a></li>
		    <li><a href="#">2010</a></li>
		    <li><a href="#">2011</a></li>
		    <li><a href="#">2012</a></li>
		  </ul>
		</div>
    </div> <!-- /container -->

    <!-- Timeline Idea Container -->
    <!--
    <div class="container">
      <div class="row">
        <div class="span4 offset2">
			<h3>Erfindung der Dampfmaschine</h3>
			<ul class="thumbnails">
			  <li class="span2">
			    <a href="#" class="thumbnail">
			      <img src="http://placehold.it/160x120" alt="">
			    </a>
			  </li>
			  <li class="span2">
				<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
			  </li>
			  <li>
			  	<p><a class="btn" href="#">View idea &raquo;</a></p>
			  </li>
			  <li>
				<p><span class="label label-warning">unsigned</span> <span class="label label-success">timestamed</span> <span class="label label-info">5 comments</span></p>
			  </li>
			</ul>
        </div>

        <div class="span4 offset1">
			<h3>Erfindung der Dampfmaschine</h3>
			<ul class="thumbnails">
			  <li class="span2">
			    <a href="#" class="thumbnail">
			      <img src="http://placehold.it/160x120" alt="">
			    </a>
			  </li>
			  <li class="span2">
				<p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
			  </li>
			  <li>
			  	<p><a class="btn" href="#">View idea &raquo;</a></p>
			  </li>
			  <li>
				<p><span class="label label-success">signed</span> <span class="label label-success">timestamed</span> <span class="label label-info">5 comments</span></p>
			  </li>
			</ul>
        </div>
      </div>
    </div>
	-->
	
    <hr>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="span4">
          <h2>How to Preserve your Idea?</h2>
          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
          <p><a class="btn" href="#">View details &raquo;</a></p>
        </div>
        <div class="span4">
          <h2>What are Timestamps?</h2>
           <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
          <p><a class="btn" href="#">View details &raquo;</a></p>
       </div>
        <div class="span4">
	        <h2>What are Digital Signatures?</h2>
            <p>Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus. Etiam porta sem malesuada magna mollis euismod. Donec sed odio dui. </p>
	        <p><a class="btn" href="#">View details &raquo;</a></p>
        </div>
      </div>


    </div> <!-- /container -->

     <jsp:include page="footer.jsp"></jsp:include>

    </div>

  </body>
</html>