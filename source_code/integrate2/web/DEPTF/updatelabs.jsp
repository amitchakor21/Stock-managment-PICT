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


String lname1=request.getParameter("lname");

String category=request.getParameter("category");  


Class.forName("com.mysql.jdbc.Driver");
try
{
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99","");
Statement st= con.createStatement();

ResultSet rs=st.executeQuery("select * from labs where lab_id='"+category+"'"); 

if( category.equalsIgnoreCase("9999"))
{   
    %>
<script> alert("You haven't selected department or lab");
window.location.href = "http://localhost:8080/integrate2/indexadmin.html?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>";</script>
<%

}else
{
    
    
if(rs.next()) 
{

int i=st.executeUpdate("update labs set lab_name='"+lname1+"' where lab_id='"+category+"'");

%>
<script> alert("Lab successfully updated.");
window.location.href = "http://localhost:8080/integrate2/indexadmin.html?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>";</script>
<%

out.println("Inserted  '"+lid1+"','"+category+"','"+lname1+"'");

}
else
{
    %>
<script> alert("Lab successfully updated.");
window.location.href = "http://localhost:8080/integrate2/indexadmin.html?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>";</script>
<%
    out.println("LabID not found");
}
}
}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>