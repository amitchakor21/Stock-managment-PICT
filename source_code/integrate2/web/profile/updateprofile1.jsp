<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="overflow:hidden;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>UPDATE PROFILE</title>
</head>
<body>
<%
String uid1=request.getParameter("useri");
String uname1=request.getParameter("uname");
String pwd1=request.getParameter("pwd");
Class.forName("com.mysql.jdbc.Driver");
try
{
    java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99","");
    Statement st= con.createStatement();
    ResultSet rs=st.executeQuery("select * from user where user_id="+uid1+""); 
    if(rs.next()) 
    {
        int i=st.executeUpdate("update user set uname='"+uname1+"',passwd='"+pwd1+"' where user_id="+uid1+"");
        //out.println("updated  '"+uid1+"','"+userid+"','"+pwd+"','"+uname1+"','"+cat1+"','"+pwd1+"'");
        %>
        <script> alert("User profile successfully updated.");
        window.location.href = "http://localhost:8080/integrate2/indexadmin.html";</script>
        <%
    }
    else
    {
        out.println("Userid not found");
        %>
        <script> alert("UserId not found.");
        window.location.href = "http://localhost:8080/integrate2/admin.jsp";</script>
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