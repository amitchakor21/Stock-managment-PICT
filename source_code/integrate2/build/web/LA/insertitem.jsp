<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="overflow:hidden;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> INSERT item </title>
</head>
<body>
<%


String category=request.getParameter("category");
String subcategory=request.getParameter("subcategory");
String type=request.getParameter("sub_subcategory");  
String status=request.getParameter("status");
String dsrno=request.getParameter("dsrno");
String labno=request.getParameter("demo");
String pd=request.getParameter("pd");
String pn=request.getParameter("pn");
String dn=request.getParameter("dn");

StringBuffer rmk = null;
rmk = new StringBuffer(request.getParameter("rmk"));

Class.forName("com.mysql.jdbc.Driver");
try
{
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99","");
Statement st= con.createStatement();
ResultSet rs;


if( category.equalsIgnoreCase("9999") || subcategory.equalsIgnoreCase("9999") || type.equalsIgnoreCase("9999") || status.equalsIgnoreCase("9999") || labno.equalsIgnoreCase("9999"))
{   
    %>
<script> alert("You haven't selected lab or item category");
window.location.href = "http://localhost:8080/integrate2/LA/index.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>";</script>
<%

}else{


int i=st.executeUpdate("insert into items values('"+type+"','"+subcategory+"','"+dsrno+"','"+status+"',"+labno+",'"+rmk+"',DEFAULT,'"+pd+"','"+pn+"',"+dn+",DEFAULT)");
%>
<script> alert("item record is added");
window.location.href = "http://localhost:8080/integrate2/indexla.html";</script>
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