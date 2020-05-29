
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script type="text/javascript">
function validate()
{
	var addr= document.getElementById("add").value;
	
	var choice1= document.getElementById("Pure Veg").checked;
	var choice2= document.getElementById("Non Veg").checked;
	var choice3= document.getElementById("Chinese").checked;
	var choice4= document.getElementById("Italian").checked;
	var choice5= document.getElementById("Mexican").checked;
	var choice6= document.getElementById("Continental").checked;
	var choice7= document.getElementById("Dan").checked;
	var choice8= document.getElementById("DJ").checked;
	var choice9= document.getElementById("Orch").checked;
	var choice10= document.getElementById("Stand").checked;
	var choice12= document.getElementById("Game").checked;
	var choice13= document.getElementById("Kids").checked;
	var choice11= document.getElementById("LiveC").checked;
	var choice40= document.getElementById("Band").checked;
	var choice14= document.getElementById("SalonSPA").checked;
	var choice15= document.getElementById("PhotoBooth").checked;
	var choice16= document.getElementById("Photographer").checked;
	var choice17= document.getElementById("Videographer").checked;
	var choice18= document.getElementById("Gsttab").checked;
	var choice19= document.getElementById("cocktab").checked;
	var choice20= document.getElementById("footab").checked;
	var choice41= document.getElementById("Chairs").checked;
	var choice21= document.getElementById("tabclo").checked;
	var choice22= document.getElementById("chaicov").checked;
	var choice23= document.getElementById("Napkins").checked;
	var choice24= document.getElementById("favtab").checked;
	var choice25= document.getElementById("gif").checked;
	var choice26= document.getElementById("plac").checked;
	var choice27= document.getElementById("meca").checked;
	var choice28= document.getElementById("diy").checked;
	var choice29= document.getElementById("Can").checked;
	var choice30= document.getElementById("Colam").checked;
	var choice31= document.getElementById("Cold").checked;
	var choice32= document.getElementById("Rang").checked;
	var choice33= document.getElementById("Flow").checked;
	var choice34= document.getElementById("Const").checked;
	var choice35= document.getElementById("Scul").checked;
	var choice36= document.getElementById("Renpr").checked;
	var choice37= document.getElementById("Danfl").checked;
	var choice38= document.getElementById("Dropr").checked;
	var choice39= document.getElementById("Arches").checked;
	
	if((choice1=="") && (choice2=="") && (choice3=="") && (choice4=="") && (choice5=="") && (choice6==""))
	{
	alert("Choose atleast one of your dish for catering service");
	return false;
	}
	
	else if((choice7=="") && (choice8=="") && (choice9=="") && (choice10=="") && (choice11=="") &&(choice40=="") && (choice12=="") && (choice13=="")&& (choice14=="") && (choice15==""))
	{
	alert("Choose atleast one of your enjoyment service");
	return false;
	}
	else if((choice16=="") && (choice17==""))
	{
	alert("Choose atleast one of the shooting service");
	return false;
	}
	else if((choice18=="") && (choice19=="") && (choice20=="") && (choice41=="") && (choice21=="") && (choice22=="") && (choice23=="") && (choice24=="") && (choice25=="") && (choice26=="") && (choice27==""))
	{
	alert("Choose atleast one of the setup plan service");
	return false;
	}
		
	if((choice28=="") && (choice29=="") && (choice30=="") && (choice31=="") && (choice32=="") && (choice33=="") && (choice34=="") && (choice35=="") && (choice36=="") && (choice37=="") && (choice38=="") && (choice39==""))
	{
	alert("Choose atleast one of your decor service");
	return false;
	}
	
	else
		{
	return true;
		}
	
}
</script>
<title>W3.CSS Template</title>
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
 <a href="login.jsp" class="w3-bar-item w3-button">LOGIN</a>
 </div>
 </div>
 </div>
       
 <h1><i>WELCOME USER</i></h1>
    <form class="w3-container" method="post"  onsubmit="return validate()"action="/action_page.php" target="blank">
<br><br>
<fieldset>

<legend>Enter your address</legend>
<input type="text" name="add" id="add" value="" size="50" autocomplete="off" required />

<span id="addr" class="text-denger font-weight-bold"></span>
</fieldset>

<br><br>
<fieldset>
<legend>How many workers do you require?</legend>
<select name=" worker" required>
<option value="" disabled selected>Choose your option</option>
<option value="0">0</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
<option value="4">4</option>
<option value="5">5</option>
</select>
</fieldset>

