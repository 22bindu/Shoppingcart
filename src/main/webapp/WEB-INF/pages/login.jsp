<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 
<title>Login</title>
 
<link rel="stylesheet" type="text/css" href="styles.css">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">

</head>
<body>
 
 
    <jsp:include page="_header.jsp" />
    <jsp:include page="_menu.jsp" />
 
 
 
    <div class="page-title">Login (For USER, MANAGER)</div>
 
    <div class="w3-input w3-animate-input">
 
        <h3  class="./intro" >Enter username and password</h3>
        <br>
        <!-- /login?error=true -->
        <c:if test="${param.error == 'true'}">
            <div style="color: red; margin: 10px 0px;">
 
                Login Failed!!!<br /> Reason :
                ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
 
            </div>
        </c:if>
 
        <form method="POST"
            action="${pageContext.request.contextPath}/j_spring_security_check">
            <table class="table table-hover">
                <tr>
                    <td>User Name *</td>
                    <td><input name="userName" /></td>
                </tr>
 
                <tr>
                    <td>Password *</td>
                    <td ><input  type="password"  name="password" /></td>
                </tr>
 
                <tr >
                    <td>&nbsp;</td>
                    <td><input  type="submit" class="btn btn-primary btn-md" value="Login"  /> 
                    <input type="reset" class="btn btn-warning btn-md" 
                        value="Reset" /></td>
                </tr>
            </table>
        </form>
 
        <span class="error-message">${error }</span>
 
    </div>

</body>
</html>