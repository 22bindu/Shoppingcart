<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 
<title>Shopping Cart</title>
 
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
    
    <fmt:setLocale value="en_US" scope="session"/>
 
    <div class="page-title">My Cart</div>
 
    <c:if test="${empty cartForm or empty cartForm.cartLines}">
        <h2>There is no items in Cart</h2>
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/productList">Show
            Product List</a>
    </c:if>
 
    <c:if test="${not empty cartForm and not empty cartForm.cartLines   }">
        <form:form method="POST" modelAttribute="cartForm" class="cart"
            action="${pageContext.request.contextPath}/shoppingCart">
 
            <c:forEach items="${cartForm.cartLines}" var="cartLineInfo"
                varStatus="varStatus">
                <div class="product-preview-container">
                	<div class="row">
                	<div class="col-md-4">
                   <img class="product-image" 
                            src="${pageContext.request.contextPath}/productImage?code=${cartLineInfo.productInfo.code}" />
                    </div> 
                    <div class="col-md-8"> 
                    <ul>
                        <li>Code: ${cartLineInfo.productInfo.code} <form:hidden
                                path="cartLines[${varStatus.index}].productInfo.code" />
 
                        </li>
                        <li>Name: ${cartLineInfo.productInfo.name}</li>
                        <li>Price: <span class="price">
                        
                          <fmt:formatNumber value="${cartLineInfo.productInfo.price}" currencySymbol="Rs." type="currency"/>
                          
                        </span></li>
                        <li>Quantity: <form:input
                                path="cartLines[${varStatus.index}].quantity" /></li>
                        <li>Subtotal:
                          <span class="subtotal">
                          
                             <fmt:formatNumber value="${cartLineInfo.amount}" currencySymbol="Rs." type="currency"/>
                        
                          </span>
                        </li>
                        <li><a class="btn btn-danger"
                            href="${pageContext.request.contextPath}/shoppingCartRemoveProduct?code=${cartLineInfo.productInfo.code}">
                                Delete </a></li>
                    </ul>
                    </div> 
                </div>
                </div>
            </c:forEach>
            
            <div style="clear: both"></div>
            <input class=" btn btn-primary" type="submit" value="Update Quantity" />
            <a class="btn btn-info"
                href="${pageContext.request.contextPath}/shoppingCartCustomer">Place Order</a>
            <a class="btn btn-success"
                href="${pageContext.request.contextPath}/productList">Continue
               Shopping</a>
        </form:form>
 
 
    </c:if>
 <hr class="featurette-divider">
<jsp:include page="_footer.jsp" />
 
  
 
</body>
</html>