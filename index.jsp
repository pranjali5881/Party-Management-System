<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Login</title>
    <link rel="stylesheet" type="text/css" href="style1.css">
<body>
    <div class="loginbox">
    <img src="avatar.png" class="avatar">
        <h1>Login Here</h1>
        
            <p>Username</p>
            <input type="text" name="" placeholder="Enter Username">
            <p>Password</p>
            <input type="password" name="" placeholder="Enter Password">
            <form action="customer.jsp"><input type="submit" name="" value="Login As Customer"></form>
            <form action="organizer.jsp"><input type="submit" name="" value="Login As Organizer"></form>
            
            <a href="register.jsp">Don't have an account?</a>
        
        
    </div>

</body>
</head>

</html>