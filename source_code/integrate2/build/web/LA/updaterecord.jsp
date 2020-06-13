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
		data: "cat="+country,
		cache: false,
		success: function(response)
        {
            $(".state").html(response);
        }
    });
}
function state_change()
{
    var state = $(".state").val();
	
	$.ajax({
		type: "POST",
		url: "city.jsp",
		data: "sub_cat="+state,
		cache: false,
		success: function(response)
        {
            $(".city").html(response);
        }
    });
}
</script>

</head>
<body style="background:none;">	
	<div class="limiter">	
		<div class="container-login1001">
			<div class="wrap-login100">
                            <div class="login100-form-title" style="background-image: url(../../images/bg-01.jpg);">
					<span class="login100-form-title-1">
						<center>UPDATE&nbsp;&nbsp;ITEM<center>
					</span>
				</div>
                            <div class="form-style-8"> 
  <%
String userid=request.getParameter("demo"); 
String dn=request.getParameter("dn");
%> 
<form action="updateitemrecord.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" method="post">
             <h4 style="color:green;">ENTER DSRNO OF ITEM TO BE UPDATED :</h4><br><br>

                    
        <label>DSR NO :</label>
        <input type="text" name="dsrno" required="required" placeholder="DSR No"/>
        <br><br><br><br><br>      <h4 style="color:red;">ENTER NEW DATA FOR ENTERED DSRNO : </h4><br><br>

        <label>Status :</label>
        <select name="status">
               <option value="9999">Select status</option>
        <option value="working">Working</option>
        <option value="Not working">Not Working</option>
        </select>
                     <br><br><br><br>

        <label>Remark :</label>
        <textarea class="ta" name="rmk" required="required" placeholder="Remark"></textarea>
 <br><br><br><br>
        <label> Purchase Date :</label>            
        <input type="date" class="ta" name="pd" required placeholder=""/>
        <br><br><br><br>
        <label> Purchase Number :</label>            
        <input type="text" name="pn" required placeholder="Purchase Number"/>
        <br><br><br><br><br><br>
        <input type="submit" value="submit" />
        <input type="reset" value="reset" />
        <br><br>
        </form>
           </div>
	</div>
	</div>
	</div>
</body>
</html>