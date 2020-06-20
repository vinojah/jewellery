package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class invalied_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("  <title>Dadigama Jewellary Shop</title>\n");
      out.write("  <meta name=\"description\" content=\"website description\" />\n");
      out.write("  <meta name=\"keywords\" content=\"website keywords, website keywords\" />\n");
      out.write("  <meta http-equiv=\"content-type\" content=\"text/html; charset=windows-1252\" />\n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"style/style.css\" />\n");
      out.write("</head>\n");
      out.write("<!--*********************************************HEADER**********************************************************-->\n");
      out.write("<body>\n");
      out.write("  <div id=\"main\">\n");
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
      out.write("          <li><a class=\"drop\" href=\"category\">Jewellary</a>\n");
      out.write("            <ul>\n");
      out.write("              <li><a href=\"Jewellary/Neclace.html\">Neclaces</a></li>\n");
      out.write("              <li><a href=\"Jewellary/ring.html\">Rings</a></li>\n");
      out.write("              <li><a href=\"Jewellary/Braselet.html\">Braselets</a></li>\n");
      out.write("              <li><a href=\"Jewellary/earring.html\">Earrings</a></li>\n");
      out.write("              <li><a href=\"Jewellary/weddingitems.html\">Wedding Items</a></li>\n");
      out.write("            </ul>\n");
      out.write("          </li>\n");
      out.write("          <li><a href=\"about\">About Us</a></li>\n");
      out.write("          <li><a href=\"contact\">Contact Informations</a></li>\n");
      out.write("        </ul>\n");
      out.write("      </div>\n");
      out.write("    \n");
      out.write("             \n");
      out.write("     <!--****************************************************CONTENT*****************************************************-->     \n");
      out.write("      <div id=\"content\">\n");
      out.write("          \n");
      out.write("          .............ENTER CORRECT USERNAME AND PASSWORD.............\n");
      out.write("          </div>\n");
      out.write("</div>\n");
      out.write("     \n");
      out.write("\n");
      out.write("     \n");
      out.write("     \n");
      out.write("     \n");
      out.write("    <!--********************************************************FOOTER*************************************************-->\n");
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
