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
 <style>
* {
  box-sizing: border-box;
}

#myInput {
  background-image: url('/css/searchicon.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

#myTable {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}
</style>
</head>
<body>
 
    <jsp:include page="_header.jsp" />
    <jsp:include page="_menu.jsp" />
 
    <fmt:setLocale value="en_US" scope="session"/>
    
    <div class="page-title">Order List</div>
 
    <div>Total Order Count: ${paginationResult.totalRecords}</div>
    
    <table class="table table-bordered table table-hover" >
        <tr>
            <th>Order Num</th>
            <th>Order Date</th>
            <th>Customer Name</th>
            <th>Customer Address</th>
            <th>Customer Email</th>
            <th>Amount</th>
            <th>View</th>
        </tr>
        <c:forEach items="${paginationResult.list}" var="orderInfo">
            <tr>
                <td>${orderInfo.orderNum}</td>
                <td>
                   <fmt:formatDate value="${orderInfo.orderDate}" pattern="dd-MM-yyyy HH:mm"/>
                </td>
                <td>${orderInfo.customerName}</td>
                <td>${orderInfo.customerAddress}</td>
                <td>${orderInfo.customerEmail}</td>
                <td style="color:red;">
                   <fmt:formatNumber value="${orderInfo.amount}" currencySymbol="Rs." type="currency"/>
                </td>
                <td><a href="${pageContext.request.contextPath}/order?orderId=${orderInfo.id}">
                   View</a></td>
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
 
 <script>
function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[0];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }
  }
}
</script>
 <hr class="featurette-divider">
<jsp:include page="_footer.jsp" />
 

 
</body>
</html>