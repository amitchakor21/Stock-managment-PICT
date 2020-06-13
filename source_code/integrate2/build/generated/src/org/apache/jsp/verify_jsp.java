package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import javax.sql.*;

public final class verify_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html; charset=ISO-8859-1");
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html style=\"overflow:hidden;\">\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body style=\"background-image:url('images/campbg3.jpg');\">\n");
      out.write("        \n");
      out.write("\t\n");
      out.write("\t");

            String demo1="demo";
String userid=request.getParameter("uname");  
String pwd=request.getParameter("pwd"); 
String root="root99";
String Pass="";
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99",""); 
Statement st= con.createStatement(); 
 
ResultSet rs=st.executeQuery("select user_id,passwd from user where user_id='"+userid+"'"); 
if(rs.next()) 
{ 
    if(rs.getString(2).equals(pwd)) 
    { 
        out.println("welcome"+userid); 

        rs=st.executeQuery("select ucategory,dept_name,lab_id,user_id from user where user_id='"+userid+"'"); 
        if(rs.next()) 
        {
            if(rs.getString(1).equals("Admin"))
            {
                response.sendRedirect("admin.jsp?demo='"+rs.getString(3)+"'&useri='"+rs.getString(4)+"'&dn='"+rs.getString(2)+"'");

            }else if(rs.getString(1).equals("Principal")) 
            {
                response.sendRedirect("principal.jsp?demo='"+rs.getString(3)+"'&useri='"+rs.getString(4)+"'&dn='"+rs.getString(2)+"'");

            }else if(rs.getString(1).equals("HOD")) 
            {
                
                        response.sendRedirect("hod.jsp?demo='"+rs.getString(3)+"'&useri='"+rs.getString(4)+"'&dn='"+rs.getString(2)+"'");

            }else if(rs.getString(1).equals("Department Incharge")) 
            {
                                response.sendRedirect("deptincharge.jsp?demo='"+rs.getString(3)+"'&useri='"+rs.getString(4)+"'&dn='"+rs.getString(2)+"'");


            }else if(rs.getString(1).equals("Lab Assistent")) 
            {
                        response.sendRedirect("labassistent.jsp?demo='"+rs.getString(3)+"'&useri='"+rs.getString(4)+"'&dn='"+rs.getString(2)+"'");
            }
            else if(rs.getString(1).equals("Lab Incharge")) 
            {
                        response.sendRedirect("labincharge.jsp?demo='"+rs.getString(3)+"'&useri='"+rs.getString(4)+"'&dn='"+rs.getString(2)+"'");
            }
        }
        else
        {

             
                 
      out.write("   <script>\n");
      out.write("            \n");
      out.write("            alert(\"Invalid Password Try Again\");\n");
      out.write("            window.location.href = \"http://localhost:8080/integrate2/index.jsp\";\n");
      out.write("            </script>");

        }
    }
    else
        {

             
      out.write("   <script>\n");
      out.write("            \n");
      out.write("            alert(\"Invalid Password Try Again\");\n");
      out.write("            window.location.href = \"http://localhost:8080/integrate2/index.jsp\";\n");
      out.write("           \n");
      out.write("            </script>");

        }


} 
else 
{  
      out.write("   <script>\n");
      out.write("            \n");
      out.write("            alert(\"Invalid Password Try Again\");\n");
      out.write("            window.location.href = \"http://localhost:8080/integrate2/index.jsp\";\n");
      out.write("            \n");
      out.write("            </script>");

} 


       

      out.write("\n");
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
