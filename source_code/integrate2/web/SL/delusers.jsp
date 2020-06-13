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
String cuid=request.getParameter("useri");

Class.forName("com.mysql.jdbc.Driver");
try
{
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99","");
Statement st= con.createStatement();



ResultSet rs=st.executeQuery("select ucategory from user where user_id='"+uid+"'"); 
if(rs.next()) 
{

    if(rs.getString(1).equals("Admin"))
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
    }
}
else
{
%>
<script> alert("User not found");
window.location.href = "http://localhost:8080/integrate2/indexadmin.html";</script>
<%
}
}

catch(Exception e)
{
	request.setAttribute("errorMessage",e);
                    RequestDispatcher rd = request.getRequestDispatcher("deluser.jsp");
                    rd.forward(request, response);
}
%>
</body>
</html>