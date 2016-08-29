<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 
<title>Shopping Cart Finalize</title>
 
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
 
    <div class="page-title">Finalize</div>
    
    <div class="container">
        <h3>Thank you for Order</h3>
        Your order number is: ${lastOrderedCart.orderNum}
    </div>
 
   
 <hr class="featurette-divider">
<jsp:include page="_footer.jsp" />
</body>
</html>