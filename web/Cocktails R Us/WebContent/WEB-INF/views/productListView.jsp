<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c'%>  
<!DOCTYPE html>
<html>
 <head>
    <meta charset="UTF-8">
    <title>Product List</title>
 </head>
 <body>
 
    <jsp:include page="_header.jsp"></jsp:include>
 
    <h1 style="text-align:center">Full Menu</h1>
 
    <table border="1" cellpadding="5" cellspacing="1" width=80% style="margin-left:auto;margin-right:auto;font-size:20px" >
       <tr>
          <th>Name</th>
          <th>Price</th>
          <th>Description</th>
          <th>Category</th>
          <th>Picture</th>
          <th>Add to Cart</th>      
       </tr>
       <c:forEach items="${productList}" var="product" >
          <tr>
             <td>${product.name}</td>
             <td>${product.price}</td>
             <td maxwidth="400px">${product.description}</td>
             <td>${product.category.name}</td>
	     <td><img src="${product.img}" height="70" width="70"></td>
             <td>
                <a href="addToCart?code=${product.id}">Add to cart</a>
             </td>             
          </tr>
       </c:forEach>
    </table>
 
    <a href="createProduct" >Create Product</a>
 
    <jsp:include page="_footer.jsp"></jsp:include>
 
 </body>
</html>
