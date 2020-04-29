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
     
 <section id="top" class="clearfix">
 <div class="container">
  <div class="row">
   <div class="top clearfix">
    <div class="col-sm-12 top_main clearfix">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                <ol class="carousel-indicators">
                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                    <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                    <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
                </ol>
                <div class="carousel-inner">
                    <div class="item active">
                        <img src="https://www.thedrinkblog.com/wp-content/uploads/2018/06/french75-1500x1000.jpg" alt="First slide" width="1400" height="350">
                        <div class="carousel-caption">
                            <h3>French 75</h3>
                            <p>French 75 is a cocktail made from gin, Champagne, lemon juice, and sugar. <br>It is also called a 75 Cocktail, or in French simply a Soixante Quinze. </p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="https://food.fnr.sndimg.com/content/dam/images/food/fullset/2008/8/15/1/Margarita.jpg.rend.hgtvcom.826.620.suffix/1371587345876.jpeg" alt="Second slide" width = "1400" height="350">
                        <div class="carousel-caption">
                            <h3>Margarita</h3>
                            <p>A margarita is a cocktail consisting of tequila, orange liqueur, and lime juice <br>often served with salt on the rim of the glass.</p>
                        </div>
                    </div>
                    <div class="item">
                        <img src="https://www.ndtv.com/cooks/images/moscow.jpg" alt="Second slide" width = "1400" height="350">
                        <div class="carousel-caption">
                            <h3>Moscow Mule</h3>
                            <p>A Moscow mule is a cocktail made with vodka, spicy ginger beer, and lime juice,<br> garnished with a slice or wedge of lime.</p>
                        </div>
                    </div>
                </div>
               
            </div>
            <div class="main-text">
                <div class="col-sm-12 top_bottom clearfix">
                    <h1>
                        Have A<br>Drink <br>With Us!</h1>
                    <h3>
                        
                    </h3>
                    <div class="">
                        <a class="btn btn-clear btn-sm btn-min-block" href="productList">shop now</a></div>
                </div>
            </div>
        </div>
   </div>
  </div>
 </div>
</section>    
      
     <jsp:include page="_footer.jsp"></jsp:include>
 
  </body>
</html>