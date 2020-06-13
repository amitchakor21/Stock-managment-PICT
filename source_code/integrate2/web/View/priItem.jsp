
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
    var x = document.forms["f1"]["cate"].value;
    if (x == "0") 
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
        form.action = "Pitempdf.jsp";
        form.target="_blank";
        
    }
}
    function handleClick2( form )
{
   var x = document.forms["f1"]["cate"].value;
    if (x == "0")
    {
        alert("Item category must be filled out");
        form.action = "#";
        form.target="Main";
         
    }
    else{
            form.action = "PitemChart.jsp";
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
						<center>Generate&nbsp&nbspItem &nbsp&nbspwise &nbsp&nbspReports<center>
					</span>
				</div>
                            <div class="form-style-8">
                               <%
//String userid=request.getParameter("demo"); 
//String dn=request.getParameter("dn");
%>
<form name="f1" method="POST"  >
   <span>
       <label style="width:20%;display: inline;font-size: 20px;">Item </label>    
    <select name="cate" id="cate" >
            <option value="0">Select item category</option>
            <%
                String q="select distinct sub_cat from items ";
               
try
{
    Class.forName("com.mysql.jdbc.Driver");
        java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99","");
        Statement st= con.createStatement();
        ResultSet rs=st.executeQuery(q);
        while(rs.next())
        {
            %>
        <option value="<%=rs.getString("sub_cat")%>"><%=rs.getString("sub_cat")%></option>
        <%
        }
        %>
            </select></span><%
}
                catch(Exception e)
                {
                    e.printStackTrace();
                }
                
            %>
        
            <br><br><br><br> 
            <h3>Select item status:</h3><br>
    <label class="container" style="font-size: 16px;font-weight:normal">Working
  <input type="radio"  name="radio" value="working">
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



