<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 
<title>REGISTER</title>
 
<link rel="stylesheet" type="text/css" href="styles.css">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
<style> 
h1.intro {
    color: blue;
}</style>
</head>
<body>
 
 
    <jsp:include page="_header.jsp" />
    <jsp:include page="_menu.jsp" />
 
 
 
    <div class="page-title">REGISTRATION</div>
 
    <div class="login-container">
 
        <h3  class="./intro" >Enter Details</h3>
        <br>
        <!-- /Register?error=true -->
       
        
 
        <form method="POST"
            action="${pageContext.request.contextPath}/j_spring_security_check">
            <table class="table table-hover">
                <tr>
                    <td>User Name :</td>
                    <td><input name="userName" /></td>
                </tr>
 
                <tr>
                    <td>Password :</td>
                    <td ><input  type="password"  name="password" /></td>
                </tr>
                 <tr>
                    <td>RE-Password : </td>
                    <td ><input  type="password"  name="password" /></td>
                </tr>
               <tr>
                    <td>Email :</td>
                    <td ><input  type="text" name="email"  /></td>
                </tr>
                 <tr>
                    <td>Phone no :</td>
                    <td ><input  type="text"  name="Phone no" /></td>
                </tr>
 
                <tr >
                
                    <td>&nbsp;</td>
                    <td><input type="submit" class="btn btn-primary btn-md" value="Register"  /> 
                    <input type="reset" class="btn btn-warning btn-md" 
                        value="Reset" /></td>
                </tr>
            </table>
        </form>
 
        <span class="error-message">${error }</span>
 
    </div>
 

   
 
</body>
</html>