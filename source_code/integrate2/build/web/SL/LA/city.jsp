<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%
if(request.getParameter("cat")!=null) 
{
    String id=request.getParameter("cat"); //get state_id from index.jsp page with function state_change() through ajax and store in id variable.
        
    try
    {
        Class.forName("com.mysql.jdbc.Driver"); //load driver
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/stockd2","root99",""); //create connection
            
        PreparedStatement pstmt=null ; //create statement
                
        pstmt=con.prepareStatement("select distinct sub_cat from category where cat=? "); //sql select query
        pstmt.setString(1,id);
        ResultSet rs=pstmt.executeQuery(); //execute query and set in resultset object rs.
        %>        
            <option selected="selected">--Select Type--</option>
        <%    
        while(rs.next())
        {
        %> 
            <option value="<%=rs.getString("sub_cat")%>">
                <%=rs.getString("sub_cat")%>
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
