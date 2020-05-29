<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    
<title>Login</title>
    <link rel="stylesheet" type="text/css" href="style1.css">
<body>
    <form action="userlog.jsp" method="post">
    <div class="loginbox">
    <img src="avatar.png" class="avatar">
        <h1>Login Here</h1>
        
            <p>Username</p>
            <input type="text" name="user" placeholder="Enter Username" required>
            <p>Password</p>
            <input type="password" name="pass" placeholder="Enter Password" required>
            <input type="submit" name="" value="Login As User">
            <a href="register.jsp">Don't have an account?</a>
            
    
            
        
        
    </div>
    </form>
</body>
</head>

</html>