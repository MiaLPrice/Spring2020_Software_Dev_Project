<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cocktails-R-Us</title>
        <link href="<c:url value ="css/bootstrap.min.css"/>" rel="stylesheet">
        <link href="<c:url value="css/style.css"/>" rel="stylesheet">
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

<section id="header" class="clearfix">
	<nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for set="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Cocktails-R-Us</title>
        <link href="<c:url value ="css/bootstrap.min.css"/>" rel="stylesheet">
        <link href="<c:url value="css/style.css"/>" rel="stylesheet">
        <link href="css/font-awesome.min.css"  rel="stylesheet" />
        <link href="https://fonts.googleapis.com/css?family=Spirax" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Cabin+Sketch|Londrina+Outline" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Cabin+Sketch|Londrina+Outline|Yanone+Kaffeesatz" rel="stylesheet"> 
        <link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
        <script src="<c:url value="js/jquery-2.1.1.min.js"/>"></script>
        <script src="<c:url value="js/bootstrap.min.js"/>"></script>better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="${pageContext.request.contextPath}/">Cocktails-R-Us</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a class="tag_menu active_tab" href="${pageContext.request.contextPath}/">HOME</a></li>                     
                    <li><a class="tag_menu" href="productList">Full Menu</a></li>					                    
                    <li><a class="tag_menu" href="userInfo">My Account Info</a></li>
                    <li><a class="tag_menu" href="login">Login</a></li>					
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a class="tag_menu" href="${pageContext.request.contextPath}/cart">CART<i class="fa fa-shopping-basket"></i></a></li>
                </ul>
            </div>
        </div>
    </nav>
</section>
