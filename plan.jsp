<%-- 
    Document   : plan
    Created on : Oct 11, 2019, 11:00:23 PM
    Author     : P-Square
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
                int h=0;
                int c=0;
                int d=0;
            
            String name=request.getParameter("name");
            int id=Integer.parseInt(request.getParameter("id"));
            
            String user=request.getParameter("user");
            String pass=request.getParameter("pass");
            
            int veg=Integer.parseInt(request.getParameter("veg"));
            int non=Integer.parseInt(request.getParameter("non"));
            int starter=Integer.parseInt(request.getParameter("starter"));
            
            
            
            
            
            
            
            
            
        
         Class.forName("com.mysql.jdbc.Driver");  
        Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/pranju","root",""); 
       
         PreparedStatement ps=(PreparedStatement)con.prepareStatement("insert into cetring values(?,?,?,?,?,?,?)");
         
                 ps.setInt(1,id);
        ps.setString(2,name);
        
        ps.setInt(3,veg);
        ps.setInt(4,non);
        ps.setInt(5,starter);
        ps.setString(6,user);
        ps.setString(7,pass);
        
        
        
        ps.executeUpdate();
       
        
         String redirectURL = "mainpage.jsp";
         
        response.sendRedirect(redirectURL);

        
        
            
            %>
    </body>
</html>
