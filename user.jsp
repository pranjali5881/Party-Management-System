<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Au Register Forms by Colorlib</title>

    <!-- Icons font CSS-->
    <link href="vendor8/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor8/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor8/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor8/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css8/main.css" rel="stylesheet" media="all">
</head>

<body>
    
    
    
        
        
        <%
        
        
        
         Class.forName("com.mysql.jdbc.Driver");  
        Connection con=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/pranju","root","");  
        PreparedStatement ps=(PreparedStatement)con.prepareStatement("select * from user1");
        ResultSet rs=ps.executeQuery();
        int id=0;
        while(rs.next())
        {
             id=rs.getInt(1);
        }
        
        
        %>
        
        %>
    <div class="page-wrapper bg-gra-01 p-t-180 p-b-100 font-poppins">
        <div class="wrapper wrapper--w780">
            <div class="card card-3">
                <div class="card-heading"></div>
                <div class="card-body">
                    <h2 class="title">User Booking</h2>
                    <form action="adduser.jsp" method="POST">
                          <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="ID" name="id" value=<%=id+1%>>
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Name" name="name" required>
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Address" name="adr" required>
                        </div>
                          <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Time" name="time" required>
                        </div>
                        
                        
                        
                          <div class="input-group">
                              <input class="input--style-3" type="text" placeholder="Enter catering Id" name="cid" required>
                        </div>
                        
                        <div class="input-group">
                            <input class="input--style-3"  placeholder="CATERING">
                            
                            <input class="input--style-3"  placeholder="Veg-Thali"><input type="checkbox" name="item" value="veg"><br>
                            <input class="input--style-3"  placeholder="Non-Veg-Thali"><input type="checkbox" name="item" value="non"><br>
                            <input class="input--style-3"  placeholder="Starter"><input type="checkbox" name="item" value="starter"><br>

                            
                        </div>
                          <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Enter Decoration Id" name="did" required>
                        </div>
                        
                        
                        
                         <div class="input-group">
                            <input class="input--style-3"  placeholder="DECORATION">
                            
                            <input class="input--style-3"  placeholder="Ballon"><input type="checkbox" name="item1" value="ballon"><br>
                            <input class="input--style-3"  placeholder="Flower"><input type="checkbox" name="item1" value="flower"><br>
                            <input class="input--style-3"  placeholder="Wooden"><input type="checkbox" name="item1" value="wooden"><br>

                            
                        </div>
                        
                          <div class="input-group">
                              <input class="input--style-3" type="text" placeholder="Veg-Thali Plates" name="veg" >
                        </div>
                        
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Non-Veg-Thali plates" name="non" >
                        </div>
                        
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Starter Plates" name="starter" >
                        </div>
                          <div class="input-group">
                              <input class="input--style-3 js-datepicker" type="text" placeholder="Event Date" name="date" required>
                            <i class="zmdi zmdi-calendar-note input-icon js-btn-calendar"></i>
                        </div>
                        
                          <div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="hall">
                                    <option disabled="disabled" selected="selected">Hall</option>
                                    <option value="garden">Only Garden</option>
                                    <option value="hall">Only Hall</option>
                                    <option value="both">Both</option>
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                          <div class="input-group">
                            <div class="rs-select2 js-select-simple select--no-search">
                                <select name="party">
                                    <option disabled="disabled" selected="selected">Event Type</option>
                                    <option value="birthday">Birthday</option>
                                    <option value="wedding">Wedding</option>
                                    <option value="haldi">Haldi</option>
                                    <option value="Pro-Event">Promotional Event</option>
                                     <option value="Munj">Munj</option>
                                      <option value="Eng">Engagement</option>
                                       <option value="Get-to">Get-together</option>
                                        <option value="Office">Office Party</option>
                                         <option value="Graduation">Graduation party</option>
                                          <option value="baby">Baby Shower</option>
                                           <option value="Sangeet">Sangeet</option>
                                          
                                </select>
                                <div class="select-dropdown"></div>
                            </div>
                        </div>
                        
                      
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        
                        <div class="p-t-10">
                            <button class="btn btn--pill btn--green" type="submit">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- Jquery JS-->
    <script src="vendor8/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor8/select2/select2.min.js"></script>
    <script src="vendor8/datepicker/moment.min.js"></script>
    <script src="vendor8/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js8/global.js"></script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>
<!-- end document-->