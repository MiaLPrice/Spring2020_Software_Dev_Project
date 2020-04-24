<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
     <meta charset="UTF-8">
     <title>Home Page</title>
  </head>
  <body>
 
     <jsp:include page="_header.jsp"></jsp:include>
     <jsp:include page="_menu.jsp"></jsp:include>
     
     
     
    
      <h3>Home Page</h3>
      
      This is the Home Page of our SRK Kitchen : Food Delivery System <br><br>
      <b>It includes the following functions:</b>
      <ul>
         <li>Login</li>
         <li>Order Food</li>
         <li>Product List / Menu Options</li>
         <li>Create Product / Add to Cart</li>
         <li>Edit Product / Update Order</li>
         <li>Delete Product / Remove from Cart</li>
         <li> Check Out </li>
      </ul>
 
     <jsp:include page="_footer.jsp"></jsp:include>
 
  </body>
</html>