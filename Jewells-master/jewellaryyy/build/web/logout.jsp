<%-- 
    Document   : logout
    Created on : Dec 3, 2018, 8:15:23 AM
    Author     : HP
--%>

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
<body>
  <%
            session.invalidate();
            response.sendRedirect("necklace.jsp");
        %>
</body>
</html>