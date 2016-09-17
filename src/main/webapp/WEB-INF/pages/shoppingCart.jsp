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
    
    <fmt:setLocale value="en_US" scope="session"/>
 
    <div class="page-title">My Cart</div>
 
    <c:if test="${empty cartForm or empty cartForm.cartLines}">
        <h2>There is no items in Cart</h2>
        <a href="${pageContext.request.contextPath}/productList">Show
            Product List</a>
    </c:if>
 
    <c:if test="${not empty cartForm and not empty cartForm.cartLines   }">
        <form:form method="POST" modelAttribute="cartForm"
            action="${pageContext.request.contextPath}/shoppingCart">
 
            <c:forEach items="${cartForm.cartLines}" var="cartLineInfo"
                varStatus="varStatus">
                <div class="product-preview-container">
                    <ul>
                        <li><img class="product-image"
                            src="${pageContext.request.contextPath}/productImage?code=${cartLineInfo.productInfo.code}" />
                        </li>
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
                        <li><a
                            href="${pageContext.request.contextPath}/shoppingCartRemoveProduct?code=${cartLineInfo.productInfo.code}">
                                Delete </a></li>
                    </ul>
                </div>
            </c:forEach>
            <div style="clear: both"></div>
            <input class=" btn btn-primary button-update-sc" type="submit" value="Update Quantity" />
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