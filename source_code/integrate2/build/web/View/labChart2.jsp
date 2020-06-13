<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,java.sql.*" %>
    <%@ page import="com.google.gson.Gson"%>
    <%@ page import="com.google.gson.JsonObject"%>
      <%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%> 
        <%
           String dnm=request.getParameter("dn"); 
           String lab=request.getParameter("demo"); 
            Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99",""); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select count(status) from items where status='working' and dept_name="+dnm+" and lab_id="+lab+"");

        %>
    <!DOCTYPE HTML>
<html>
<head>  
<script>
window.onload = function () {

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
         exportEnabled: true,
	theme: "light2", // "light1", "light2", "dark1", "dark2"
	title:{
		text: "Status of working and non working Items"
	},
	axisY: {
		title: "Quantity"
	},
	data: [{        
		type: "column",  
		showInLegend: true, 
		legendMarkerColor: "grey",
		
		dataPoints: [
<%rs.next();%>
			{ y: <%=rs.getString(1)%>, label: "Working" },
                                <%ResultSet rs1=st.executeQuery("select count(status) from items where status='not working' and dept_name="+dnm+" and lab_id="+lab+"");rs1.next();%>
                        { y: <%=rs1.getString(1)%>, label: "Not Working" },
                        <%ResultSet rs2=st.executeQuery("select count(status) from items where status='Scrapped' and dept_name="+dnm+" and lab_id="+lab+"");rs2.next();%>
                        { y: <%=rs2.getString(1)%>, label: "Scrapped" },
                         <%ResultSet rs3=st.executeQuery("select count(status) from items where status='Transferred' and dept_name="+dnm+" and lab_id="+lab+"");rs3.next();%>
                        { y: <%=rs3.getString(1)%>, label: "Transferred" }
			
		]
	}]
});
chart.render();

};
</script>
</head>
<body>
<div id="chartContainer" style="height: 300px; width: 100%;"></div>
<script src="canvasjs.min.js"></script>
</body>
    </html>                  