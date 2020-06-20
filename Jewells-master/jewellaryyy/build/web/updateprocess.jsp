<%-- 
    Document   : updateprocess
    Created on : Dec 1, 2018, 7:49:41 PM
    Author     : SAKTHIMICRO SYSTEM
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%! String driverName = "com.mysql.jdbc.Driver";%>
<%!String url = "jdbc:mysql://localhost:3306/jewellary";%>
<%!String user = "root";%>
<%!String psw = "";%>
<%
int id =Integer.parseInt(request.getParameter("id"));
String item_name=request.getParameter("itemName");
String item_type=request.getParameter("itemType");
String material=request.getParameter("material");
Float weight=Float.parseFloat(request.getParameter("weight"));
Float price=Float.parseFloat(request.getParameter("price"));
if(String.valueOf(id) != null  )
{
Connection con = null;
PreparedStatement ps = null;

try
{
Class.forName(driverName);
con = DriverManager.getConnection(url,user,psw);
String sql="Update item_details set item_id=?,item_name=?,item_type=?,material=?,weight=?,price=?  where item_id='"+id+"'";
ps = con.prepareStatement(sql);
ps.setInt(1,id);
ps.setString(2, item_name);
ps.setString(3, item_type);
ps.setString(4, material);
ps.setFloat(6, weight);
ps.setFloat(5, price);
int i = ps.executeUpdate();
if(i > 0)
{
out.print("Record Updated Successfully");
}
else
{
out.print("There is a problem in updating Record.");
} 
}
catch(SQLException sql)
{
request.setAttribute("error", sql);
out.println(sql);
}
}
%>
