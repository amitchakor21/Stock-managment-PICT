<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="overflow:hidden;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> UPDATE DEPARTMENT </title>
</head>
<body>
<%


String did=request.getParameter("did");
String dname=request.getParameter("dname");
String catg1=request.getParameter("category"); 

Class.forName("com.mysql.jdbc.Driver");
try
{
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99","");
Statement st= con.createStatement();
ResultSet rs;
if( catg1.equalsIgnoreCase("9999"))
{   
%>
<script> alert("Lab or Department is not selelcted");
window.location.href = "http://localhost:8080/integrate2/indexadmin.html";</script>
<%
    
}
else
{


int i=st.executeUpdate("update dept set dept_id='"+did+"',dept_name='"+dname+"' where dept_name='"+catg1+"' ");


if( i !=0 )
{
%>
<script> alert("Department successfully updated.");
window.location.href = "http://localhost:8080/integrate2/indexadmin.html";</script>
<%


out.println("UPDATED newly '"+did+"','"+dname+"'");
}
else
{
   request.setAttribute("errorMessage", "Requested department not found.");
                    RequestDispatcher rd = request.getRequestDispatcher("updatecath.jsp");
                    rd.forward(request, response);
}
}
}
catch(Exception e)
{
	request.setAttribute("errorMessage", e);
                    RequestDispatcher rd = request.getRequestDispatcher("updatecath.jsp");
                    rd.forward(request, response);
}
%>
</body>
</html>