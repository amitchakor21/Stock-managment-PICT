<%-- 
    Document   : verify2
    Created on : 5 Sep, 2018, 7:36:49 PM
    Author     : DELL
--%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html style="overflow:hidden;">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-image:url('images/campbg3.jpg');">
        <%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%>
	<%
            String demo1="demo";
String userid=request.getParameter("uname");  
String pwd=request.getParameter("pwd"); 
String root="root99";
String Pass="";
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99",""); 
Statement st= con.createStatement(); 
 //jdbc:mysql://localhost:3306/stockd2?serverTimezone=EST5EDT
 //SET @@global.time_zone = '+00:00';

ResultSet rs=st.executeQuery("select user_id,passwd from user where user_id='"+userid+"'"); 
if(rs.next()) 
{ 
    if(rs.getString(2).equals(pwd)) 
    { 
        out.println("welcome"+userid); 

        rs=st.executeQuery("select ucategory,dept_name,lab_id,user_id from user where user_id='"+userid+"'"); 
        if(rs.next()) 
        {
            if(rs.getString(1).equals("Admin"))
            {
                response.sendRedirect("admin.jsp?demo='"+rs.getString(3)+"'&useri='"+rs.getString(4)+"'&dn='"+rs.getString(2)+"'");

            }else if(rs.getString(1).equals("Principal")) 
            {
                response.sendRedirect("principal.jsp?demo='"+rs.getString(3)+"'&useri='"+rs.getString(4)+"'&dn='"+rs.getString(2)+"'");

            }else if(rs.getString(1).equals("HOD")) 
            {
                
                        response.sendRedirect("hod.jsp?demo='"+rs.getString(3)+"'&useri='"+rs.getString(4)+"'&dn='"+rs.getString(2)+"'");

            }else if(rs.getString(1).equals("Department Incharge")) 
            {
                                response.sendRedirect("deptincharge.jsp?demo='"+rs.getString(3)+"'&useri='"+rs.getString(4)+"'&dn='"+rs.getString(2)+"'");


            }else if(rs.getString(1).equals("Lab Assistent")) 
            {
                        response.sendRedirect("labassistent.jsp?demo='"+rs.getString(3)+"'&useri='"+rs.getString(4)+"'&dn='"+rs.getString(2)+"'");
            }
            else if(rs.getString(1).equals("Lab Incharge")) 
            {
                        response.sendRedirect("labincharge.jsp?demo='"+rs.getString(3)+"'&useri='"+rs.getString(4)+"'&dn='"+rs.getString(2)+"'");
            }
        }
        else
        {

             
                 %>   <script>
            
            alert("Invalid Password Try Again");
            window.location.href = "http://localhost:8080/integrate2/index.jsp";
            </script><%
        }
    }
    else
        {

             %>   <script>
            
            alert("Invalid Password Try Again");
            window.location.href = "http://localhost:8080/integrate2/index.jsp";
           
            </script><%
        }


} 
else 
{  %>   <script>
            
            alert("Invalid Password Try Again");
            window.location.href = "http://localhost:8080/integrate2/index.jsp";
            
            </script><%
} 


       
%>
    </body>
</html>
