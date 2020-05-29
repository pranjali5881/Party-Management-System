<%-- 
    Document   : insertuser
    Created on : Oct 13, 2019, 10:56:05 PM
    Author     : Pranjali
--%>

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
            String name=request.getParameter("name");
            String mob=request.getParameter("mob");
            
            
            
            
            Class.forName("com.mysql.jdbc.Driver");  
        Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/pranju","root","");  
        PreparedStatement ps=(PreparedStatement)con.prepareStatement("insert into userd values(?,?,?,?)");
         ps.setString(1,name);
          ps.setString(2,mob);
          ps.setString(3,user);
          ps.setString(4,pass);
          
         int x=ps.executeUpdate();
       
        
        if(x==1)
        {
            response.sendRedirect("userhome.jsp");
        }
        else
        {
            response.sendRedirect("userlogin.jsp");
        }
        
  %>
  
    </body>
</html>
