<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html style="overflow:hidden;">
<head>
	<title>Login Stock</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../css/util.css">
	<link rel="stylesheet" type="text/css" href="../css/dummy.css">
        <link rel="stylesheet" type="text/css" href="../View/view.css">
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
                            <div class="login100-form-title" style="background-image: url(../images/bg-01.jpg);">
					<span class="login100-form-title-1">
						<center>ADD USER<center>
					</span>
				</div>
                            <div class="form-style-8">
                               <%
String userid=request.getParameter("demo"); 
String dn=request.getParameter("dn");
%>
  <form action="addlas.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" method="post">
	<%
    if(null!=request.getAttribute("errorMessage"))
    {%>
         <h3><%=request.getAttribute("errorMessage") %></h3><%
    }

%>


      <label>UserId :</label>
           <input type="text" name="uid" placeholder="User ID" required/>
        <br><br><br><br>
	<label>Category :</label>
            <select id = "myList" name="cat">
        <option selected="selected" value = "9999">Select Category</option>
               <option value = "Lab Assistent">Department Incharge</option>
               <option value = "Lab Incharge">Lab Assistent</option>
                              <option value = "Lab Incharge">Lab Incharge</option>
                   <option value = "HOD">HOD</option>
               <option value = "Principal">Principal</option>
            </select>
        <br><br><br><br>
	<label>Department :</label> 
    <select class="country" onchange="country_change()" name="category">
               <option selected="selected" value="9999">Select Department</option>
    
    <%
    try
    {
        Class.forName("com.mysql.jdbc.Driver"); //load driver
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99",""); //create connection
                
        PreparedStatement pstmt=null ; //create statement
                
        pstmt=con.prepareStatement("select dept_name from dept"); //sql select query
        ResultSet rs=pstmt.executeQuery(); //execute query and set in resultset object rs.
                
        while(rs.next())
        {
        %>
            <option value="<%=rs.getString("dept_name")%>">
                <%=rs.getString("dept_name")%>
            </option>
        <%
        }
           
        con.close(); //close connection
    }
    catch(Exception e)
    {
        out.println(e);
    }
    %>
        </select>
        <br><br><br><br>

    <label>Lab :</label> 
        <select class="state"  name="subcategory">
    <option selected="selected" value="9999">Select Lab</option>
    </select>        <br><br><br><br>
 <label>Username :</label>
    <input type="text" name="uname" placeholder="Username" required/>
    <br><br><br><br>
	<label>Password :</label>
    <input type="Password" name="pwd" placeholder="Password" required/>
    <br><br><br><br>
       <input type="submit" value="Submit" />       
        <input type="Reset" value="Reset" />
        <br><br>
                
</form>
                            </div>
			</div>
		</div>
	</div>
</body>
</html>