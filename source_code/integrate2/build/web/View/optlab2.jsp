
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en" style="overflow:hidden">
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
    var x = document.forms["f1"]["labn"].value;
    if (x == "9999") 
    {
        alert("Item category must be filled out");
        form.action = "#";
        form.target="Main";
    }
    else
    {
        form.action = "labpdf3.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>";
        form.target="_blank";
        
    }
}
    function handleClick2( form )
{
    var x = document.forms["f1"]["labn"].value;
    if (x == "9999") 
    {
        alert("Item category must be filled out");
        form.action = "#";
        form.target="Main";
    }
    else
    {
        form.action = "hodLabChart2.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>";
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
						<center>Generate Lab wise Reports for department <%=request.getParameter("dn")%><center>
					</span>
				</div>
                            <div class="form-style-8">
                                <%
String userid=request.getParameter("demo"); 
String dnm=request.getParameter("dn");
%>
  <form name="f1"  method="post" >
	
      <b>Lab : </b>
    <select class="country"  name="labn">
               <option selected="selected" value="9999">Select Lab</option>
    
    <%
    try
    {
        Class.forName("com.mysql.jdbc.Driver"); //load driver
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99",""); //create connection
                
        PreparedStatement pstmt=null ; //create statement
                
        pstmt=con.prepareStatement("select distinct lab_id from labs where lab_name!='None'"); //sql select query
        ResultSet rs=pstmt.executeQuery(); //execute query and set in resultset object rs.
                
        while(rs.next())
        {
        %>
            <option value="<%=rs.getString("lab_id")%>">
                <%=rs.getString("lab_id")%>
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



