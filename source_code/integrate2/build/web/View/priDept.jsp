
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
<script>
    function handleClick1( form )
{
    var x = document.forms["f1"]["category"].value;
    if (x == "9999") 
    {
        alert("Item category must be filled out");
        form.action = "#";
        form.target="Main";
    }
    else if ( ( form.radio[0].checked == false ) && ( form.radio[1].checked == false ) && ( form.radio[2].checked == false ) && ( form.radio[3].checked == false )  )
    {
        alert ( "Please choose the item status." );
        form.action = "#?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>";
        form.target="Main";
    }
    else
    {
        form.action = "Pdeptpdf.jsp";
        form.target="_blank";
        
    }
}
    function handleClick2( form )
{
   var x = document.forms["f1"]["category"].value;
    if (x == "9999")
    {
        alert("Item category must be filled out");
        form.action = "#";
        form.target="Main";
         
    }
    else{
            form.action = "PdeptChart.jsp";
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
						<center>Generate &nbsp&nbspdepartment&nbsp&nbsp wise&nbsp&nbsp reports<center>
					</span>
				</div>
                            <div class="form-style-8">
                                <%
//String userid=request.getParameter("demo"); 
//String dn=request.getParameter("dn");
%>
<form name="f1" method="POST" action="Pdeptpdf.jsp" target="_blank">
    <%
    if(null!=request.getAttribute("errorMessage"))
    {%>
         <h3><%=request.getAttribute("errorMessage") %></h3><%
    }

%>
<label style="width:20%;display: inline;font-size: 17px;">Department </label>
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
    <h3>Select item status:</h3>
    <br>
    <label class="container" style="font-size: 16px;font-weight:normal;font-weight: normal">Working
  <input type="radio"   name="radio" value="working">
  <span class="checkmark"></span>
</label>
    <label class="container" style="font-size: 16px;font-weight:normal">Not Working
  <input type="radio" name="radio" value="not working">
  <span class="checkmark"></span>
</label>
    <label class="container" style="font-size: 16px;font-weight:normal">Scrapped
  <input type="radio" name="radio" value="scrapped">
  <span class="checkmark"></span>
</label>
    
     <label class="container" style="font-size: 16px;font-weight:normal">Transferred
  <input type="radio" name="radio" value="transferred">
  <span class="checkmark"></span>
</label>

        <input type='submit' value='PDF' onclick=handleClick1(this.form)>
          <input type='submit' style="background-color:crimson; border:none"   value='Overall Graph' onclick=handleClick2(this.form)>
        <input type="Reset" value="Reset" />
        <br><br>
</form>
                            </div>
			</div>
		</div>
	</div>
</body>
</html>



