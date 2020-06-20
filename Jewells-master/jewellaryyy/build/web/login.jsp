<%-- 
    Document   : login
    Created on : Dec 1, 2018, 12:38:50 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
  <title>Dadigama Jewellary-Login</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="style/style.css" />
</head>
<!--*********************************************HEADER**********************************************************-->
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
          <li><a class="drop" href="category">Jewellary</a>
            <ul>
              <li><a href="jewellary/Neclace.html">Neclaces</a></li>
              <li><a href="jewellary/ring.html">Rings</a></li>
              <li><a href="jewellary/Braselet.html">Braselets</a></li>
              <li><a href="jewellary/earring.html">Earrings</a></li>
              <li><a href="jewellary/weddingitems.html">Wedding Items</a></li>
            </ul>
          </li>
          <li><a href="about">About Us</a></li>
          <li><a href="contact">Contact Informations</a></li>
          <li><a href="category.jsp">Search Your Selection</a></li>
        </ul>
      </div>
    
             
     <!--****************************************************CONTENT*****************************************************-->     
      <div id="content">
        <%
                    
                    try {
                        String username = request.getParameter("uname");
                        String password = request.getParameter("pwd");
                        
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jewellary", "root", "");
                        Statement stmt = con.createStatement();
                        String query = "SELECT * FROM user WHERE user_name='"+username+"' AND passowrd='"+password+"'";
                        ResultSet rs = stmt.executeQuery(query);
                        if(rs.next()){
                            //String uname = rs.getString("UserName");
                            //out.println(uname);
                          String user_type=rs.getString("user_name");
                           if("admin".equals(user_type)){
                               response.sendRedirect("admin.jsp");
                           }else{
                            session.setAttribute("user_id",rs.getString("user_id"));
                            //response.sendRedirect("necklace.jsp?id="+rs.getString("user_id"));
                           response.sendRedirect("necklace.jsp");
                           }
                        }
                        else{
                            out.println("<h4>Enter correct username and password!!</h4>");
                            //response.sendRedirect("invalied.jsp");
                        }
                        
                    } 
                    catch (Exception e) {
                        out.println(e.getMessage());
                    }
    %>         
     </div>         

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
