<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>
 
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Cart</title>
   </head>
   <body>
    
    <jsp:include page="_header.jsp"></jsp:include>
    
        <h1 style="text-align:center">Here is your order:</h1>
 
    <table border="1" cellpadding="5" cellspacing="1" style="margin-left:auto;margin-right:auto;font-size:20px" >
       <tr>
          <th>Name</th>
          <th>Price</th>
          <th>Quantity</th>
       </tr>
    
    <c:forEach items="${productList}" var="product" >
          <tr>
            <td>${product.product.name}</td>
             <td>${product.product.price}</td>
             <td>${product.cart.quantity}</td>
          </tr>
       </c:forEach>
    </table>
                
    <table style="margin-left:auto;margin-right:auto;font-size:40px">
    
        <tr>
             <td colspan ="1">	 
                  <a href="${pageContext.request.contextPath}/productList">Go Back To Menu</a>
               </td>
    </tr>
    <tr>
               <td colspan ="2">
                  <a href="${pageContext.request.contextPath}/checkout">Proceed To Checkout</a>
               </td>
        </tr>
     </table>
    <jsp:include page="_footer.jsp"></jsp:include>
 
 </body>
</html>
