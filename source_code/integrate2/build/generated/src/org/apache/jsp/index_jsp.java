package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<!DOCTYPE html>\n");
      out.write("<html style=\"overflow:hidden;\">\n");
      out.write("<head>\n");
      out.write("\t<title>Login Stock</title>\n");
      out.write("\t<meta charset=\"UTF-8\">\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\n");
      out.write("<!--===============================================================================================-->\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/util.css\">\n");
      out.write("\t<link rel=\"stylesheet\" type=\"text/css\" href=\"css/main.css\">\n");
      out.write("        \n");
      out.write("<!--===============================================================================================-->\n");
      out.write("<style>\n");
      out.write("    h3{color:red;}\n");
      out.write("    \n");
      out.write("    .login100-form {\n");
      out.write("\n");
      out.write("    width: 100%;\n");
      out.write("    justify-content: space-between;\n");
      out.write("    padding: 43px 88px 93px 190px;\n");
      out.write("    padding-bottom: 0px;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("</head>\n");
      out.write("<body style=\"overflow:hidden;\">\n");
      out.write("\t <div style=\"background-color: #4D4D4D; height: 15%\"><img src=\"p4.gif\" style=\"float: left;\n");
      out.write("             width: 7%;height:100%;margin-right: 50px;margin-left: 20px;\"><br>\n");
      out.write("        <h1 style=\"margin-left: 47px; color:white;font-family: sans-serif;\">PUNE INSTITUTE OF COMPUTER TECHNOLOGY</h1>\n");
      out.write("        </div>\n");
      out.write("\t<div class=\"limiter\">\n");
      out.write("\t\n");
      out.write("\t\t<div class=\"container-login100\">\n");
      out.write("\t\t\t<div class=\"wrap-login100\">\n");
      out.write("\t\t\t\t<div class=\"login100-form-title\" style=\"background-image: url(images/bg-01.jpg);\">\n");
      out.write("\t\t\t\t\t<span class=\"login100-form-title-1\">\n");
      out.write("\t\t\t\t\t\t<center>Stock Digitization<center>\n");
      out.write("\t\t\t\t\t</span>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t<form class=\"login100-form validate-form\" action=\"verify.jsp\" method=\"POST\">\n");
      out.write("\t\t\t\t\t<div class=\"wrap-input100 m-b-26\" >\n");
      out.write("\t\t\t\t\t\t<span class=\"label-input100\">Username</span>\n");
      out.write("\t\t\t\t\t\t<input class=\"input100\" type=\"text\" name=\"uname\" placeholder=\"Enter username\">\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100\"></span>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"wrap-input100 m-b-18\">\n");
      out.write("\t\t\t\t\t\t<span class=\"label-input100\">Password</span>\n");
      out.write("\t\t\t\t\t\t<input class=\"input100\" type=\"password\" name=\"pwd\" placeholder=\"Enter password\">\n");
      out.write("\t\t\t\t\t\t<span class=\"focus-input100\"></span>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"flex-sb-m w-full p-b-30\">\n");
      out.write("\t\t\t\t\t\t<div>\n");
      out.write("\t\t\t\t\t\t\t<a href=\"#\" class=\"txt1\">\n");
      out.write("\t\t\t\t\t\t\t\tForgot Password ?\n");
      out.write("\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\n");
      out.write("\t\t\t\t\t<div class=\"container-login100-form-btn\">\n");
      out.write("\t\t\t\t\t\t<button class=\"login100-form-btn\">\n");
      out.write("\t\t\t\t\t\t\tLogin\n");
      out.write("\t\t\t\t\t\t</button>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("           \n");
      out.write("\t\t\t\t</form>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t\n");
      out.write("\t</div>\n");
      out.write("\t\n");
      out.write("\n");
      out.write("</body>\n");
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
