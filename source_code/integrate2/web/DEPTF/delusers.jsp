<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="overflow:hidden;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> Update Labs </title>
</head>
<body>
<%


String uid=request.getParameter("userid");
String dn=request.getParameter("dn");

Class.forName("com.mysql.jdbc.Driver");
try
{
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99","");
Statement st= con.createStatement();



ResultSet rs=st.executeQuery("select ucategory from user where user_id='"+uid+"' and dept_name="+dn+""); 
if(rs.next()) 
{
    if(rs.getString(1).equals("Department Incharge"))
    {
        %>
<script> alert("You can not delete yourself");
window.location.href = "http://localhost:8080/integrate2/indexadmin.html";</script>
<%
    }
    else
    {
int i=st.executeUpdate("delete from user where user_id='"+uid+"'");
%>
<script> alert("User is deleted");
window.location.href = "http://localhost:8080/integrate2/indexadmin.html";</script>
<%
out.println("Deleted '"+uid+"'");
    }
}
else
{
    %>
<script> alert("User not found");
window.location.href = "http://localhost:8080/integrate2/indexadmin.html?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>";</script>
<%
    out.println("LabID not found");
}
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>