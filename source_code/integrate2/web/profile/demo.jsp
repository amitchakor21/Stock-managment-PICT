
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
        <link rel="stylesheet" type="text/css" href="prof.css">
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
                             <%
String userid=request.getParameter("demo"); 
String dn=request.getParameter("dn");
%>

 <form class="login100-form validate-form" action="addlas.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" method="post">
	<%
    if(null!=request.getAttribute("errorMessage"))
    {%>
         <h3><%=request.getAttribute("errorMessage") %></h3><%
    }

%>

					<div class="wrap-input100 m-b-26" >
                                            <span class="label-input100 ">User Id :</span><br>
                                            <input style="  width: 70px;" class="input100 " type="text" name="uid" placeholder="User ID" required/>
                                        <span class="focus-input100"></span>
					</div>

                                        <div class="wrap-input100 m-b-26" >
						<span class="label-input100 ">Category :</span>
 <select class="input100 " name="cat">
        <option selected="selected" value = "9999">Select Category</option>
               <option value = "Lab Assistent">Department Incharge</option>
               <option value = "Lab Incharge">Lab Assistent</option>
                              <option value = "Lab Incharge">Lab Incharge</option>
                   <option value = "HOD">HOD</option>
               <option value = "Principal">Principal</option>
            </select>                                        <span class="focus-input100"></span>
					</div>
 
                                        <div class="wrap-input100 m-b-26" >
						<span class="label-input100 ">Department :</span>
 <select class="input100 " onchange="country_change()" name="category">
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
                                           <span class="focus-input100"></span>
					</div>


                    	<div class="wrap-input100 m-b-26" >
						<span class="label-input100 ">Lab :</span>
                         
        <select class="input100 "  name="subcategory">
    <option selected="selected" value="9999">Select Lab</option>
    </select>               <span class="focus-input100"></span>
					</div>
        
        
                         
                    	<div class="wrap-input100 m-b-26" >
                            <span class="label-input100 ">Username :</span> <br>
            <input class="input100 " type="text" name="uname" placeholder="Username" required/>
            <span class="focus-input100"></span>
					</div>
        
                    	<div class="wrap-input100 m-b-26" >
                            <span class="label-input100 ">Password :</span> <br>
                                                        <input class="input100 " type="Password" name="pwd" placeholder="Password" required/>

            <span class="focus-input100"></span>
					</div>
        
   


					<div class="container-login100-form-btn">
<input class="login100-form-btn1" type="submit" value="Submit" />                                                &nbsp;&nbsp;&nbsp;&nbsp;
   
        <input class="login100-form-btn1" type="Reset" value="Reset" />						
                                    
					</div>
                                    </form>
			</div>
		</div>
	</div>
</body>
</html>
