<%-- 
    Document   : myin
    Created on : 3 Nov, 2019, 11:38:53 AM
    Author     : pranjali
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            
String name1=request.getParameter("name");
	
String email1=request.getParameter("email");

String phone1=request.getParameter("phone");

String subject1=request.getParameter("subject");

String message1=request.getParameter("msg");

Class.forName("com.mysql.jdbc.Driver"); 

java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pranju","root",""); 
Statement st=(Statement) con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into contact123 values ('"+name1+"','"+email1+"','"+phone1+"','"+subject1+"','"+message1+"')"); 


response.sendRedirect("mainpage.jsp");


%>


    </body>
</html>
