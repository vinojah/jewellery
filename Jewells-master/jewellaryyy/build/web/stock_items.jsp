<%-- 
    Document   : stock_items
    Created on : Dec 2, 2018, 3:56:58 PM
    Author     : SAKTHIMICRO SYSTEM
--%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : index
    Created on : Dec 1, 2018, 5:11:36 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Dadigama Jewellary  - Home</title>
        <meta name="description" content="website description" />
        <meta name="keywords" content="website keywords, website keywords" />
        <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
        <link rel="stylesheet" type="text/css" href="style/style.css" />
        <link rel="stylesheet" type="text/css" href="style/formStyle.css" />
       
        
        <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript">
function show1(){
  document.getElementById('form').style.display ='block';
  document.getElementById('viewItem').style.display = 'none'
}
function show2(){
  document.getElementById('viewItem').style.display = 'block';
  document.getElementById('form').style.display ='none';
}
</script>
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
          <li class="active"><a href="${pageContext.request.contextPath}/stock_items.jsp">Stock Items</a></li>
          <li><a href="${pageContext.request.contextPath}/orders.jsp">Orders</a></li>
        </ul>
      </div>
    
      
             
     <!--****************************************************CONTENT*****************************************************-->     
     <div id="data"  >
         <div style="float:left; font-size: 18px;">
        <label><input type="radio" name="selection" value="addItems" onclick="show1();"> Add Items</label><br/>
        <label><input type="radio"  name="selection" value="viewItems" onclick="show2();"> View Items</label>
        
    </div>
         
         
<div class="form-style-2 hide" id="form" >
<div class="form-style-2-heading">Add New Stock Jewellery</div>
<form  method="post" action = "addItem.jsp">
    <label for="field"><span >Jewellery Name </span><input type="text" class="input-field" name="itemName" value="" /></label>
<label for="field"><span>Jewellery Type </span><input type="text" class="input-field" name="itemType" value="" /></label>
<label for="field"><span> Material </span><input type="text" class="input-field" name="material" value="" /></label>
<label for="field"><span>Weight </span><input type="text" class="input-field" name="weight" value="" /></label>
<label for="field"><span>Price </span><input type="text" class="input-field" name="price" value="" /></label>

<label><span> </span><input type="submit" value="Submit" /></label>
</form>
</div>

         
         

        <div id="viewItem" class="view" >
           <table id="customers">
                
  <tr>
    <th>Item_id</th>
    <th>Item Name</th>
    <th>Item_type</th>
    <th>Material</th>
    <th>Weight</th>
    <th>Price</th>
    <th>Update Item</th>
    <th>Delete Item</th>
  </tr>
  
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
String QueryString = "SELECT * from item_details";
rs = statement.executeQuery(QueryString);
while (rs.next()) {
%>
<TR>
<TD><%=rs.getInt(1)%></TD>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>
<TD><%=rs.getString(4)%></TD>
<TD><%=rs.getString(5)%></TD>
<TD><%=rs.getString(6)%></TD>
<TD><a href="update.jsp?item_id=<%=rs.getInt(1)%>" style="color:blue; hover:red;">update</a></TD>
<TD><a href="delete.jsp?item_id=<%=rs.getInt(1)%>">Delete</a></TD>

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

        </div>
  </div>
     </div>
    
  </div>
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

