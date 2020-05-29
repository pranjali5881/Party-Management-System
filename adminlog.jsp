<%-- 
    Document   : adminlog
    Created on : Oct 13, 2019, 10:27:11 PM
    Author     : P-Square
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String user=request.getParameter("user");
            String pass=request.getParameter("pass");
            Class.forName("com.mysql.jdbc.Driver");  
        Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/pranju","root","");  
        PreparedStatement ps=(PreparedStatement)con.prepareStatement("select * from admin where user=? and pass=?");
         ps.setString(1,user);
          ps.setString(2,pass);
         
       
        ResultSet rs=ps.executeQuery();
        if(rs.next())
        {
            response.sendRedirect("adminhome.jsp");
        }
        else
        {
            response.sendRedirect("adminlogin.jsp");
        }
        
       
        
        
        %>

           
    </body>
</html>
