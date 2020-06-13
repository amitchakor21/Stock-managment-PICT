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
<script type="text/javascript" src="jquery-1.12.4.min.js"></script>
<script type="text/javascript">
function country_change()
{
    var country = $(".country").val();
	
    $.ajax({
		type: "POST",
		url: "state.jsp",
		data: "dept_name="+country,
		cache: false,
		success: function(response)
        {
            $(".state").html(response);
        }
    });

}
</script>

</head>
<body style="background:none;">	
	<div class="limiter">	
		<div class="container-login1001">
			<div class="wrap-login100">
                            <div class="login100-form-title" style="background-image: url(../images/bg-01.jpg);">
					<span class="login100-form-title-1">
						<center>Update department<center>
					</span>
				</div>
                            <div class="form-style-8">
                              <form action="updatecat.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" method="post">
             <%
    if(null!=request.getAttribute("errorMessage"))
    {%>
         <h3><%=request.getAttribute("errorMessage") %></h3><%
    }
%>
                    <h4 style="color:green;">Enter department to be updated</h4><br></br>

	<label>Department :</label> 
	<select name="category">
    <option selected="selected" value="9999">Select Department</option>
	<%
    try
    {
        Class.forName("com.mysql.jdbc.Driver"); //load driver
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99",""); //create connection
                
        PreparedStatement pstmt=null ; //create statement
                
        pstmt=con.prepareStatement("select distinct dept_name from dept"); //sql select query
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
                            <h4 style="color:green;">Enter new data for selected department</h4><br></br>

    <label>Dept Id :</label>
    <input type="text" name="did" placeholder="Dept ID" required="required"/>
    <br><br><br><br>
    <label>Dept Name :</label>
    <input type="text" name="dname" placeholder="Dept Name" required="required" />
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