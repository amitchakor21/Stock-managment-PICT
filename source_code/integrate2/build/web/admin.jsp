<!DOCTYPE html>
<html style="overflow:hidden;">
    <head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/lablayout.css">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    </head>
<body style="background-image:url('images/campbg3.jpg'); overflow-y: hidden">
<div class="main">
    <div style="height:20%"><br>
        <h1><center><b>PUNE INSTITUTE OF COMPUTER TECHNOLOGY</b></center></h1>
    </div><div style="height:75%">
     <ul class="breadcrumb" style="background-color:#3db2e1;height:10%; border-radius: 0px; border: 1px solid transparent;">
    <li style="font-size:17px"><a href="#" style="color:white;">Home</a></li>
     <li style="font-size:17px;float: right;"><a href="http://localhost:8080/integrate2/index.jsp" style="color:white;">LogOut</a></li>

    </ul><div style="height:100%;">
        
        <iframe height="492" style="width:80%;" src="indexadmin.html?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" align="right" frameborder = "0"   name = "Main" allowtransparency="true">
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
    <li style="font-size: 17px;"><a href="" style="background-color:transparent;color:darkblue"><i class="fa fa-fw fa-user"></i> User</a>
      <ul class="submenu">
        <li style="font-size: 15px;"><a href="SL/addla.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" target = "Main">Add</a></li>
        <li style="font-size: 15px;"><a href="SL/updatela.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" target = "Main">Update</a></li>
        <li style="font-size: 15px;"><a href="SL/deluser.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" target = "Main">Delete</a></li>
      </ul>
    </li> 
    <li style="font-size: 17px;"><a href="" style="background-color:transparent;color:darkblue"><i class="fa fa-fw fa-user"></i> Department</a>
      <ul class="submenu">
        <li style="font-size: 15px;"><a href="SL/DEPT/index.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" target = "Main">Add</a></li>
        <li style="font-size: 15px;"><a href="SL/DEPT/updatecath.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" target = "Main">Update</a></li>
      </ul>
    </li> 
        <li style="font-size: 17px;"><a href="" style="background-color:transparent;color:darkblue"><i class="fa fa-fw fa-user"></i> Laboratory</a>
      <ul class="submenu">
         <li style="font-size: 15px;"><a href="SL/addlab.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" target = "Main">Add</a></li>
        <li style="font-size: 15px;"><a href="SL/updatelab.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" target = "Main">Update</a></li>
        <li style="font-size: 15px;"><a href="SL/della.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" target = "Main">Delete</a></li>
 </ul>
    </li> 
    <li style="font-size: 17px;"><a href="" style="background-color:transparent;color:darkblue"><i class="fa fa-fw fa-user"></i> Item</a>
      <ul class="submenu">
        <li style="font-size: 15px;"><a href="SL/LA/index.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" target = "Main">Add</a></li>
        <li style="font-size: 15px;"><a href="SL/LA/updaterecord.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" target = "Main">Update</a></li>
        <li style="font-size: 15px;"><a href="SL/LA/deleteitem.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" target = "Main">Delete</a></li>
        <li style="font-size: 15px;"><a href="SL/LA/trans.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" target = "Main">Transfer</a></li>
      </ul>
    </li> 
    
    
    <li style="font-size:17px"><a href="" style="background-color:transparent;color:darkblue;"><i class="fa fa-file-text"></i> Repair ( Item ) </a>
      <ul class="submenu">
        <li style="font-size:15px"><a href="repair/repairs.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>"  target = "Main"> Send ( Item ) </a></li>
        <li style="font-size:15px"><a href="repair/repairr.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>"  target = "Main"> Receive ( Item ) </a></li>

      </ul>
    </li>
    
    <li style="font-size: 17px;"><a href="" style="background-color:transparent;color:darkblue"><i class="fa fa-fw fa-user"></i> Item Category</a>
      <ul class="submenu">
        <li style="font-size: 15px;"><a href="DEPTF/CAT/index.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" target = "Main">Add</a></li>
        <li style="font-size: 15px;"><a href="DEPTF/CAT/updatecath.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>" target = "Main">Update</a></li>
      </ul>
    </li> 
    <li style="font-size: 17px;"><a href="" style="background-color:transparent;color:darkblue"><i class="fa fa-file-text"></i> Generate report</a>
      <ul class="submenu">
       <li style="font-size: 15px;"><a href="View/optitem2.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>"  target = "Main">Item wise</a></li>
        <li style="font-size: 15px;"><a href="View/optlab2.jsp?demo=<%=request.getParameter("demo")%>&dn=<%=request.getParameter("dn")%>&useri=<%=request.getParameter("useri")%>"  target = "Main">Lab wise</a></li>
   
      </ul>
    </li><br><br><br><br><br><br><br>
    </ul>  
</nav>
</div>
</div>
</body>
</html> 
