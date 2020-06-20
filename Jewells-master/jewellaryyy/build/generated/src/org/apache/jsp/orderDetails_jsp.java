package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class orderDetails_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css\">\n");
      out.write("        <meta name=\"description\" content=\"website description\" />\n");
      out.write("        <meta name=\"keywords\" content=\"website keywords, website keywords\" />\n");
      out.write("        <meta http-equiv=\"content-type\" content=\"text/html; charset=windows-1252\" />\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"style/style.css\" />\n");
      out.write("         <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <title>Order Details</title>\n");
      out.write("      \n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css\" />\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("              <div id=\"main\">\n");
      out.write("    <div id=\"header\">\n");
      out.write("      <div id=\"logo\">\n");
      out.write("        <div id=\"logo_text\">\n");
      out.write("          <!-- class=\"logo_color-->\n");
      out.write("          <h1><a href=\"index.html\">Dadigama<span class=\"logo_colour\"> Jewellary</span></a></h1>\n");
      out.write("          <h2>...Great Goldsmiths...</h2>\n");
      out.write("        </div>\n");
      out.write("      </div>\n");
      out.write("      </div>\n");
      out.write("\n");
      out.write("\n");
      out.write("      <!--***************************************NAVIGATION****************************************************-->\n");
      out.write("      <div id=\"mainav\" class=\"clear\"> \n");
      out.write("        <ul class=\"clear\">\n");
      out.write("          <li class=\"active\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("          <li><a href=\"login.html\">Login</a></li>\n");
      out.write("          <li><a class=\"drop\" href=\"order.jsp\">Jewellary</a>\n");
      out.write("            <ul>\n");
      out.write("              <li><a href=\"necklace.jsp\">Neclaces</a></li>\n");
      out.write("              <li><a href=\"rings.jsp\">Rings</a></li></li>\n");
      out.write("              <li><a href=\"jewellary/earring.html\">Earrings</a></li>\n");
      out.write("              <li><a href=\"jewellary/weddingitems.html\">Wedding Items</a></li>\n");
      out.write("            </ul>\n");
      out.write("          </li>\n");
      out.write("          <li><a href=\"about\">About Us</a></li>\n");
      out.write("          <li><a href=\"contact\">Contact Informations</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("    \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("<div class=\"fluid\">      \n");
      out.write("\n");
      out.write("\n");
      out.write("    \n");
      out.write("          \n");
      out.write("         \n");
      out.write("            <div class=\"row\">\n");
      out.write("                <div class=\"float-left\">\n");
      out.write("                \n");
      out.write("                </div>\n");
      out.write("                <div class=\"col-md-8 float-center\">\n");
      out.write("              \n");
      out.write(" <span class=\"border border-dark\">\n");
      out.write("<form method=\"post\" action=\"order.jsp\">\n");
      out.write("    ");
  
      
        String id = request.getParameter("id");
        out.print("Item Id : ");
        out.print(id);
        
        session.getAttribute( "user_id" );
         int user_id=1;
        
         
         
      out.write("\n");
      out.write("        \n");
      out.write("       \n");
      out.write("            <table id=\"customers\">\n");
      out.write("                \n");
      out.write("  \n");
      out.write("  \n");
      out.write("  ");

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
    


      out.write("\n");
      out.write("<input type=\"hidden\" name=\"user_id\" value=\"");
      out.print(user_id);
      out.write("\">\n");
      out.write("<input type=\"hidden\" name=\"item_id\" value=\"");
      out.print(rs.getInt(1));
      out.write("\">\n");
      out.write("<input type=\"hidden\" name=\"price\" value=\"");
      out.print(rs.getInt(6));
      out.write("\">\n");
      out.write("<TR>\n");
      out.write(" <TH> Item Name: </TH>\n");
      out.write("<TD>");
      out.print(rs.getString(2));
      out.write("</TD>\n");
      out.write("</TR>\n");
      out.write("<TR>\n");
      out.write(" <TH> Item Type: </TH>\n");
      out.write("<TD>");
      out.print(rs.getString(3));
      out.write("</TD>\n");
      out.write("</TR>\n");
      out.write("<TR>\n");
      out.write(" <TH> Material: </TH>\n");
      out.write("<TD>");
      out.print(rs.getString(4));
      out.write("</TD>\n");
      out.write("</TR>\n");
      out.write("<TR>\n");
      out.write(" <TH> Weight: </TH>\n");
      out.write(" <TD>");
      out.print(rs.getFloat(5));
      out.write("</TD>\n");
      out.write("</TR>\n");
      out.write("<TR>\n");
      out.write(" <TH> Price: </TH>\n");
      out.write("<TD>");
      out.print(rs.getFloat(6));
      out.write("</TD>\n");
      out.write("</TR>\n");
      out.write("<TR>\n");
      out.write(" <TH> Qty: </TH>\n");
      out.write("<TD><input type=\"text\" name=\"qty\"></TD>\n");
      out.write("</TR>\n");
      out.write("<TR>\n");
      out.write(" \n");
      out.write("<TD><input type=\"submit\" value=\"Order\"></TD>\n");
      out.write("</TR>\n");
      out.write("\n");
 } 
      out.write('\n');

// close all the connections.
rs.close();
statement.close();
connection.close();
} catch (Exception ex) {

      out.write("\n");
      out.write("</font>\n");
      out.write("<font size=\"+3\" color=\"red\"></b>\n");

out.println("Unable to connect to database.");
}

      out.write("\n");
      out.write("\n");
      out.write("  \n");
      out.write("</table>   \n");
      out.write("</form>\n");
      out.write("</span>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("<div>    </div>\n");
      out.write("            </div>\n");
      out.write("           <!--********************************************************FOOTER*************************************************-->\n");
      out.write("    <div id=\"footer\">\n");
      out.write("      <div class = \"col-12\">\n");
      out.write("        <div class=\"social col-3\">\n");
      out.write("            <h3>Social media</h3>\n");
      out.write("            <ul>\n");
      out.write("              <a href=\"#\"><span class=\"fb\"></span>Facebook</a>\n");
      out.write("            </ul>\n");
      out.write("          </div>   \n");
      out.write("           \n");
      out.write("        <div class=\"contact col-3\">\n");
      out.write("            <h3>Contact Us</h3>\n");
      out.write("            <p>Dadigama Jewelry <br> 54 Main Street <br>Badulla <br> SriLanka </p>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"contact col-3\">\n");
      out.write("          <h3>  </h3>\n");
      out.write("         <p><span class=\"email\"> </span><a href=\"email\">contact@dadigamajewelry.com</a></p>\n");
      out.write("            <p><span class=\"phone\"></span> 055 223 4348</p>\n");
      out.write("        </div>\n");
      out.write("          \n");
      out.write("        \n");
      out.write("        <div class=\"copy col-3\">  \n");
      out.write("         <h3> </h3>\n");
      out.write("        <p> Copyright 2018 Jewelry. All rights reserved. <p> </div>\n");
      out.write("        </div>\n");
      out.write("    \n");
      out.write("  </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
