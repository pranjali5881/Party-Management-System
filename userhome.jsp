
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link href="css/style.css" rel="stylesheet" type="text/css"/>
<style>
body {font-family: "Times New Roman", Georgia, Serif;}
h1,h2,h3,h4,h5,h6 {
    font-family: "Playfair Display";
    letter-spacing: 5px;
}
</style>

<body>


<div class="w3-top">
  <div class="w3-bar w3-white w3-padding w3-card" >
      <h1 class="w3-left"><b><i>EVENT PLANNERS</i></b></h1>
    <!-- Right-sided navbar links. Hide them on small screens -->
    <div class="w3-right w3-hide-small">
        <a href="mainpage.jsp" class="w3-bar-item w3-button">HOME</a>
         <a href="viewall22.jsp" class="w3-bar-item w3-button">CATERING</a>
          <a href="viewall33.jsp" class="w3-bar-item w3-button">DECORATION</a>
           <a href="user.jsp" class="w3-bar-item w3-button">BOOKING</a>

  </div>
</div>


<header class="w3-display-container w3-content w3-wide" style="max-width:1600px;min-width:500px" id="home">



  <div class="w3-content w3-section" style="max-width:1500px">
  <img class="mySlides" src="images/image1.jpg" style="width:100%">
  <img class="mySlides" src="images/image2.jpg" style="width:100%">
  <img src="images/image10.jpg" style="width:100%">
      
    <img class="mySlides" src="images/wed.jpg" style="width:100%">
    <img class="mySlides" src="images/naming.jpg" style="width:100%">  
    <img class="mySlides" src="images/birth1.jpg" style="width:100%">
    <img class="mySlides" src="images/birth.jpg" style="width:100%">
   

</div>


<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 6000); // Change image every 2 seconds
}
</script>
 
  
</header>


</body> 
</html>