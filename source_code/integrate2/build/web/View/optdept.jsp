
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
form.action = "deptpdf.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>";
form.target="_blank";
form.submit();
}
    function handleClick2( form )
{
form.action = "hoddeptChart.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>";
form.target="_blank";
form.submit();
}
    </script>

</head>
<body style="background:none;">	
	<div class="limiter">	
		<div class="container-login1001">
			<div class="wrap-login100">
                            <div class="login100-form-title" style="background-image: url(../images/bg-01.jpg);">
					<span class="login100-form-title-1">
					<center>Generate Status wise Reports for department <%=request.getParameter("dn")%><center>
					</span>
				</div>
                            <div class="form-style-8">
                                <%
//
%>

   
<form name="f1" method="POST"  >
    
    
    <h3>Select item status: 
</h3>
    <br>
 <label class="container">Working
  <input type="radio" checked="checked" name="radio" value="working">
  <span class="checkmark"></span>
</label>
    <label class="container">Not Working
  <input type="radio" name="radio" value="not working">
  <span class="checkmark"></span>
</label>
    <label class="container">Scrapped
  <input type="radio" name="radio" value="scrapped">
  <span class="checkmark"></span>
</label>
    
     <label class="container">Transferred
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



