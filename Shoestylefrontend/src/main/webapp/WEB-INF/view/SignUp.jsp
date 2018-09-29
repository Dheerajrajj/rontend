<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="spring" %>
  


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-2.1.3.min.js"></script>
    

<style>
body {
     background: url('resources/images/shoe-background-hd-1280x854-81842.jpg') fixed;
    background-size: cover;
}

*[role="form"] {
    max-width: 530px;
    padding: 15px;
    margin: 0 auto;
    border-radius: 0.3em;
    background-color: #f2f2f2;
}

*[role="form"] h2 { 
    font-family: 'Open Sans' , sans-serif;
    font-size: 40px;
    font-weight: 600;
    color: #000000;
    margin-top: 5%;
    text-align: center;
    text-transform: uppercase;
    letter-spacing: 4px;
}

</style>
</head>
<body>
<br>
<br>
<br>
<div class="container">
            <spring:form id="SIgnUp" action="${pageContext.request.contextPath}/addCustomer" modelAttribute="custObj" method="post" class="form-horizontal" role="form">
            
                <h2 text>Register</h2>
                
                <br><br>
                <div class="form-group">
                    <label for="customerName" class="col-sm-3 control-label">Customer Name:</label>
                    <div class="col-sm-9">
                        <spring:input type="text" id="firstName" placeholder="Customer Name" class="form-control" path="customerName" />
                    </div>
                </div>
                
                <br>
                  <div class="form-group">
                    <label for="address" class="col-sm-3 control-label">Email:</label>
                    <div class="col-sm-9">
                        <spring:input type="text" id="Email" placeholder="Email" class="form-control" path="emailId" />
                    </div>
                </div>
                <br>
                
                 <div class="form-group">
                    <label for="mobileNo" class="col-sm-3 control-label">Mobile No.:</label>
                    <div class="col-sm-9">
                        <spring:input type="text" id="firstName" placeholder="Mobile Number" class="form-control" path="contactNo" />
                    </div>
                </div>
                <br>
                
                 <div class="form-group">
                    <label for="DOB" class="col-sm-3 control-label">DOB:</label>
                    <div class="col-sm-9">
                        <spring:input type="text" id="DOB" placeholder="DD/MM/YYYY" class="form-control" path="dob" />
                    </div>
                </div>
                <br>
             
              <div class="form-group">
                    <label for="lastName" class="col-sm-3 control-label">Password:</label>
                    <div class="col-sm-9">
                        <spring:input type="text" id="Password" placeholder="Enter Password" class="form-control" path="password" />
                    </div>
                                </div>
                <br>
                 <div class="form-group">
                    <label for="address" class="col-sm-3 control-label">Address:</label>
                    <div class="col-sm-9">
                        <spring:input type="text" id="firstName" placeholder="Address" class="form-control" path="address" />
                    </div>
                </div>
                <br>
                <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>
                
                <button type="submit" class="btn btn-primary btn-block">Sign Up</button>
            </spring:form> 
        </div> 

</body>
</html>