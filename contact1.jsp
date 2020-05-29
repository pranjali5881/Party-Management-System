
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>atozknowledge.com demo Regjsp</title>


</head>

<link href="css/style.css" rel="stylesheet" type="text/css"/>
<style>

body {font-family: "Times New Roman", Georgia, Serif;}
h1,h2,h3,h4,h5,h6 {
    font-family: "Playfair Display";
    letter-spacing: 5px;
}
</style>
<body>
    <form action="myin.jsp" method="post">

<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%
try{
String name1=request.getParameter("name");
	
String email1=request.getParameter("email");

String phone1=request.getParameter("phone");

String subject1=request.getParameter("subject");

String message1=request.getParameter("msg");

Class.forName("com.mysql.jdbc.Driver"); 

java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/pranju","root",""); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into contact123 values ('"+name1+"','"+email1+"','"+phone1+"','"+subject1+"','"+message1+"')"); 

out.println("Registered"); 
}
catch(Exception e){}
%>

<!-- Navbar (sit on top) -->
<div class="w3-top">
  <div class="w3-bar w3-white w3-padding w3-card" >
      <h1 class="w3-left"><b><i>EVENT PLANNERS</i></b></h1>
    <!-- Right-sided navbar links. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
        <a href="mainpage.jsp" class="w3-bar-item w3-button">HOME</a>
      <a href="aboutus.jsp" class="w3-bar-item w3-button">OUR STORY</a>
      <a href="gallery.jsp" class="w3-bar-item w3-button">GALLERY</a>
      <a href="contact1.jsp" class="w3-bar-item w3-button">CONTACT</a>
         <div class="w3-dropdown-hover">
  <button class="w3-button">SERVICES</button>
  <div class="w3-dropdown-content w3-bar-block w3-border">
    <a href="services1.jsp" class="w3-bar-item w3-button">WEDDING</a>
    <a href="services2.jsp" class="w3-bar-item w3-button">SOCIAL EVENTS</a>
    <a href="services3.jsp" class="w3-bar-item w3-button">CORPORATE EVENTS</a>
    </div>
</div> 
                       
        
        <div class="w3-dropdown-hover">
  <button class="w3-button">LOGIN</button>
  <div class="w3-dropdown-content w3-bar-block w3-border">
    <a href="adminlogin.jsp" class="w3-bar-item w3-button">ADMIN LOGIN</a>
    <a href="userlogin.jsp" class="w3-bar-item w3-button">USER LOGIN</a>
    
    </div>
</div> 
        
        
                                 <div class="w3-dropdown-hover">
  <button class="w3-button">ORGANIZER</button>
  <div class="w3-dropdown-content w3-bar-block w3-border">
    <a href="cetring.jsp" class="w3-bar-item w3-button">CATERING </a>
    <a href="decoration.jsp" class="w3-bar-item w3-button">DECORATION</a>
    
    </div>
</div>  
       
    </div>
  </div>
</div>
    <div class="w3-container">
 
  <p>Come enjoy every happy moment with us....</p>
  <img src="images/c1.jpg" alt="Lights" class="w3-image" width="1600" height="400" style="width:100%">
</div>
      
<div class="w3-content" style="max-width:1100px">
        <hr>

  <!-- Contact Section -->
  <div class="w3-container w3-padding-64" id="contact">
   <h1>CONTACT US</h1><br>
    <p>EMS events provides services for wedding planning,corporate event management,brand promotions,and entertainment in fact one-stop-solutions to all your event management needs.</p>
    <p class="w3-text-blue-grey w3-large"><b>EMS,Pune-33</b></p>
    <p>You can also contact us by phone 00553123-2323 or email ems@gmail.com, or you can send us a message here:</p>

      <p><input class="w3-input w3-padding-16" type="text" id="name" placeholder="name" name="name"></p>
      
      <p><input class="w3-input w3-padding-16" type="text" id="sname" placeholder="email" name="email"></p>
      
      <p><input class="w3-input w3-padding-16" type="text" id="sname" placeholder="phone" name="phone" ></p>
      
      <p><input class="w3-input w3-padding-16" type="text" id="sname" placeholder="subject" name="subject"></p>
      
      <p><input class="w3-input w3-padding-16" type="text" id="sname" placeholder="message" name="msg"></p>
      
      <p><button class="w3-button w3-light-grey w3-section" type="submit">SEND MESSAGE</button></p>
    </form>
  </div>
  
<!-- End page content -->
</div>

    </form>
</body>
</html>