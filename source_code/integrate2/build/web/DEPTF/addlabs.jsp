<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="overflow:hidden;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> INSERT </title>
</head>
<body>
<%


String lid1=request.getParameter("lid");
String lname1=request.getParameter("lname");
String dn=request.getParameter("dn");  



Class.forName("com.mysql.jdbc.Driver");
try
{
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99","");
Statement st= con.createStatement();
ResultSet rs;
  
rs=st.executeQuery("select * from labs where lab_name='"+lname1+"' and dept_name="+dn+""); 
if(rs.next()) 
{
   %>
<script> alert("Already exists");
window.location.href = "http://localhost:8080/integrate2/indexadmin.html";</script>
<%
    }
  else
{


int i=st.executeUpdate("insert into labs values('"+lid1+"',"+dn+",'"+lname1+"')");
 %>
<script> alert("Lab is added");
window.location.href = "http://localhost:8080/integrate2/indexadmin.html";</script>
<%
}
}catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>