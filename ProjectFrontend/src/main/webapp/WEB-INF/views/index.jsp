<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
    

<html>
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet">
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="header.jsp"></jsp:include>

<div style="margin-top:50px;" class="container">
 <div class="jumbotron">
  <h3 class="text-center"><b>INDIA'S FLORIST CHARM</b></h3>
  <hr>
  <!--  <div id="myCarousel" class="carousel slide" data-ride="carousel">
<ol class="carousel-indicators">
<li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
<li data-target="#myCarousel2" data-slide-to="1"></li>
<li data-target="#myCarousel3" data-slide-to="2"></li>

</ol>
<div class="carousel-inner" align="center">
<div class="item active">
<img class="img-rounded" class="img-responsive center-block"
src="resources/flow1.jpg" style=height:500px;width:100%>
</div>
<div class="item">
<img class="img-rounded" class="img-responsive center-block"
src="resources/flow2.jpg" style=height:500px;width:100%>
</div>
<div class="item">
<img class="img-rounded" class="img-responsive center-block"
src="resources/flow3.jpg" style=height:500px;width:100%>
</div>
</div>
<a class="left carousel-control" href="#myCarousel" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left"></span>
<span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#myCarousel" data-slide="next">
<span class="glyphicon glyphicon-chevron-right"></span>
<span class="sr-only">Next</span>
</a>
</div>
</div>-->

<div id="myCarousel" class="carousel slide" data-ride="carousel">
<ol class="carousel-indicators">
<li data-target="#myCarousel1" data-slide-to="0" class="active"></li>
<li data-target="#myCarousel2" data-slide-to="1" class="active"></li>
</ol>
<div class="carousel-inner" align="center">
<div class="item active">
<img class="img-rounded" class="img-responsive center-block"
src="resources/Carousel/florist1.jpg" style=height:500px;width:100%>
</div>
<div class="item">
<img class="img-rounded" class="img-responsive center-block"
src="resources/Carousel/florist3.jpg" style=height:500px;width:100%>
</div>
</div>
<a class="left carousel-control" href="#myCarousel" data-slide="prev">
<span class="glyphicon glyphicon-chevron-left"></span>
<span class="sr-only">Previous</span>
</a>
<a class="right carousel-control" href="#myCarousel" data-slide="next">
<span class="glyphicon glyphicon-chevron-right"></span>
<span class="sr-only">Next</span>
</a>
</div>
<h2 class="text-center" style="margin-top:80px;">Testimonial</h2>
<hr>
<div id="myCarousel" class="carousel slide text-center" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
	<h2 class="text-center"><u>Mission </u></h2><br>
    <h4><i>"To Become Market Leader In Providing Products<br><span style="font-style:normal;">And Services With Technological Excellence And Offering Customer <br> Delight By Strict Adherence To Commitments"</i></span></h4>
    </div>
    <div class="item">
      <h2 class="text-center"><u>Vision</u><br></h2><h4><span style="font-style:normal;"> <i>"A World Class ecommerce portal committed to Integrity,Creativity<br> Sustainability, Teamwork, Entrepreneurial approach, Respect, enhancing <br> Variety of Products "</i></span></h4>
    </div>
    <div class="item">
      <h2 class="text-center"><u> Our Values </u></h2><br><h4><span style="font-style:normal;"><i>"Foster Learning, Creativity and Team work Zest for change and Zeal to Excel Ensure<br> speed of Response Maintain an Open and Honest Relationship with all clients
Enhance <br> Loyal Customers base through utmost customer satisfaction Respect for dignity and <br>s Potential of Individuals in our company as well as Customer's place"</i></span></h4>
    </div>
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" ></span>
    <span class="sr-only">Next</span>
  </a>
</div>
</div>
</div>
 <jsp:include page="footer.jsp"></jsp:include>  
</body>

</html>