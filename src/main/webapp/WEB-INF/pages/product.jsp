<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Product</title>
 
<link rel="stylesheet" type="text/css" href="styles.css">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 
</head>
<body>
 
    <jsp:include page="_header.jsp" />
    <jsp:include page="_menu.jsp" />
 
    <div class="page-title">Product</div>
    
    <c:if test="${not empty errorMessage }">
      <div class="error-message">
          ${errorMessage}
      </div>
    </c:if>
 
    <form:form modelAttribute="productForm" method="POST" enctype="multipart/form-data">
        <table style="text-align:left;" class="table table-hover">
            <tr>
                <td>Code *</td>
                <td style="color:red;">
                   <c:if test="${not empty productForm.code}">
                        <form:hidden path="code"/>
                        ${productForm.code}
                   </c:if>
                   <c:if test="${empty productForm.code}">
                        <form:input path="code" />
                        <form:hidden path="newProduct" />
                   </c:if>
                </td>
                <td><form:errors path="code" class="error-message" /></td>
            </tr>
 
            <tr>
                <td>Name *</td>
                <td><form:input path="name" /></td>
                <td><form:errors path="name" class="error-message" /></td>
            </tr>
 
            <tr>
                <td>Price *</td>
                <td><form:input path="price" /></td>
                <td><form:errors path="price" class="error-message" /></td>
            </tr>
            <tr>
                <td>Image</td>
                <td>
                <img src="${pageContext.request.contextPath}/productImage?code=${productForm.code}" width="100"/></td>
                <td> </td>
            </tr>
            <tr>
                <td>Upload Image</td>
                <td><form:input type="file" path="fileData"/></td>
                <td> </td>
            </tr>
  
 
            <tr>
                <td>&nbsp;</td>
                <td><input type="submit" value="Submit" class="btn btn-primary btn-md"/> <input type="reset"
                   class="btn btn-warning btn-md" value="Reset" /></td>
            </tr>
        </table>
    </form:form>
 

 
 
</body>
</html>