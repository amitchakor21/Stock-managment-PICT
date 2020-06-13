<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="overflow:hidden;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> INSERT ITEMCAT </title>
</head>
<body>
<%
String mech=request.getParameter("mech");
String spec=request.getParameter("spec");
String catg=request.getParameter("catg");
String scatg=request.getParameter("scatg");
String typ=request.getParameter("typ");  
String category=request.getParameter("dn");  

Class.forName("com.mysql.jdbc.Driver");
try
{
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99","");
Statement st= con.createStatement();
ResultSet rs;

if( category.equalsIgnoreCase("9999"))
{   
    %>
<script> alert("You haven't selected department");
<%

}else{

int i=st.executeUpdate("insert into category values('"+catg+"','"+scatg+"','"+typ+"',"+category+",'"+mech+"','"+spec+"')");


%>
<script> alert("Category successfully added");
window.location.href = "http://localhost:8080/integrate2/indexadmin.html";</script>
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