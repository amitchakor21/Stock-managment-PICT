
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html style="overflow:hidden;">
<head>
	<title>Login Stock</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main1.css">
<!--===============================================================================================-->

<style>

h1
{
    font-size:20px;
    text-decoration: none;
    font-weight:normal;
}


</style>


</head>
<body style="background:none;">	
	<div class="limiter">	
		<div class="container-login1001">
			<div class="wrap-login100">
                            <div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1">
						<center>Profile<center>
					</span>
				</div>
                            
                                <%
String userid=request.getParameter("useri"); 
//String dn=request.getParameter("dn");
%>

    
    
    <%
    try
    {
        Class.forName("com.mysql.jdbc.Driver"); //load driver
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99",""); //create connection
                
        PreparedStatement pstmt=null ; //create statement
                
        pstmt=con.prepareStatement("select * from user where user_id="+userid+""); //sql select query
        ResultSet rs=pstmt.executeQuery(); //execute query and set in resultset object rs.
                
        while(rs.next())
        {
            %>
            <pre>
             <p>
            <h1>    User ID             :<%=rs.getString(1)%></h1>
            <h1>    Department Name     :<%=rs.getString(2)%></h1>
            <h1>    Lab ID              :<%=rs.getString(3)%></h1>
            <h1>    Name                :<%=rs.getString(4)%></h1>
            <h1>    User-Type           :<%=rs.getString(5)%></h1>
            
            </p>
            </pre>
    <%
        }
           
        con.close(); //close connection
    }
    catch(Exception e)
    {
        out.println(e);
    }
    %>
        
            
			</div>
		</div>
	</div>
</body>
</html>
