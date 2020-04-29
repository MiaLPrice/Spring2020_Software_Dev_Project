<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Login</title>
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
        <link href="css/font-awesome.min.css"  rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Spirax" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Cabin+Sketch|Londrina+Outline" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Cabin+Sketch|Londrina+Outline|Yanone+Kaffeesatz" rel="stylesheet"> 
        <link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
        <script src="<c:url value="js/jquery-2.1.1.min.js"/>"></script>
        <script src="<c:url value="js/bootstrap.min.js"/>"></script>
        <script type="text/javascript" src="js/jquery.aniview.js"></script>
        <script>
            $(document).ready(function () {
                $('.aniview').AniView();
            });
        </script>
   </head>
   <body>
      <jsp:include page="_header.jsp"></jsp:include>
     
      <h3>Login Page</h3>
      <p style="color: red;">${errorString}</p>
 
 
      <form method="POST" action="${pageContext.request.contextPath}/login">
         <table border="0" style="margin-left:auto;margin-right:auto;font-size:20px">
            <tr>
               <td>User Name</td>
               <td><input type="text" name="userName" value= "${user.name}" /> </td>
            </tr>
            <tr>
               <td>Password</td>
               <td><input type="text" name="password" value= "${pass.word}" /> </td>
            </tr>
            <tr>
               <td>Remember me</td>
               <td><input type="checkbox" name="rememberMe" value= "Y" /> </td>
            </tr>
            <tr>
               <td colspan ="2">
                  <input type="submit" value= "Submit" />
                  <a href="${pageContext.request.contextPath}/">Cancel</a>
               </td>
            </tr>
         </table>
      </form>
 
 
      <jsp:include page="_footer.jsp"></jsp:include>
   </body>
</html>