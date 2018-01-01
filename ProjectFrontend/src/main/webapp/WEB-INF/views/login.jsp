<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>REGISTER</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <jsp:include page="header.jsp"></jsp:include>
</head>
<body>
<h2><center>LOGIN</center></h2>
<br>
<div class="container">
 <!--  <h3>Input Groups</h3>
  <p>The .input-group class is a container to enhance an input by adding an icon, text or a button in front or behind it as a "help text".</p>
  <p>The .input-group-addon class attaches an icon or help text next to the input field.</p>
   -->
  <form action="${pageContext.request.contextPath}/login" method="post">
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
      <input id="email" type="text" class="form-control" name="email" placeholder="Email">
    </div>
    <div class="input-group">
      <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
      <input id="password" type="password" class="form-control" name="password" placeholder="Password">
    </div>
    <br>
    <button id="buttons" type="submit" class="btn btn-block">Login
            <span class="glyphicon glyphicon-ok"></span>
          </button>
       </form>
      </div>
      <br>
      <div class="input-group">
        <button type="submit" class="btn btn-danger btn-default pull-left" ">
          <span class="glyphicon glyphicon-remove"></span>CANCEL 
        </button>
        
        <br>
       
        <p>Need <a href="#">help?</a></p>
      </div>
    </div>
  </div>
</div>
  </form>
  <br>


<div  style=width:100%;height:2px;margin-top:150px;background:black;></div>
 
</body>
<jsp:include page="footer.jsp"></jsp:include>

</html>


