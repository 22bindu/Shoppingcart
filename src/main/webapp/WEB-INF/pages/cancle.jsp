<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="styles.css"> 
<title>cancle order</title>
</head>
<body>
<jsp:include page="_header.jsp" />
 
    <jsp:include page="_menu.jsp" />
  <div class="col-md-12">
  <h1>Your order has been cancelled</h1>
  <br>
    <img src="https://www.askideas.com/media/08/Sorry-With-Emoticon-Picture.jpg" alt="Moustiers Sainte Marie" style="width:500px;height:300px">
      <br> 
    <br>
     <h3>We'd love you to shop again</h3>
        <form action="payment2"><input type="submit" class="btn btn-success btn-md "value="Back to Shopping"  /></form>
    
    
    </div>
  
</body>
</html>