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


String uid1=request.getParameter("uid");
String cat1=request.getParameter("cat");

String userid=request.getParameter("category");  
String pwd=request.getParameter("subcategory");
String uname1=request.getParameter("uname");
String pwd1=request.getParameter("pwd");


Class.forName("com.mysql.jdbc.Driver");
try
{
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99","");
Statement st= con.createStatement();
ResultSet rs;

if( cat1.equalsIgnoreCase("9999") || userid.equalsIgnoreCase("9999") || pwd.equalsIgnoreCase("9999"))
{   

    %>
<script> alert("Lab or Department is not selelcted");
window.location.href = "http://localhost:8080/integrate2/indexadmin.html";</script>
<%
}else{
rs=st.executeQuery("select * from user where user_id='"+uid1+"'");
if(rs.next())
{

int i=st.executeUpdate("update user set dept_name='"+userid+"',lab_id='"+pwd+"',uname='"+uname1+"',ucategory='"+cat1+"',passwd='"+pwd1+"' where user_id='"+uid1+"'");

%>
<script> alert("User is updated");
window.location.href = "http://localhost:8080/integrate2/indexadmin.html";</script>
<%
}
else
{
%>
<script> alert("User not found");
window.location.href = "http://localhost:8080/integrate2/indexadmin.html";</script>
<%
    
    
}
}
}
catch(Exception e)
{
	request.setAttribute("errorMessage", e);
                    RequestDispatcher rd = request.getRequestDispatcher("updatela.jsp");
                    rd.forward(request, response);
}
%>
</body>
</html>