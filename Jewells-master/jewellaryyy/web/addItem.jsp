<%-- 
    Document   : addItem
    Created on : 22-Nov-2018, 14:28:29
    Author     : Kopiga
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
                    String iname = request.getParameter("itemName");
                    String itype = request.getParameter("itemType");
                    String material = request.getParameter("material");
                    float weight = Float.parseFloat(request.getParameter("weight"));
                    float price = Float.parseFloat(request.getParameter("price"));
                    
                    
                    try {
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jewellary", "root", "");
                        Statement stmt = con.createStatement();
                        String query = "INSERT INTO item_details (item_name,item_type,material,weight,price) VALUES ('"+iname+"', '"+itype+"', '"+material+"','"+weight+"', '"+price+"')";
                        int n = stmt.executeUpdate(query);
                        if (n!=0){
                            out.println("<h4>Add Item details Successfull... </h4>");
                        }else{
                            out.println("<h4>Error while adding the user.</h4>");
                        }
                        stmt.close();
                        con.close();
                        
                    } catch (Exception e) {
                        out.println(e.getMessage());
                    }
                %>
    </body>
</html>
