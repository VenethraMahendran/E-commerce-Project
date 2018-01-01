<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<jsp:include page="header.jsp"></jsp:include>
<title>REGISTER</title>
</head>
<body>
<div class="container" id="wrap">
	  <div class="row">
        <div class="col-md-6 col-md-offset-3">
            <form modelAttributes="user" action="saveRegister" method="post" > 
			<div class="jumbotron"> 
            <legend class="text-center"><center>SIGN UP!</center></legend>
                <br>
                <br>
                <input type="text" name="name" value="" class="form-control input-lg" placeholder="User Name" required autofocus /> 
                <br> 
               
                   <input type="text" name="email" value="" class="form-control input-lg" placeholder="Your Email" required autofocus   />
				    <br>
				    
					 <!-- <input type="number" name="age" value="" class="form-control input-lg" placeholder="Age"  required autofocus />
					 <br> -->
					 <input type="number" name="mobno" value="" class="form-control input-lg" placeholder="Mobile Number"  required autofocus />
                     <br>
                    <input type="password" name="password" value="" class="form-control input-lg" placeholder="Password"  />
                    <br>
                    <input type="text" name="country" value="" class="form-control input-lg" placeholder="Country"  required autofocus  /> 
					<br>
					<input type="text" name="country" value="" class="form-control input-lg" placeholder="Address"  required autofocus  /> 
					<br>
					<div class="row">
					<span class="help-block">By clicking Create my account, you agree to our<a href="terms.html"> Terms</a> and that you have read our <a href="private.html">Data Use Policy,</a> including our <a href="cookie.html">Cookie Use.</a></span>
                    <br>
                    <button class="btn btn-lg btn-primary btn-block signup-btn" type="submit">
                        Create my account</button>
            </div>
            </div>
            </form>          
          </div>
</div> 
</div>           
<div  style=width:100%;height:2px;margin-top:150px;background:black;></div>
 
</body>
<jsp:include page="footer.jsp"></jsp:include>

</html>