<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="styles.css"> 
</head>
<body>
<jsp:include page="_header.jsp" />
 
    <jsp:include page="_menu.jsp" />
      <div class="page-title">FINALIZE</div>
       <div class="container">
       
       <div class="col-md-5">
        <img src="http://www.hdwallpapersin.com/files/submissions/thank_you_baby_305157190.jpg" alt="THANKQ" style="width:400px;height:300px">
    </div>
        <h1>Thank you for Order</h1>
       <h2>
        Your order number is:${lastOrderedCart.orderNum}</h2>
         
    </div>
    <br>
  <form action="payment2"><input type="submit" class="btn btn-success btn-md "value="Back to Shopping"  /></form>
</body>
</html>