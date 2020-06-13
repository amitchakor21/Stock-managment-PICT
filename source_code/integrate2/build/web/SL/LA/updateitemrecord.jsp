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
String status=request.getParameter("status");
String dsrno=request.getParameter("dsrno");
String labno=request.getParameter("demo");
String demo=request.getParameter("demo");

String pd=request.getParameter("pd");
String pn=request.getParameter("pn");
StringBuffer rmk = new StringBuffer(request.getParameter("rmk"));

String oldlabno;

Class.forName("com.mysql.jdbc.Driver");
try
{
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99","");
Statement st= con.createStatement();

if( status.equalsIgnoreCase("9999") || labno.equalsIgnoreCase("9999"))
{   
    %>
<script> alert("You haven't selected lab or status");
window.location.href = "http://localhost:8080/integrate2/indexla.html?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>";</script>
<%

}else{

int j=st.executeUpdate("update items set status='"+status+"',extra='"+rmk+"',purchase_date='"+pd+"',purchase_num='"+pn+"' where dsrno='"+dsrno+"'");

if(j > 0)
{
%>
<script> alert("item record is updated");
window.location.href = "http://localhost:8080/integrate2/indexla.html";</script>
    
<%
}
else
{
   %>
<script> alert("item not found");
window.location.href = "http://localhost:8080/integrate2/indexla.html?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>";</script>
    
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