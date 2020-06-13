<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html style="overflow:hidden;">
<head>
	<title>Login Stock</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">

<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="../../css/util.css">
	<link rel="stylesheet" type="text/css" href="../../css/dummy.css">
        <link rel="stylesheet" type="text/css" href="../../View/view.css">
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


</head>
<body style="background:none;">	
	<div class="limiter">	
		<div class="container-login1001">
			<div class="wrap-login100">
                            <div class="login100-form-title" style="background-image: url(../../images/bg-01.jpg);">
					<span class="login100-form-title-1">
						<center>ADD&nbsp;&nbsp;ITEM&nbsp;&nbsp;CATEGORY<center>
					</span>
				</div>
                            <div class="form-style-8"> 
            <%
String userid=request.getParameter("demo"); 
%>    
 <form action="addcat2.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" method="post">    
	       

            <label>Category :</label>
        <input type="text" name="catg" required placeholder="Category"/>
    <br><br><br><br>
    <label>Subcategory :</label>
        <input type="text" name="scatg" required placeholder="SubCategory"/>
    <br><br><br><br>
    <label>Type :</label>
        <input type="text" name="typ" required placeholder="Type"/>
    <br><br><br><br>
<label>Enter Manufacturer :</label>
<input type="text" name="mech" required="required" placeholder="Manufacturer"/>
<br> <br><br><br>

<label>Enter Specifications :</label>
<input type="text" name="spec" required="required" placeholder="Specification"/>
<br> <br><br><br>
    
    <input type="submit" value="Submit" />
    <input type="Reset" value="Reset" />
    <br><br>
    </div></div></div>
</form>        </div>
			</div>
		</div>
	</div>
</body>
</html>