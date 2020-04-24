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
    <jsp:include page="_menu.jsp"></jsp:include>
 
    <h3>Product List</h3>
 
    <p style="color: red;">${errorString}</p>
 
    <table border="1" cellpadding="5" cellspacing="1" >
       <tr>
          <th>Name</th>
          <th>Price</th>
          <th>Description</th>
          <th>Category<th>
          <th>Quantity<th>
          <th>Add To Cart</th>
          
          
       </tr>
       <c:forEach items="${productList}" var="product" >
          <tr>
             <td>${product.name}</td>
             <td>${product.price}</td>
             <td>${product.description}</td>
             <td>${product.category.name}</td>
             <td>
             	<select id="quantity">
	 			 <option value="0">0</option>
	 			 <option value="1">1</option>
	 			 <option value="2">2</option>
	  			<option value="3">3</option>
				</select>
             </td>
             <td>
                <a href="editProduct?name=${product.name}">Add to cart</a>
             </td>             
          </tr>
       </c:forEach>
    </table>
 
    <a href="createProduct" >Create Product</a>
 
    <jsp:include page="_footer.jsp"></jsp:include>
 
 </body>
</html>