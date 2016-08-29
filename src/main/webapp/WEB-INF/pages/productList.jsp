<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
 
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title> 
<link rel="stylesheet" type="text/css" href="styles.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
   <script src="/javascripts/_jquery.js" type="text/javascript"></script>
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
 
    <div class="page-title">Product List</div>
    
 
    <c:forEach items="${paginationProducts.list}" var="prodInfo"   >
        <div class="product-preview-container">
            <ul id="myUL">
                <li><img class="product-image"
                    src="${pageContext.request.contextPath}/productImage?code=${prodInfo.code}" /></li>
                <li>Code: ${prodInfo.code}</li>
                <li>Name: ${prodInfo.name}</li>
                <li>Price: <fmt:formatNumber value="${prodInfo.price}"   currencySymbol="Rs." type="currency"/></li>
                <li><a class="btn btn-primary"
                    href="${pageContext.request.contextPath}/buyProduct?code=${prodInfo.code}">
                        Buy Now</a></li>
                <!-- For Manager edit Product -->
                <security:authorize  access="hasRole('ROLE_MANAGER')">
                  <li><a style="color:red;"
                      href="${pageContext.request.contextPath}/product?code=${prodInfo.code}">
                        Edit Product</a></li>
                </security:authorize>
            </ul>
        </div>
 
    </c:forEach>
    <br/>
    
  
    <c:if test="${paginationProducts.totalPages > 1}">
        <div class="page-navigator">
           <c:forEach items="${paginationProducts.navigationPages}" var = "page">
               <c:if test="${page != -1 }">
                 <a href="productList?page=${page}" class="nav-item">${page}</a>
               </c:if>
               <c:if test="${page == -1 }">
                 <span class="nav-item"> ... </span>
               </c:if>
           </c:forEach>
            
        </div>
    </c:if>
<hr class="featurette-divider">
<jsp:include page="_footer.jsp" />
</body>
</html>