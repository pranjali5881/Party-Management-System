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
        PreparedStatement ps=(PreparedStatement)con.prepareStatement("select * from cetring");
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
                    <h2 class="title">Catering Info</h2>
                    <form action="plan.jsp" method="POST">
                          <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="ID" name="id" value=<%=id+1%>>
                        </div>
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Name" name="name" required>
                        </div>
                        
                        <div class="input-group">
                            
                            
                            <input class="input--style-3" type="text" placeholder="Enter Rate for Veg-Thali" name="veg" required>
                        </div>
                        
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Enter Rate for Non-Veg-Thali" name="non" required>
                        </div>
                        
                        <div class="input-group">
                            <input class="input--style-3" type="text" placeholder="Enter Rate for Starter" name="starter" required>
                        </div>
                        
                         <div class="input-group">
                             <input class="input--style-3" type="text" placeholder="username" name="user" required>
                        </div>
                         <div class="input-group">
                             <input class="input--style-3" type="password" placeholder="password" name="pass" required>
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