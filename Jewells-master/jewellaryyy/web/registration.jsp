<%-- 
    Document   : registration
    Created on : Dec 1, 2018, 11:28:58 AM
    Author     : u
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
         <title>Dadigama Jewellary Shop</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="style/style.css" />
    </head>
    <body>
         <div id="main">
    <div id="header">
      <div id="logo">
        <div id="logo_text">
          <!-- class="logo_color-->
          <h1><a href="registration.html">Dadigama<span class="logo_colour"> Jewellary</span></a></h1>
          <h2>...Great Goldsmiths...</h2>
        </div>
      </div>
      </div>
              <!--***************************************NAVIGATION****************************************************-->
      <div id="mainav" class="clear"> 
        <ul class="clear">
          <li class="active"><a href="registration.html">Home</a></li>
          <li><a href="login">Login</a></li>
          <li><a class="drop" href="category">Jewellary</a>
            <ul>
              <li><a href="category/Neclace.html">Neclaces</a></li>
              <li><a href="category/ring.html">Rings</a></li>
              <li><a href="category/Braselet.html">Braselets</a></li>
              <li><a href="category/earring.html">Earrings</a></li>
              <li><a href="category/weddingitems.html">Wedding Items</a></li>
            </ul>
          </li>
          <li><a href="about">About Us</a></li>
          <li><a href="contact">Contact Informations</a></li>
          <li><a href="category.jsp">Search Your Selection</a></li>
        </ul>
      </div>
         <div id="content">
        <!-- insert the page content here -->
                 <%
                   String firstName=  request.getParameter("firstName");
                   String lastName=  request.getParameter("lastName");
                   String gender=  request.getParameter("gender");
                   String address=  request.getParameter("address");
                   String Email=  request.getParameter("Email");
                   String user_name=  request.getParameter("user_name");
                   String passowrd=  request.getParameter("passowrd");
                   
           try{
               Class.forName("com.mysql.jdbc.Driver");
               Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jewellary?","root","");
               Statement stmt = con.createStatement();
               
               String query = "insert into user (firstName,lastName,Email,address,user_name,passowrd,gender)values (' "+firstName+" ',' "+lastName+" ',' "+Email+" ',' "+address+" ',' "+user_name+" ',' "+passowrd+" ',' "+gender+" ')";
               
               int a = stmt.executeUpdate(query);
               if(a>0){
               
                  out.println("<h4>Registration Successfull... Now you can login to <a href='login.html'>Dedigama Jewellary Shop</a></h4>");
               }
           
           }catch(Exception e){
           
           
            out.println("<p>Error while registraining the user"+ e.getMessage()+"</p>");
           
           }
                 
                 %>
       
               
                   
        </div>
                  <!--********************************************************FOOTER*************************************************-->
    <div id="footer">
      <div class = "col-12">
        <div class="social col-3">
            <h3>Social media</h3>
            <ul>
              <!--<a href="#4"><span class="fb"></span>Facebook</a>-->
            </ul>
          </div>   
           
        <div class="contact col-3">
            <h3>Contact us</h3>
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
 </div>
    </body>
</html>
