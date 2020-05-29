<%-- 
    Document   : conform
    Created on : Oct 13, 2019, 9:04:55 AM
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
    <body bgcolor="red">
        <%
            HttpSession hs=request.getSession(true);
            int id=Integer.parseInt(hs.getAttribute("id").toString());
            int fbill=Integer.parseInt(hs.getAttribute("fbill").toString());
            
            
            Class.forName("com.mysql.jdbc.Driver");  
        Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/pranju","root",""); 
       
         PreparedStatement ps=(PreparedStatement)con.prepareStatement("update user1 set fbill=? where id=?");
         ps.setInt(1,fbill);
         ps.setInt(2,id);
         ps.executeUpdate();
            
            
            %>
            <form action="userhome.jsp" method="post">
                User Id:<%=id%><br><br>
            User Final Bill:<%=fbill%><br>
            Enter ACC NO CODE:<input type="text" name="code"><br>
            <input type="submit" value="submit">
            </form>
            
    </body>
</html>
