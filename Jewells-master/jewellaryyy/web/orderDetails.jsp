<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
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
        <title>Order Details</title>
      
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
          <li><a href="login.html">Login</a></li>
          <li><a class="drop" href="order.jsp">Jewellary</a>
            <ul>
              <li><a href="necklace.jsp">Neclaces</a></li>
              <li><a href="rings.jsp">Rings</a></li></li>
              <li><a href="jewellary/earring.html">Earrings</a></li>
              <li><a href="jewellary/weddingitems.html">Wedding Items</a></li>
            </ul>
          </li>
          <li><a href="about">About Us</a></li>
          <li><a href="contact">Contact Informations</a></li>
        </ul>
      </div>
    
        
        
        
        
<div class="fluid">      


    
          
         
            <div class="row">
                <div class="float-left">
                
                </div>
                <div class="col-md-8 float-center">
              
 <span class="border border-dark">
<form method="post" action="order.jsp">
    <%  
      
        String id = request.getParameter("id");
        out.print("Item Id : ");
        out.print(id);
        
        session.getAttribute( "user_id" );
        
        
         
         %>
        
       
            <table id="customers">
                
  
  
  <%
try {

String connectionURL = "jdbc:mysql://localhost:3306/jewellary";
// declare a connection by using Connection interface
Connection connection = null;
/* declare object of Statement interface that is used for executing sql 
statements. */
Statement statement = null;
// declare a resultset that uses as a table for output data from tha table.
ResultSet rs = null;

// Load JBBC driver "com.mysql.jdbc.Driver"
Class.forName("com.mysql.jdbc.Driver").newInstance();
/* Create a connection by using getConnection() method that takes parameters 
of string type connection url, user name and password to connect to database.*/
connection = DriverManager.getConnection(connectionURL, "root", "");
/* createStatement() is used for create statement object that is used for 
sending sql statements to the specified database. */
statement = connection.createStatement();
// sql query to retrieve values from the secified table.
String QueryString = "SELECT * from item_details where item_id='"+id+"'";

rs = statement.executeQuery(QueryString);

while (rs.next()) {
    

%>
<input type="hidden" name="user_id" value="<%=session.getAttribute( "user_id" )%>">
<input type="hidden" name="item_id" value="<%=rs.getInt(1)%>">
<input type="hidden" name="price" value="<%=rs.getInt(6)%>">
<TR>
 <TH> Item Name: </TH>
<TD><%=rs.getString(2)%></TD>
</TR>
<TR>
 <TH> Item Type: </TH>
<TD><%=rs.getString(3)%></TD>
</TR>
<TR>
 <TH> Material: </TH>
<TD><%=rs.getString(4)%></TD>
</TR>
<TR>
 <TH> Weight: </TH>
 <TD><%=rs.getFloat(5)%></TD>
</TR>
<TR>
 <TH> Price: </TH>
<TD><%=rs.getFloat(6)%></TD>
</TR>
<TR>
 <TH> Qty: </TH>
<TD><input type="text" name="qty"></TD>
</TR>
<TR>
 
<TD><input type="submit" value="Order"></TD>
</TR>

<% } %>
<%
// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {
%>
</font>
<font size="+3" color="red"></b>
<%
out.println("Unable to connect to database.");
}
%>

  
</table>   
</form>
</span>

        </div>
<div>    </div>
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
