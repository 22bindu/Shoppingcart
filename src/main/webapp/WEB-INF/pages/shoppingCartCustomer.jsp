<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
 
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 
<title>Enter Customer Information</title>
 
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	<link rel="stylesheet" type="text/css" href="styles.css"> 
 <script>

 $(function () {
     $( '#table' ).searchable({
         striped: true,
         oddRow: { 'background-color': '#f5f5f5' },
         evenRow: { 'background-color': '#fff' },
         searchType: 'fuzzy'
     });
     
     $( '#searchable-container' ).searchable({
         searchField: '#container-search',
         selector: '.row',
         childSelector: '.col-xs-4',
         show: function( elem ) {
             elem.slideDown(100);
         },
         hide: function( elem ) {
             elem.slideUp( 100 );
         }
     })
 });
 
 
 </script>
</head>
<body>
<jsp:include page="_header.jsp" />
<jsp:include page="_menu.jsp" />
 
<div class="page-title">Enter Customer Information</div>
 
    <form:form method="POST" modelAttribute="customerForm"
        action="${pageContext.request.contextPath}/shoppingCartCustomer">
 
        <table class="table table-striped">
            <tr>
                <td>Name *</td>
                <td><form:input path="name" /></td>
                <td><form:errors path="name" class="error-message" /></td>
            </tr>
 
            <tr>
                <td>Email *</td>
                <td><form:input path="email" /></td>
                <td><form:errors path="email" class="error-message" /></td>
            </tr>
 
            <tr>
                <td>Phone *</td>
                <td><form:input path="phone" /></td>
                <td><form:errors path="phone" class="error-message" /></td>
            </tr>
 
            <tr>
                <td>Address *</td>
                <td><form:input path="address" /></td>
                <td><form:errors path="address" class="error-message" /></td>
            </tr>
 
            <tr>
                <td>&nbsp;</td>
                <td><input type="submit"  class="btn btn-primary btn-md" value="Submit" /> <input type="reset"
                   class="btn btn-warning" value="Reset" /></td>
            </tr>
        </table>
 
    </form:form>
 
 <hr class="featurette-divider">
<jsp:include page="_footer.jsp" />
   
 
 
</body>
</html>