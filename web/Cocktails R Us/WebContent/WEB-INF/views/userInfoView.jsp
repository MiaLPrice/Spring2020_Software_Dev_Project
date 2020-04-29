<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>User Info</title>
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
 
    <h3>Hello: ${user.name}</h3>
 
    User Name: <b>${user.name}</b>
    <br />
    Email: ${user.email} <br />
 
    <jsp:include page="_footer.jsp"></jsp:include>
 
 </body>
</html>