
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
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>

<%
try{
String addr=request.getParameter("add");
	
String workers=request.getParameter("worker");

String event1=request.getParameter("event");

String dishes1=request.getParameter("dishes");

String enjoy1=request.getParameter("enjoy");

String setup_plan1=request.getParameter("setup_plan");

String services1=request.getParameter("services");

String decor1=request.getParameter("decor");


Class.forName("com.mysql.jdbc.Driver"); 

java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/new","root","password"); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into new1 values ('"+addr+"')"); 

out.println("Registered"); 
}
catch(Exception e){}
%>


<div class="w3-top">
<div class="w3-bar w3-white w3-padding w3-card" >
<h1 class="w3-left"><b><i>EVENT PLANNERS</i></b></h1>
 
  <div class="w3-right w3-hide-small">
 <a href="index1.jsp" class="w3-bar-item w3-button">HOME</a>
 <a href="aboutus.jsp" class="w3-bar-item w3-button">OUR STORY</a>
  <a href="services.jsp" class="w3-bar-item w3-button">SERVICES</a>
   <a href="gallery.jsp" class="w3-bar-item w3-button">GALLERY</a>
<a href="contact1.jsp" class="w3-bar-item w3-button">CONTACT</a>
 <a href="index.jsp" class="w3-bar-item w3-button">LOGIN</a>
 </div>
 </div>
 </div>
       
 <h1><i>WELCOME USER</i></h1>
    <form class="w3-container" method="post" action="/cu.jsp" onsubmit="return validate()">
<br><br>
<fieldset>

<legend>Location</legend>
<input type="text" name="add" id="add" value="" size="50" />
<span id="addr" class="text-denger font-weight-bold"></span>
</fieldset>

<br><br>
<fieldset>
<legend>Number of workers you provide?</legend>
<select name=" worker">
<option value="" disabled selected>Choose your option</option>
<option>1</option>
<option>2</option>
<option>3</option>
<option>4</option>
<option>5</option>
</select>
</fieldset>

<br><br>
<fieldset>
<legend>Types of Events you provide?</legend>
<select name="event">
<option value="" disabled selected>Choose your option</option>
<option>Birthday</option>
<option>Engagement</option>
<option>Wedding</option>
<option>Get Together</option>
<option>Office Party</option>
<option>Graduation Party</option>
<option>Baby Shower</option>
<option>Naming Ceremony</option>
<option>Munj</option>
<option>Promotional Event</option>
<option>Corporate Event</option>
<option>Sangeet</option>
<option>Haldi Ceremony</option>
</select>
</fieldset>

<br><br>
<fieldset>
<legend>Do you provide catering service?</legend>
<input type="radio" name="service" id="service" value="yes">Yes
<input type="radio" name="service" id="service1" value="no">No
</fieldset>

<br><br>
<fieldset>
<legend>Which type of dishes do you provide in our catering service</legend>
<input type="checkbox" name="dishes" id="Pure Veg" />Pure Veg
<input type="checkbox" name="dishes" id="Non Veg" />Non Veg
<input type="checkbox" name="dishes" id="Chinese" />Chinese
<input type="checkbox" name="dishes" id="Italian" />Italian
<input type="checkbox" name="dishes" id="Mexican" />Mexican
<input type="checkbox" name="dishes" id="Continental" />Continental
</fieldset>

<br><br>
<fieldset>
<legend>Is there any service for enjoyment in the event?</legend>
<input type="radio" name="service" id="service" value="yes">Yes
<input type="radio" name="service" id="service1" value="no">No
<legend>Services you provide for enjoyment</legend>
<input type="checkbox" name="enjoy" id="Dance" />Dance
<input type="checkbox" name="enjoy" id="DJ" />DJ
<input type="checkbox" name="enjoy" id="Orchestra" />Orchestra
<input type="checkbox" name="enjoy" id="Stand-Up Comedy" />Stand-Up Comedy
<input type="checkbox" name="enjoy" id="Game Centre" />Game Centre
<input type="checkbox" name="enjoy" id="Kids section" />Kids section
<input type="checkbox" name="enjoy" id="Live Cartoon Character Dolls" />Live Cartoon Character Dolls
<input type="checkbox" name="enjoy" id="Band" />Band
<input type="checkbox" name="enjoy" id="Salon-SPA" />Salon-SPA
<input type="checkbox" name="enjoy" id="Photo Booth" />Photo Booth
</fieldset>

<br><br>
<fieldset>
<legend>Do you have CameraMan and Video Shooting service?</legend>
<input type="radio" name="services" id="service2" value="yes">Yes
<input type="radio" name="services" id="service3" value="no">No
<input type="checkbox" name="services" id="Photographer" />Photographer
<input type="checkbox" name="services" id="Videographer" />Videographer
</fieldset>

<br><br>
<fieldset>
<legend>Items you provide to plan for the Events!</legend>
<input type="checkbox" name="setup_plan" id="Guest Table" />Guest Table
<input type="checkbox" name="setup_plan" id="Cocktail Table" />Cocktail Table
<input type="checkbox" name="setup_plan" id="Food Tables" />Food Tables
<input type="checkbox" name="setup_plan" id="Chairs" />Chairs
<input type="checkbox" name="setup_plan" id="Table Cloth" />Table Cloth
<input type="checkbox" name="setup_plan" id="Chair Covers/Sashes" />Chair Covers/Sashes
<input type="checkbox" name="setup_plan" id="Napkins" />Napkins
<input type="checkbox" name="setup_plan" id="Favor Table" />Favor Table
<input type="checkbox" name="setup_plan" id="Chair Covers/Sashes" />Chair Covers/Sashes
<input type="checkbox" name="setup_plan" id="Gift Table" />Gift Table
<input type="checkbox" name="setup_plan" id="Place Cards" />Place Cards
<input type="checkbox" name="setup_plan" id="Menu Cards" />Menu Cards
</fieldset>

<br><br>
<fieldset>
<legend>Your Decor style!</legend>
<h3>Select your style!</h3>
<input type="checkbox" name="choice" id="Diyas" />Diyas
<input type="checkbox" name="choice" id="Candles" />Candles
<input type="checkbox" name="choice" id="Colorful Lamps" />Colorful Lamps
<input type="checkbox" name="choice" id="Colourful Drapes" />Colourful Drapes
<input type="checkbox" name="choice" id="Rangoli" />Rangoli
<input type="checkbox" name="choice" id="Flowers" />Flowers
<input type="checkbox" name="choice" id="Contempary Style" />Contempary Style
<input type="checkbox" name="choice" id="Sculptures" />Sculptures
<input type="checkbox" name="choice" id="Rental Props" />Rental Props
<input type="checkbox" name="choice" id="Dance Floor" />Dance Floor
<input type="checkbox" name="choice" id="Drops and Pops" />Drops and Pops
<input type="checkbox" name="choice" id="Arches" />Arches
</fieldset>
<br><br>
<div class="w3-container w3-center">
<button onclick="alert('Cleared Successfully!!')"class="w3-button w3-green w3-section" type="clear">CLEAR</button>
<button onclick="alert('Submitted Successfully!!')"class="w3-button w3-green w3-section" type="submit">SUBMIT</button>
</div>


</form>


</body>
</html>