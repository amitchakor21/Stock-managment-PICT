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
window.location.href = "http://localhost:8080/integrate2/LA/index.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>";</script>
<%

}else{



ResultSet rs=st.executeQuery("select lab_id from items where dsrno='"+dsrno+"'"); 
if(rs.next())
{
oldlabno=rs.getString(1);
rs=st.executeQuery("select lab_id from user where user_id="+uid+""); 
if(rs.next())
{
    if(oldlabno.equals(rs.getString(1))){
     st.executeUpdate("insert into transfer values('"+dsrno+"',"+uid+",curdate(),curtime(),'"+oldlabno+"','"+labno+"')");
    int j=st.executeUpdate("update items set lab_id='"+labno+"' where dsrno='"+dsrno+"'");
out.println("Updated '"+labno+"'");

    %>
<script> alert("transfered");
window.location.href = "http://localhost:8080/integrate2/indexla.html";</script>
<%
out.println("Inserted "+uid+",'"+labno+"','"+oldlabno+"','"+dsrno+"'");
 }
 else
 {
          
    %>
<script> alert("match not found");
window.location.href = "http://localhost:8080/integrate2/trans.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>";</script>
<%
   
 }
}
else
{
    
    %>
<script> alert("You haven't selected lab");
window.location.href = "http://localhost:8080/integrate2/trans.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>";</script>
<%
        out.println("LabId Not Found");

}
}
else
{
    
    %>
<script> alert("DSR Number not found");
window.location.href = "http://localhost:8080/stockd/LA/trans.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>";</script>
<%
    out.println("DSRno or type Not Found");
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