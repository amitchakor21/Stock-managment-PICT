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


String dsrno=request.getParameter("dsrno");
String labno=request.getParameter("demo");
Class.forName("com.mysql.jdbc.Driver");
try
{
    out.println("Selected "+labno+"");

java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99","");
Statement st= con.createStatement();
ResultSet rs=st.executeQuery("select "
        + "items.type,status,lab_id,extra,repair,items.purchase_date,purchase_num,dept_name from items where dsrno='"+dsrno+"'" ); 


if(rs.next()) 
{
    
    
String s1=rs.getString(1);
String s3=rs.getString(2);
String s4=rs.getString(3);
String s5=rs.getString(4);

String s8=rs.getString(6);
String s9=rs.getString(7);
String s6=rs.getString(5);


 Date s7=rs.getDate(6);

int k=st.executeUpdate("insert into itemlog values('"+s1+"','"+dsrno+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"','"+s7+"','"+s8+"')");
st.executeUpdate("delete from transfer where from_lab='"+dsrno+"' or to_lab='"+dsrno+"'");
st.executeUpdate("delete from maintainance where dsr_no='"+dsrno+"'");
int i=st.executeUpdate("delete from items where dsrno='"+dsrno+"'");
 %>
<script> alert("Item record deleted");
window.location.href = "http://localhost:8080/integrate2/indexla.html";</script>
<%
}
else
{
   
     %>
<script> alert("Item not found");
window.location.href = "http://localhost:8080/integrate2/indexla.html?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>";</script>
<%
    out.println("LabID not found");
}

}
catch(Exception e)
{
	out.println(e);
}
%>
</body>
</html>