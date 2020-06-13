<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*,java.sql.*" %>
    <%@ page import="com.google.gson.Gson"%>
    <%@ page import="com.google.gson.JsonObject"%>
      <%@ page import="java.sql.*"%>
	<%@ page import="javax.sql.*"%> 
        <%
           String dnm=request.getParameter("dn"); 
           String cate=request.getParameter("cate"); 
            Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99",""); 
Statement st= con.createStatement(); 
ResultSet rs=st.executeQuery("select count(status) from items join category on(items.type=category.type) where status='working' and category.dept_name="+dnm+" and category.sub_cat='"+cate+"'");

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
                                <%ResultSet rs1=st.executeQuery("select count(status) from items join category on(items.type=category.type) where status='not working' and category.dept_name="+dnm+" and category.sub_cat='"+cate+"'");rs1.next();%>
                        { y: <%=rs1.getString(1)%>, label: "Not Working" },
                                 <%ResultSet rs2=st.executeQuery("select count(status) from items join category on(items.type=category.type) where status='Scrapped' and category.dept_name="+dnm+" and sub_cat='"+cate+"'");rs2.next();%>
                 
			
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