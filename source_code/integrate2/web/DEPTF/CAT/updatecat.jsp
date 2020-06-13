<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="overflow:hidden;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> UPDATE CATEGORY </title>
</head>
<body>
<%


String mech=request.getParameter("mech");
String spec=request.getParameter("spec");
String dn=request.getParameter("dn");
String catg1=request.getParameter("category");
String scatg1=request.getParameter("subcategory");
String typ1=request.getParameter("sub_subcategory");  

Class.forName("com.mysql.jdbc.Driver");
try
{
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99","");
Statement st= con.createStatement();
ResultSet rs;
if( catg1.equalsIgnoreCase("9999") || scatg1.equalsIgnoreCase("9999") || typ1.equalsIgnoreCase("9999"))
{   
    %>
<script> alert("You haven't selected categories of item");
window.location.href = "http://localhost:8080/integrate2/indexadmin.html?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>";</script>
<%

}else{

st.executeUpdate("update category set mech='"+mech+"',spec='"+spec+"' where sub_cat='"+scatg1+"' and type='"+typ1+"' ");


    %>
<script> alert("category specifications are updated");
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