<br><br>
<fieldset>
<legend>So what's your Planned Event?</legend>
<select name="event" required>
<option value="" disabled selected >Choose your option</option>
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
<legend>Do you want catering service?</legend>
<input type="radio" name="service" id="service" value="yes" >Yes
<input type="radio" name="service" id="service1" value="no">No
</fieldset>


<br><br>
<fieldset>

<legend>Which type of dishes should we provide in our catering service </legend>
<input type="checkbox" name="dishes" id="Pure Veg" />Pure Veg
<input type="checkbox" name="dishes" id="Non Veg" />Non Veg
<input type="checkbox" name="dishes" id="Chinese" />Chinese
<input type="checkbox" name="dishes" id="Italian" />Italian
<input type="checkbox" name="dishes" id="Mexican" />Mexican
<input type="checkbox" name="dishes" id="Continental" />Continental
</fieldset>

<br><br>
<fieldset>
<legend>Want some Enjoyment? Here are some choices for you!!</legend>
<input type="checkbox" name="enjoy" id="Dan" />Dance
<input type="checkbox" name="enjoy" id="DJ" />DJ
<input type="checkbox" name="enjoy" id="Orch" />Orchestra
<input type="checkbox" name="enjoy" id="Stand" />Stand-Up Comedy
<input type="checkbox" name="enjoy" id="Game" />Game Centre
<input type="checkbox" name="enjoy" id="Kids" />Kids section
<input type="checkbox" name="enjoy" id="LiveC" />Live Cartoon Character Dolls
<input type="checkbox" name="enjoy" id="Band"/>Band
<input type="checkbox" name="enjoy" id="SalonSPA" />Salon-SPA
<input type="checkbox" name="enjoy" id="PhotoBooth" />Photo Booth
</fieldset>

<br><br>
<fieldset>
<legend>Want to grab your precious memories!!!</legend>
<h3>We provide CameraMan and Video shooting service!</h3>
<h3>Would you like to have it?</h3>
<input type="radio" name="services" id="service2" value="yes">Yes
<input type="radio" name="services" id="service3" value="no">No
<input type="checkbox" name="services" id="Photographer" />Photographer
<input type="checkbox" name="services" id="Videographer" />Videographer
</fieldset>

<br><br>
<fieldset>
<legend>Items you would like to setup to plan your event?</legend>
<input type="checkbox" name="setup_plan" id="Gsttab" />Guest Table
<input type="checkbox" name="setup_plan" id="cocktab" />Cocktail Table
<input type="checkbox" name="setup_plan" id="footab" />Food Tables
<input type="checkbox" name="setup_plan" id="Chairs" />Chairs
<input type="checkbox" name="setup_plan" id="tabclo" />Table Cloth
<input type="checkbox" name="setup_plan" id="chaicov" />Chair Covers/Sashes
<input type="checkbox" name="setup_plan" id="Napkins" />Napkins
<input type="checkbox" name="setup_plan" id="favtab" />Favor Table
<input type="checkbox" name="setup_plan" id="gif" />Gift Table
<input type="checkbox" name="setup_plan" id="plac" />Place Cards
<input type="checkbox" name="setup_plan" id="meca" />Menu Cards
</fieldset>

<br><br>
<fieldset>
<legend>Confused about style of Decorating your Event?</legend>
<h3>Select your style!</h3>
<input type="checkbox" name="choice" id="diy" />Diyas
<input type="checkbox" name="choice" id="Can" />Candles
<input type="checkbox" name="choice" id="Colam" />Colorful Lamps
<input type="checkbox" name="choice" id="Cold" />Colourful Drapes
<input type="checkbox" name="choice" id="Rang" />Rangoli
<input type="checkbox" name="choice" id="Flow" />Flowers
<input type="checkbox" name="choice" id="Const" />Contempary Style
<input type="checkbox" name="choice" id="Scul" />Sculptures
<input type="checkbox" name="choice" id="Renpr" />Rental Props
<input type="checkbox" name="choice" id="Danfl" />Dance Floor
<input type="checkbox" name="choice" id="Dropr" />Drops and Pops
<input type="checkbox" name="choice" id="Arches" />Arches
</fieldset>

<br><br>
<fieldset>
<legend><h3>Select your date of Event</h3></legend>
<input type="datetime-local" required name="date" /><br>
</fieldset>
<br><br>

<br><br>
<div class="w3-container w3-center">
<button onclick="alert('Cleared Successfully!!')"class="w3-button w3-green w3-section" type="clear">CLEAR</button>
<button class="w3-button w3-green w3-section" type="submit">SUBMIT</button>
</div>


</form>


</body>
</html>