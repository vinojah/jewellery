<%-- 
    Document   : orderssss
    Created on : Dec 3, 2018, 5:13:24 AM
    Author     : Opshanka Prabath
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!Doctype html>
<html>
    <head>
        <title>Rings</title>
        <meta name="description" content="website description" />
        <meta name="keywords" content="website keywords, website keywords" />
        <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
        <link rel="stylesheet" type="text/css" href="style/style.css" />
         <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css" />
       
    </head>
    <body>
        <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_color-->
          <h1><a href="index.html">Dadigama<span class="logo_colour"> Jewellary</span></a></h1>
          <h2>...Great Goldsmiths...</h2>
        </div>
      </div>
      </div>


      <!--***************************************NAVIGATION****************************************************-->
      <div id="mainav" class="clear"> 
        <ul class="clear">
          <li class="active"><a href="index.jsp">Home</a></li>
          <li><a href="logout.html">Logout</a></li>
          <li><a class="drop" href="category">Jewellary</a>
            <ul>
              <li><a href="necklace.jsp">Neclaces</a></li>
              <li><a href="rings.jsp">Rings</a></li>
              <li><a href="jewellary/Braselet.html">Braselets</a></li>
              <li><a href="jewellary/earring.html">Earrings</a></li>
              <li><a href="jewellary/weddingitems.html">Wedding Items</a></li>
            </ul>
          </li>
          <li><a href="about">About Us</a></li>
          <li><a href="contact">Contact Informations</a></li>
        </ul>
      </div>
    
             
     <!--****************************************************CONTENT*****************************************************-->     
  
    
  </div>
</div>
   <section class="gallery-block grid-gallery">
            <div class="fluid">
                <div class="heading">
                    <h2 style="padding-left:50%">Rings</h2>
                </div>
                <div class="row">
                    <div class="col-md-6 col-lg-4 item">
                        <a href="orderDetails.jsp?id=7">
                            <img  class="img-fluid image " src="Rings/7.JPG">
                        </a>
                    </div>
                    <div class="col-md-6 col-lg-4 item">
                        <a href="orderDetails.jsp?id=8">
                            <img class="img-fluid image" src="Rings/8.jpg">
                        </a>
                    </div>
                    <div class="col-md-6 col-lg-4 item">
                        <a href="orderDetails.jsp?id=9">
                            <img class="img-fluid image" src="Rings/9.jpg">
                        </a>
                    </div>
                    <div class="col-md-6 col-lg-4 item">
                        <a href="orderDetails.jsp?id=10">
                            <img class="img-fluid image" src="Rings/10.JPG">
                        </a>
                    </div>
                    <div class="col-md-6 col-lg-4 item">
                        <a href="orderDetails.jsp?id=11">
                            <img class="img-fluid image" src="Rings/11.JPG">
                        </a>
                    </div>
                    <div class="col-md-6 col-lg-4 item">
                        <a href="orderDetails.jsp?id=12">
                            <img class="img-fluid image" src="Rings/12.jpg">
                        </a>
                    </div>
        
                    
                </div>
            </div>
        </section>     

     
     
     
    <!--********************************************************FOOTER*************************************************-->
    <div id="footer">
      <div class = "col-12">
        <div class="social col-3">
            <h3>Social media</h3>
            <ul>
              <a href="#"><span class="fb"></span>Facebook</a>
            </ul>
          </div>   
           
        <div class="contact col-3">
            <h3>Contact Us</h3>
            <p>Dadigama Jewelry <br> 54 Main Street <br>Badulla <br> SriLanka </p>
        </div>
        <div class="contact col-3">
          <h3>  </h3>
         <p><span class="email"> </span><a href="email">contact@dadigamajewelry.com</a></p>
            <p><span class="phone"></span> 055 223 4348</p>
        </div>
          
        
        <div class="copy col-3">  
         <h3> </h3>
        <p> Copyright 2018 Jewelry. All rights reserved. <p> </div>
        </div>
    
  </div>
    </body>
</html>
