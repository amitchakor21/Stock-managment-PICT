<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> INSERT </title>
</head>
<body>
<%



String dt=request.getParameter("received");  
String rem=request.getParameter("remarks"); 
String dsr=request.getParameter("dsr"); 


Class.forName("com.mysql.jdbc.Driver");
try
{
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99","");
Statement st= con.createStatement();
st.executeUpdate("update maintainance set received_rep='"+dt+"' , remark='"+rem+"' where dsr_no='"+dsr+"'");

}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>