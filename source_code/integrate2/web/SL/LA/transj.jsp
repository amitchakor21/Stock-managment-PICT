<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="overflow:hidden;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> INSERTitem </title>
</head>
<body>
<%

String uid=request.getParameter("useri");
String labno=request.getParameter("labno");
String labno2=request.getParameter("labno2");

String dsrno=request.getParameter("dsrno");

String oldlabno;

Class.forName("com.mysql.jdbc.Driver");
try
{
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99","");
Statement st= con.createStatement();

if( labno.equalsIgnoreCase("9999"))
{   
    %>
<script> alert("You haven't selected lab");
    window.location.href = "http://localhost:8080/integrate2/indexla.html";</script>

<%

}else{



ResultSet rs=st.executeQuery("select lab_id from items where dsrno='"+dsrno+"' and lab_id='"+labno+"'"); 
if(rs.next())
{
     st.executeUpdate("insert into transfer values('"+dsrno+"',"+uid+",curdate(),curtime(),'"+labno+"','"+labno2+"')");
    int j=st.executeUpdate("update items set lab_id='"+labno2+"' where dsrno='"+dsrno+"'");

    %>
<script> alert("transfered");
window.location.href = "http://localhost:8080/integrate2/indexla.html";</script>
<%
 }
 else
 {
          
    %>
<script> alert("match not found");
    window.location.href = "http://localhost:8080/integrate2/indexla.html";</script>

<%
   
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