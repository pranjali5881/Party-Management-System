<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
  <meta charset="UTF-8">
  <title>Register</title>
  
  
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

      <link rel="stylesheet" href="style2.css">

  
</head>

<body>

  <div class="row">
  <section class="section">
    <header>
      <h3>Register</h3>
      <h4>Please fill your information in this form</h4>
    </header>
    
      <form action="insertuser.jsp" method="post">
        <div class="form-item box-item">
          <input type="text" name="name" class="tx1" placeholder="Name" required>
          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
        </div>
          
           <div class="form-item box-item">
               <input type="text" name="mob" class="tx1" minlength="10" maxlength="10" placeholder="Mobile" required>
          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
        </div>
          
           <div class="form-item box-item">
          <input type="text" name="user" class="tx1" placeholder="Username" required>
          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
        </div>
          
          
              <div class="form-item box-item">
          <input type="text" name="pass" class="tx1" placeholder="Password" required>
          <small class="errorReq"><i class="fa fa-asterisk" aria-hidden="true"></i> required field</small>
        </div>
          
          
        
          
        
       
          <input type="submit" span id="submit" class="submit" value="submit" >
        <%-- <input type="submit" value="submit" >  --%>
        
      </form>
    
    
    
    
    <i class="wave"></i>
  </section>
</div>
 

  






</body>

</html>