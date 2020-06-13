<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="overflow:hidden;">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title> DELETE CATEGORY </title>
</head>
<body>
<%

String catg=request.getParameter("category");
String scatg=request.getParameter("subcategory");
String typ=request.getParameter("sub_subcategory");  
String dn=request.getParameter("dn");  

Class.forName("com.mysql.jdbc.Driver");
try
{
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99","");
Statement st= con.createStatement();
ResultSet rs;
if( catg.equalsIgnoreCase("9999") || scatg.equalsIgnoreCase("9999") || typ.equalsIgnoreCase("9999"))
{   
    %>
<script> alert("You haven't selected categories of item");
    window.location.href = "http://localhost:8080/integrate2/indexadmin.html";</script>

<%

}else{
    
    rs=st.executeQuery("select dept_name from category where cat='"+catg+"' and sub_cat='"+scatg+"' and type='"+typ+"'");
if(rs.next())
{
    
    String dnm=rs.getString(1);
    
st.executeUpdate("delete from items where sub_cat='"+scatg+"' and type='"+typ+"'");
st.executeUpdate("delete from specification where sub_cat='"+scatg+"' and type='"+typ+"' ");
st.executeUpdate("insert into catlog values ('"+catg+"','"+scatg+"','"+typ+"','"+dnm+"')");

int i=st.executeUpdate("delete from category where type='"+typ+"'");
  %>
<script> alert("category deleted");
window.location.href = "http://localhost:8080/integrate2/indexadmin.html";</script>
<%

out.println("DELETED '"+catg+"','"+scatg+"','"+typ+"' ");
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