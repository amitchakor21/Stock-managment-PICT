<!DOCTYPE html>
<html style="overflow:hidden;">
    <head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/lablayout.css">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
<body style="background-image:url('images/campbg3.jpg');">
<div class="main">
    <div style="height:20%"><br>
        <h1><center><b>PUNE INSTITUTE OF COMPUTER TECHNOLOGY</b></center></h1>
    </div><div style="height:75%">
     <ul class="breadcrumb" style="background-color:#3db2e1;height:10%; border-radius: 0px; border: 1px solid transparent;">
    <li style="font-size:17px"><a href="#" style="color:white;">Home</a></li>
     <li style="font-size:17px;float: right;"><a href="http://localhost:8080/integrate2/index.jsp" style="color:white;">LogOut</a></li>

    </ul><div style="height:100%;">
        <iframe height="1000" style="width:82%" src="newjsp1.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" align="right" frameborder = "0"   name = "Main" allowtransparency="true">
        </iframe></div>		
        <div style="height:100%">
    <nav class="navigation"  style="background-color:none transparent;">
    <ul class="mainmenu" style="background-color:white;border-radius: 30px; border: 1px solid transparent;
    outline-style: outset;
    outline-color: transparent;">
  
        <li style="color:darkblue;margin-top: 15px;font-size: 17px;"><a href="" style="background-color:transparent;color:darkblue"><i class="fa fa-fw fa-user" ></i>My Profile</a>
      <ul class="submenu">
          <li style="font-size: 15px;"><a href="newjsp1.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" target = "Main">View Profile</a></li>
        <li style="font-size: 15px;"><a href="profile/updateprofile.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" target = "Main">Update Profile</a></li>
      </ul>
    </li>
    
    <li style="font-size: 17px;"><a href="" style="background-color:transparent;color:darkblue"><i class="fa fa-file-text"></i> Generate report</a>
      <ul class="submenu">
        <li style="font-size: 15px;"><a href="View/priItem.jsp"  target = "Main">Item wise</a></li>
        <li style="font-size: 15px;"><a href="View/priLab.jsp"  target = "Main">Lab wise</a></li>
        <li style="font-size: 15px;"><a href="View/priDept.jsp"  target = "Main">Department wise</a></li>
        <li style="font-size: 15px;"><a href="View/Pclg.jsp"  target = "Main">College wise</a></li>
      </ul>
    </li><br><br><br><br><br><br>
    </ul>  
</nav>
</div>
</div>
</body>
</html> 
