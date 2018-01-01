<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<footer>
    <div class="footer" id="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-2  col-md-1 col-sm-2 col-xs-3">
                    <h3 class="footer-heading"> Quick Links </h3>
                    <ul>
                        <li> <a href="pqeg.html"> Products </a> </li>
                       <!--  <li> <a href="services.html"> Services </a> </li> -->
                        <!-- <li> <a href="About.html"> About </a> </li> -->
                        <li> <a href="Contactus.html"> Contact Us </a> </li>
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3 class="footer-heading"> Join Us </h3>
                    <ul>
                        <li> <a href="https://plus.google.com/u/0/112488040573670106825"> Google + </a> </li>
                        <li> <a href="https://www.facebook.com/foretec"> Facebook </a> </li>
                        <li> <a href="https://twitter.com/foretec"> Twitter </a> </li>
                        <!-- <li> <a href="https://in.pinterest.com/"> Pinterest </a> </li> -->
                    </ul>
                </div>
                <div class="col-lg-2  col-md-2 col-sm-4 col-xs-6">
                    <h3> Florist Charm </h3>
                    <ul>
                         <li><a href="${pageContext.request.contextPath}/PrivacyPolicy">PRIVACY POLICY</a></li>

                        <li> <a href="cookie.html"> Cookie Statement </a> </li>
                        <li> <a href="disclaimer.html"> Disclaimer </a> </li>
						<li> <a href="termsandconditions.html"> Terms & Conditions </a> </li>
                    </ul>
                </div>
                <div class="col-lg-3  col-lg-3 col-md-6 col-sm-6 ">
                    <h3 class="footer-heading"> Feedback </h3>
                    <ul>
                        <li>
                            <div class="input-append newsletter-box text-center">
                                <input type="text" class="full text-center" placeholder="Enter your comment ">
                                <button id="buttons" class="btn  bg-gray" type="button" onclick="myFunction()"> Send <i class="fa fa-long-arrow-right"> </i> </button>
                                <div id="snackbar">Thank You for your Feedback.!</div>
								<script>
								function myFunction() {
									var x = document.getElementById("snackbar")
									x.className = "show";
									setTimeout(function(){ x.className = x.className.replace("show", ""); }, 3000);
								}
								</script>
							</div>
                        </li>
                    </ul>
                    
                </div>
            </div>
            <!--/.row--> 
        </div>
        <!--/.container--> 
    </div>
    <!--/.footer-->
   
    <div class="footer-bottom">
        <div class="container">
            <p class="pull-left" style="color:black"> Copyright © Florist Charm 2017. All right reserved. </p>
            <div class="pull-right">
                <ul class="nav nav-pills payments">
                    <li><i class="fa fa-cc-visa"></i></li>
                    <li><i class="fa fa-cc-mastercard"></i></li>
                    <li><i class="fa fa-cc-amex"></i></li>
                    <li><i class="fa fa-cc-paypal"></i></li>
                </ul> 
            </div>
        </div>
    </div>
    <!--/.footer-bottom--> 
</footer>
</body>
</html>
