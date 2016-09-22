<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product List</title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="styles.css">
 
</head>
<body>
 
    <jsp:include page="_header.jsp" />
    <jsp:include page="_menu.jsp" />
     
    <fmt:setLocale value="en_US" scope="session"/>
 
    <div class="page-title">Order Info</div>
 
    <div class="customer-info-container">
        <h3>Customer Information:</h3>
        <ul>
            <li>Name: ${orderInfo.customerName}</li>
            <li>Email: ${orderInfo.customerEmail}</li>
            <li>Phone: ${orderInfo.customerPhone}</li>
            <li>Address: ${orderInfo.customerAddress}</li>
        </ul>
        <h3>Order Summary:</h3>
        <ul>
            <li>Total:
            <span class="total">
            <fmt:formatNumber value="${orderInfo.amount}" currencySymbol="Rs."  type="currency"/>
            </span></li>
        </ul>
    </div>
     
    <br/>
     
    <table class="table table-bordered table table-hover">
        <tr>
            <th>Product Code</th>
            <th>Product Name</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>Amount</th>
        </tr>
        <c:forEach items="${orderInfo.details}" var="orderDetailInfo">
            <tr>
                <td>${orderDetailInfo.productCode}</td>
                <td>${orderDetailInfo.productName}</td>
                <td>${orderDetailInfo.quanity}</td>
                <td>
                 <fmt:formatNumber value="${orderDetailInfo.price}" currencySymbol="Rs."   type="currency"/>
                </td>
                <td>
                 <fmt:formatNumber value="${orderDetailInfo.amount}" currencySymbol="Rs."  type="currency"/>
                </td>  
            </tr>
        </c:forEach>
    </table>
    <c:if test="${paginationResult.totalPages > 1}">
        <div class="page-navigator">
           <c:forEach items="${paginationResult.navigationPages}" var = "page">
               <c:if test="${page != -1 }">
                 <a href="orderList?page=${page}" class="nav-item">${page}</a>
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