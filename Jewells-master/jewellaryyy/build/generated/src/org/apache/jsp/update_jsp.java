package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;

public final class update_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");


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

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<body>\n");
      out.write("<h1>Update data from database in jsp</h1>\n");
      out.write("<form method=\"post\" action=\"updateprocess.jsp\">\n");
      out.write("<input type=\"hidden\" name=\"id\" value=\"");
      out.print(resultSet.getInt("item_id") );
      out.write("\">\n");
      out.write("<input type=\"text\" name=\"id\" value=\"");
      out.print(resultSet.getInt("item_id") );
      out.write("\">\n");
      out.write("<label for=\"field\"><span>Item Name: </span><input type=\"text\" class=\"input-field\" name=\"itemName\" value=\"");
      out.print(resultSet.getString("Item_Name") );
      out.write("\" /></label>\n");
      out.write("<label for=\"field\"><span>Item_type: </span><input type=\"text\" class=\"input-field\" name=\"itemType\" value=\"");
      out.print(resultSet.getString("Item_type") );
      out.write("\" /></label>\n");
      out.write("<label for=\"field\"><span>Material:</span><input type=\"text\" class=\"input-field\" name=\"material\" value=\"");
      out.print(resultSet.getString("Material") );
      out.write("\" /></label>\n");
      out.write("<label for=\"field\"><span>Weight:</span><input type=\"text\" class=\"input-field\" name=\"weight\" value=\"");
      out.print(resultSet.getFloat("weight") );
      out.write("\" /></label>\n");
      out.write("<label for=\"field\"><span>Price:</span><input type=\"text\" class=\"input-field\" name=\"price\" value=\"");
      out.print(resultSet.getFloat("price") );
      out.write("\" /></label>\n");
      out.write("\n");
      out.write("<label><span> </span><input type=\"submit\" value=\"Submit\" /></label>\n");
      out.write("</form>\n");

   
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}

      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
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
