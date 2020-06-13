
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en"style="overflow:hidden">
<head>
	<title>Login Stock</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../css/util.css">
	<link rel="stylesheet" type="text/css" href="../css/dummy.css">
        <link rel="stylesheet" type="text/css" href="view.css">
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


    function handleClick1( form )
{
    var x = document.forms["f1"]["dept_name"].value;
     var y = document.forms["f1"]["subcategory"].value;
    if (x == "9999" | y == "9999")
    {
        alert("Item category and subcategory must be filled out");
        form.action = "#";
        form.target="Main";
    }
    else
    {
        form.action = "Plabpdf.jsp";
        form.target="_blank";
        
    }
}
    function handleClick2( form )
{
   var x = document.forms["f1"]["dept_name"].value;
   var y = document.forms["f1"]["subcategory"].value;
    if (x == "9999" | y == "9999")
    {
        alert("Item category and subcategory must be filled out");
        form.action = "#";
        form.target="Main";
         
    }
    else{
            form.action = "PlabChart.jsp";
            form.target="_blank";
           
        }
}
    </script>

</head>
<body style="background:none;">	
	<div class="limiter">	
		<div class="container-login1001">
			<div class="wrap-login100">
                            <div class="login100-form-title" style="background-image: url(../images/bg-01.jpg);">
					<span class="login100-form-title-1">
						<center>Generate &nbspLab &nbspwise &nbspReports<center>
					</span>
				</div>
                            <div class="form-style-8">
                               <%
//String userid=request.getParameter("demo"); 
//String dn=request.getParameter("dn");
%>
<form name="f1" method="POST" >
   <%
    if(null!=request.getAttribute("errorMessage"))
    {%>
         <h3><%=request.getAttribute("errorMessage") %></h3><%
    }

%>
   <label style="width:20%;display: inline;font-size: 17px;">Department </label> 
    <select class="country" onchange="country_change()" name="dept_name" >
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

    <label style="width:20%;display: inline;font-size: 17px;">Lab </label> 
        <select class="state"  name="subcategory" >
    <option selected="selected" value="9999">Select Lab</option>
    </select>        <br><br><br><br>

   
        <input type='submit' value='PDF' onclick=handleClick1(this.form)>
<input type='submit' style="background-color:crimson; border:none"   value='Graph' onclick=handleClick2(this.form)>  
        <input type="Reset" value="Reset" />
        <br><br>
    

       
</form>
                            </div>
			</div>
		</div>
	</div>
</body>
</html>



