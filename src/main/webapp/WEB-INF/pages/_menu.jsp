<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %> 
<style>
.btn-warning {
    color: #fff;
   background-color: rgba(153, 153, 153, 0.69);
    border-color: #5f5f5f;
}

</style>  
 
<div class="btn-group btn-group-justified"> 

  
   <a class="btn btn-warning" href="${pageContext.request.contextPath}/">Home</a>
   
   <a class="btn btn-warning" href="${pageContext.request.contextPath}/productList">
     MICROMAX Mobiles 
   </a>
   <security:authorize  access="hasAnyRole('ROLE_EMPLOYEE')">
   <a class="btn btn-warning" href="${pageContext.request.contextPath}/shoppingCart">
      My Cart
   </a>
    </security:authorize>
    
   <security:authorize  access="hasAnyRole('ROLE_MANAGER')">
     <a class="btn btn-warning" href="${pageContext.request.contextPath}/orderList">
         Order List
     </a>
    
   </security:authorize>
   
   <security:authorize  access="hasRole('ROLE_MANAGER')">
         <a class="btn btn-warning" href="${pageContext.request.contextPath}/product">
                        Create Product
         </a>
        
   </security:authorize>
   <security:authorize  access="hasAnyRole('ROLE_EMPLOYEE','ROLE_MANAGER')">
   <a class="btn btn-warning" href="${pageContext.request.contextPath}/accountInfo">
      AccountInfo
   </a>
    </security:authorize>
 
   
  </div>
