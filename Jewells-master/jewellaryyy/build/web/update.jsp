<%-- 
    Document   : update.jsp
    Created on : Dec 1, 2018, 7:34:25 PM
    Author     : SAKTHIMICRO SYSTEM
--%>


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%

int id = Integer.parseInt(request.getParameter("item_id"));
//out.print(id);

String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/jewellary";
String userid = "root";
String password = "";

Class.forName(driver);

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;

try{
connection = DriverManager.getConnection(connectionUrl, userid, password);
statement=connection.createStatement();
String sql ="select * from item_details where item_id='"+id+"'";
resultSet = statement.executeQuery(sql);

while(resultSet.next()){
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Dadigama Jewellary  - Home</title>
        <meta name="description" content="website description" />
        <meta name="keywords" content="website keywords, website keywords" />
        <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
        <link rel="stylesheet" type="text/css" href="style/style.css" />
        <link rel="stylesheet" type="text/css" href="style/formStyle.css" />
        
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
          <li><a href="index.jsp">Logout</a></li>
          <li><a class="drop" href="category">Jewellary</a>
            <ul>
              <li><a href="jewellary/Neclace.html">Neclaces</a></li>
              <li><a href="jewellary/ring.html">Rings</a></li>
              <li><a href="jewellary/Braselet.html">Braselets</a></li>
              <li><a href="jewellary/earring.html">Earrings</a></li>
              <li><a href="jewellary/weddingitems.html">Wedding Items</a></li>
            </ul>
          </li>
          <li><a href="${pageContext.request.contextPath}/customers.jsp">Customers</a>
            
          </li>
          <li><a href="${pageContext.request.contextPath}/stock_items.jsp">Stock Items</a></li>
          <li><a href="${pageContext.request.contextPath}/orders.jsp">Orders</a></li>
        </ul>
      </div>
    
             
     <!--****************************************************CONTENT*****************************************************-->     
  
    
  </div>
        
        
        
        
        
<h1>Update data from database</h1>

<div id="data">
    

<div class="form-style-2 " id="form">
<form method="post" action="updateprocess.jsp">
<input type="hidden" name="id" value="<%=resultSet.getInt("item_id") %>">
<label for="field"><span>Item Id: </span><input type="text" name="id" class="input-field" value="<%=resultSet.getInt("item_id") %>"></label>
<label for="field"><span>Item Name: </span><input type="text" class="input-field" name="itemName" value="<%=resultSet.getString("Item_Name") %>" /></label>
<label for="field"><span>Item_type: </span><input type="text" class="input-field" name="itemType" value="<%=resultSet.getString("Item_type") %>" /></label>
<label for="field"><span>Material:</span><input type="text" class="input-field" name="material" value="<%=resultSet.getString("Material") %>" /></label>
<label for="field"><span>Weight:</span><input type="text" class="input-field" name="weight" value="<%=resultSet.getFloat("weight") %>" /></label>
<label for="field"><span>Price:</span><input type="text" class="input-field" name="price" value="<%=resultSet.getFloat("price") %>" /></label>

<label><span> </span><input type="submit" value="Submit" /></label>
</form>
</div>

</div>
<%
   
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>

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