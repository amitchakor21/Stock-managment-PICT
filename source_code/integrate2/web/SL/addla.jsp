<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en" style="overflow: hidden">
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

.form-style-8
{
    font-family: 'Open Sans Condensed', arial, sans;
    width: 800px;
    padding: 30px;
    background: #FFFFFF;
    margin: 50px auto;
    box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.22);
    -moz-box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.22);
    -webkit-box-shadow:  0px 0px 15px rgba(0, 0, 0, 0.22);
}
.topnav 
{
  overflow: hidden;
  background-color: dodgerblue;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav a 
{
  float: left;
  display: block;
  color: #f2f2f2;
  text-align: center;
  padding-top: 20px;
  padding-bottom:20px;
  padding-left: 6px;
  text-decoration: none;
  font-size: 17px;
}


.topnav .icon 
{
  display: none;
}
.form-style-8 h2
{
    background: #4D4D4D;
    text-transform: uppercase;
    font-family: 'Open Sans Condensed', sans-serif;
    color: white;
    font-size: 18px;
    font-weight: 100;
    padding: 20px;
    margin: -30px -30px 30px -30px;
}
.form-style-8 input[type="text"],
.form-style-8 input[type="password"],
.form-style-8 select 

{
    box-sizing: border-box;
    -webkit-box-sizing: border-box;
    -moz-box-sizing: border-box;
    outline: none;
    display: block;
    width: 60%;
    float: right;
    padding: 7px;
    padding-top: 0px;
    border: none;
    border-color: #555;
    border-bottom: 1px solid grey;
    border-right:  1px solid grey; 
    background: transparent;
    	margin-top: 10px;

    margin-bottom: 10px;
    font: 16px Arial, Helvetica, sans-serif;
    height: 45px;
}
form label
{
	font-weight: bold;
	padding-top: 10px;
	margin-top: 10px;
        float: left;
        display:inline;
}

.form-style-8 input[type="button"], 
.form-style-8 input[type="submit"]{
    -moz-box-shadow: inset 0px 1px 0px 0px #45D6D6;
    -webkit-box-shadow: inset 0px 1px 0px 0px #45D6D6;
    box-shadow: inset 0px 1px 0px 0px #4CAF50;
    background-color: #4CAF50;
    border: 1px solid #4CAF50;
    display: inline-block;
    cursor: pointer;
    color: #FFFFFF;
    font-family: 'Open Sans Condensed', sans-serif;
    font-size: 16px;
    padding: 8px 20px;
    margin-right: 10px;
    text-decoration: none;
    text-transform: uppercase;
    float: right;
}
.form-style-8 input[type="Reset"], 
.form-style-8 input[type="Reset"]{
    -moz-box-shadow: inset 0px 1px 0px 0px #45D6D6;
    -webkit-box-shadow: inset 0px 1px 0px 0px #45D6D6;
    box-shadow: inset 0px 1px 0px 0px tomato;
    background-color: tomato;
    border: 1px solid tomato;
    display: inline-block;
    cursor: pointer;
    color: #FFFFFF;
    font-family: 'Open Sans Condensed', sans-serif;
    font-size: 16px;
    padding: 8px 20px;
    margin-left: 10px;
    text-decoration: none;
    text-transform: uppercase;
    float: right;
    margin-right: 10px;
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
						<center>ADD&nbsp;&nbsp;USER<center>
					</span>
				</div>
                            <div class="form-style-8">
        <%
String userid=request.getParameter("demo"); 
String dn=request.getParameter("dn");
%>
  <form action="addlas.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" method="post">
	<label>UserId :</label>
           <input type="text" name="uid" placeholder="User ID" required/>
        <br><br><br><br>
	<label>Category :</label>
            <select id = "myList" name="cat">
        <option selected="selected" value = "9999">Select Category</option>
               <option value = "Department Incharge">Department Incharge</option>
               <option value = "Lab Assistent">Lab Assistent</option>
                              <option value = "Lab Incharge">Lab Incharge</option>
                   <option value = "HOD">HOD</option>
               <option value = "Principle">Principal</option>
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
</form>                       </div>
			</div>
		</div>
	</div>
</body>
</html>