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


	.btn-primary {
    color: #fff;
    background-color: #5f5f5f;
    border-color: #5f5f5f;
}
</style>
</head>
<body>
 
 
    <jsp:include page="_header.jsp" />
    <jsp:include page="_menu.jsp" />

 <div class="page-title">Account Info</div>
  


<div  style="font-size:20px">
  <div class="container-fluid" style="background-color:#ddd;color: #5f5f5f;">
  <div>
     <ul>
            <li>User Name: ${pageContext.request.userPrincipal.name}</li>
            <li><c:forEach items="${userDetails.authorities}" var="auth">
                        <li>${auth.authority }</li>
                    </c:forEach>
                
            </li>
        </ul>
     </div>   
</div>

</div>

<!-- <!-- <div class="parallax">
      <div class="container">
  <h2>Change password</h2>
  <form>
  
    
    
    <button type="submit" class="btn btn-primary"></button>
  </form>
  
</div></div> -->

<div class="container">
  
  <!-- Trigger the modal with a button -->
  <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">Change password</button>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
           <div class="form-group">
           <h3>Change password</h3>
      <label for="pwd">Old Password:</label>
      <input type="password" id="pwd" placeholder="Old password">
    </div> </div>
        <div class="modal-body">
          <div class="form-group">
      <label for="pwd">New Password:</label>
      <input type="password"  id="pwd" placeholder="Newpassword">
    </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-primary" data-dismiss="modal">Save changes</button>
        </div>
      </div>
      
    </div>
  </div>
</div>


<hr class="featurette-divider">
<jsp:include page="_footer.jsp" />

 
</body>
</html>