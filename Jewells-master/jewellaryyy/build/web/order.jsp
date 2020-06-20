<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
        <meta name="description" content="website description" />
        <meta name="keywords" content="website keywords, website keywords" />
        <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
        <link rel="stylesheet" type="text/css" href="style/style.css" />
         <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP Page</title>
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
          <li><a href="login.html">Login</a></li>
          <li><a class="drop" href="">Jewellary</a>
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

    <div id="content">    
        
        <div id="or_style">
    
        
          <%         
        int item_id = Integer.parseInt(request.getParameter("item_id"));
        int user_id = Integer.parseInt(request.getParameter("user_id"));
        int qty = Integer.parseInt(request.getParameter("qty"));
        float price = Integer.parseInt(request.getParameter("price"));
        
        //out.print("Item id: " + item_id+"<br>");
        //out.print("User id: " + user_id+"<br>");
        //out.print("Qty " + qty+"<br>");
        float tot_price = qty * price;

  
                  
                    
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jewellary", "root", "");
                        Statement stmt = con.createStatement();
                        String query = "INSERT INTO orders (item_id,user_id,qty,total_price) VALUES ('"+item_id+"', '"+user_id+"', '"+qty+"', '"+tot_price+"')";
                        int n = stmt.executeUpdate(query);
                        if (n!=0){
                            out.println("<h4>Order the Item  Successfull... </h4>");
                        }else{
                            out.println("<h4>Error while adding the user.</h4>");
                        }
                        
                    } catch (Exception e) {
                        out.println(e.getMessage());
                    }

        %>
        
        </div>
    </div>>
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
