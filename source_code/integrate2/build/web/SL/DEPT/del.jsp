<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="overflow:hidden;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> DELETE DEPT </title>
</head>
<body>
<%

String catg=request.getParameter("category");
Class.forName("com.mysql.jdbc.Driver");
try
{
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99","");
Statement st= con.createStatement();
ResultSet rs;

if(catg.equals("9999"))
{
    
%>
<script> alert("you have not selected department.");
window.location.href = "http://localhost:8080/integrate2/indexadmin.html";</script>
<%

}


int i=st.executeUpdate("delete from dept where dept_name='"+catg+"'");
if( i != 0)
{
%>
<script> alert("Department successfully deleted.");
window.location.href = "http://localhost:8080/integrate2/indexadmin.html";</script>
<%

out.println("DELETED '"+catg+"' ");
}
else
{
    %>
    <script> alert("NOT FOUND.");
    window.location.href = "http://localhost:8080/integrate2/indexadmin.html;"</script>
    <%
}

}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>