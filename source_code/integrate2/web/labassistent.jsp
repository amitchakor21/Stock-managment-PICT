<!DOCTYPE html>
<html style="overflow: hidden">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>    
h1{color:white;}
html, body 
{
    font-family: Arial, Helvetica, sans-serif;
}
body {

		font-family: Arial, Helvetica, sans-serif;
		background-image: url("images/campbg3.jpg");
  		background-size: 100% 100%;
  		background-repeat: no-repeat;
		
	}

/* define a fixed width for the entire menu */
.navigation {
  width: 300px;
  height: 100px;
}

/* reset our lists to remove bullet points and padding */
.mainmenu, .submenu {
  list-style: none;
  padding: 0;
  margin: 0;
}

/* make ALL links (main and submenu) have padding and background color */
.mainmenu a {
  display: block;
  background-color: #3498DB;
  text-decoration: none;
  padding: 10px;
  color: #000;
}

/* add hover behaviour */
.mainmenu a:hover {
    background-color: #3498DB;
}


/* when hovering over a .mainmenu item,
  display the submenu inside it.
  we're changing the submenu's max-height from 0 to 200px;
*/

.mainmenu li:hover .submenu {
  display: block;
  max-height: 200px;
}

/*
  we now overwrite the background-color for .submenu links only.
  CSS reads down the page, so code at the bottom will overwrite the code at the top.
*/

.submenu a {
  background-color:#D6EAF8;
}

/* hover behaviour for links inside .submenu */
.submenu a:hover {
  background-color: #3498DB;
}

/* this is the initial state of all submenus.
  we set it to max-height: 0, and hide the overflowed content.
*/
.submenu {
  overflow: hidden;
  max-height: 0;
  -webkit-transition: all 0.5s ease-out;
}
</style>
<style>
body {font-family: Arial, Helvetica, sans-serif;}

.navbar {
  width: 100%;
  background-color: #555;
  overflow: auto;
}

.navbar a {
  float: left;
  padding: 12px;
  color: white;
  text-decoration: none;
  font-size: 17px;
}

.navbar a:hover {
  background-color: #000;
}
.dropdown {
    float: left;
    overflow: hidden;
}

.dropdown .dropbtn {
    font-size: 16px;    
    border: none;
    outline: none;
    color: white;
    padding: 14px 16px;
    background-color: inherit;
    font-family: inherit;
    margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
    background-color: red;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    float: none;
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: #ddd;
}

.dropdown:hover .dropdown-content {
    display: block;
}
.active {
  background-color: #4CAF50;
}

@media screen and (max-width: 500px) {
  .navbar a {
    float: none;
    display: block;
  }
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
ul.breadcrumb {
    padding: 10px 16px;
    list-style: none;
    background-color: #eee;
}
ul.breadcrumb li {
    display: inline;
    font-size: 18px;
}
ul.breadcrumb li+li:before {
    padding: 8px;
    color: black;
}
ul.breadcrumb li a {
    color: #0275d8;
    text-decoration: none;
}
ul.breadcrumb li a:hover {
    color: #01447e;
    text-decoration: underline;
}
</style>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<body>
<div class="main">
    <div style="height:20%"><br>
        <h1><center><b>PUNE INSTITUTE OF COMPUTER TECHNOLOGY</b></center></h1>
    </div><div style="height:75%">
     <ul class="breadcrumb" style="background-color:#3db2e1;height:10%; border-radius: 0px; border: 1px solid transparent;">
    <li style="font-size:17px"><a href="#" style="color:white;">Home</a></li>
     <li style="font-size:17px;float: right;"><a href="http://localhost:8080/integrate2/index.jsp" style="color:white;">LogOut</a></li>

    </ul><div style="height:100%;">
        <iframe height="480" style="width:82%" src="las.html" align="right" frameborder = "0"   name = "Main" allowtransparency="true">
        </iframe></div>		
        <div style="height:100%">
    <nav class="navigation"  style="background-color:none transparent;">
    <ul class="mainmenu" style="background-color:white;border-radius: 30px; border: 1px solid transparent;
    outline-style: outset;
    outline-color: transparent;">
  
    <li style="font-size:17px;margin-top: 15px;"><a href="" style="background-color:transparent;color:darkblue;"><i class="fa fa-fw fa-user"></i>My Profile</a>
      <ul class="submenu">
        <li style="font-size:15px"><a href="profile/Myprofile.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" target = "Main"> View Profile</a></li>
        <li style="font-size: 15px;"><a href="profile/updateprofile.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" target = "Main">Update Profile</a></li>
      </ul>
    </li>
    <li style="font-size:17px"><a href="" style="background-color:transparent;color:darkblue;"><i class="fa fa-fw fa-user"></i> Item</a>
      <ul class="submenu">
        <li style="font-size:15px"><a href="LA/index.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" target = "Main">Add</a></li>
        <li style="font-size:15px"><a href="LA/updaterecord.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" target = "Main">Update</a></li>
        <li style="font-size:15px"><a href="LA/deleteitem.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" target = "Main">Delete</a></li>
        <li style="font-size:15px"><a href="LA/trans.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" target = "Main">Transfer</a></li>

      </ul>
    </li> 
    <li style="font-size:17px"><a href="" style="background-color:transparent;color:darkblue;"><i class="fa fa-file-text"></i> Repair ( Item ) </a>
      <ul class="submenu">
        <li style="font-size:15px"><a href="repair1/repairs.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>"  target = "Main"> Send ( Item ) </a></li>
        <li style="font-size:15px"><a href="repair1/repairr.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>"  target = "Main"> Receive ( Item ) </a></li>

      </ul>
    </li>
    <li style="font-size:17px"><a href="" style="background-color:transparent;color:darkblue;"><i class="fa fa-file-text"></i> View and Generate report</a>
      <ul class="submenu">
         <li style="font-size: 15px;"><a href="View/labItem.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>"  target = "Main">Item wise</a></li>
        <li style="font-size: 15px;"><a href="View/labStatus.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>"  target = "Main">Status wise</a></li>
        <li style="font-size: 15px;"><a href="View/viewHistory.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>"  target = "Main">View History Card</a></li>
      </ul>
    </li>
    <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
  </ul>  
</nav>
</div>
</div>
</body>
</html> 
