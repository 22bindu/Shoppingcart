<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>Account Info</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  	<link rel="stylesheet" type="text/css" href="styles.css"> 
  	<style>
body, html {
    height: 100%;
}

	.btn-primary {
    color: #fff;
    background-color: #5f5f5f;
    border-color: #5f5f5f;
}
.parallax {
    /* The image used */
    background-image: url('http://65.media.tumblr.com/0e30c9a728de998f6c9aa2e36de34886/tumblr_inline_o7vdw8g9qh1ty1exq_1280.jpg');

    /* Full height */
    height:60%;

    /* Create the parallax scrolling effect */
    background-attachment: fixed;
    background-position: auto;
    background-repeat: no-repeat;
    background-size: cover;
}
</style>
</head>
<body data-spy="scroll" data-target="#myScrollspy" data-offset="20">
 
 
    <jsp:include page="_header.jsp" />
    <jsp:include page="_menu.jsp" />

 <div class="page-title">Account Info</div>
  
<div class="parallax"></div>

<div style="height:100px;background-color:#ccc;font-size:20px">
  <div class="container-fluid" style="background-color:#ddd;color: #5f5f5f;">
     <ul>
            <li>User Name: ${pageContext.request.userPrincipal.name}</li>
            <li><c:forEach items="${userDetails.authorities}" var="auth">
                        <li>${auth.authority }</li>
                    </c:forEach>
                
            </li>
        </ul>
        
</div>

</div>

<div class="parallax">
      <div class="container">
  <h2>Change password</h2>
  <form>
   <div class="form-group">
      <label for="pwd">Old Password:</label>
      <input type="password" id="pwd" placeholder="Old password">
    </div>
    <div class="form-group">
      <label for="pwd">New Password:</label>
      <input type="password"  id="pwd" placeholder="Newpassword">
    </div>
    
    <button type="submit" class="btn btn-primary">Save changes</button>
  </form>
</div></div>

<hr class="featurette-divider">
<jsp:include page="_footer.jsp" />

 
</body>
</html>