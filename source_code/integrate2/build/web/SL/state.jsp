<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%
if(request.getParameter("dept_name")!=null) 
{
    String id=request.getParameter("dept_name"); //get country_id from index.jsp page with function country_change() through ajax and store in id variable
        
    try
    {
        Class.forName("com.mysql.jdbc.Driver"); //load driver
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99",""); //create connection
            
        PreparedStatement pstmt=null ; //create statement
                
        pstmt=con.prepareStatement("select lab_id,lab_name from labs where dept_name=? "); //sql select query
        pstmt.setString(1,id);
        ResultSet rs=pstmt.executeQuery(); //execute query and set in resultset object rs.
        %>        
        <option selected="selected" value="9999">--Select labs--</option>
        <%    
        while(rs.next())
        {
        %>        
            <option value="<%=rs.getString("lab_id")%>">
                <%=rs.getString("lab_name")%>
            </option>
        <%
        }
		
        con.close(); //close connection
    }
    catch(Exception e)
    {
        out.println(e);
    }
}
%>
