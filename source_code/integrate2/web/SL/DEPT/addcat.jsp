<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="overflow:hidden;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> INSERT DEPT </title>
</head>
<body>
<%


String did=request.getParameter("did");
String dname=request.getParameter("dname");
Class.forName("com.mysql.jdbc.Driver");
try
{
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99","");
Statement st= con.createStatement();
ResultSet rs;
int i=st.executeUpdate("insert into dept values('"+did+"','"+dname+"')");
%>
<script> alert("Department inserted.");
window.location.href = "http://localhost:8080/integrate2/indexadmin.html";</script>
<%
out.println("Inserted '"+did+"','"+dname+"' ");


}
catch(Exception e)
{
	request.setAttribute("errorMessage", e);
                    RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                    rd.forward(request, response);
}
%>
</body>
</html>